package com.clone.starbucks.service;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.clone.starbucks.DAO.IAdminDAO;
import com.clone.starbucks.DAO.IMemberDAO;
import com.clone.starbucks.DAO.IMenuDAO;
import com.clone.starbucks.DAO.IMyDAO;
import com.clone.starbucks.DTO.CardDTO;
import com.clone.starbucks.DTO.CustomDTO;
import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.DTO.ProductDTO;
import com.clone.starbucks.DTO.SaleDTO;
import com.clone.starbucks.DTO.UserInfoDTO;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

@Service
public class MenuServiceImpl implements IMenuService{
	@Autowired HttpSession session;
	@Autowired IMenuDAO dao;
	@Autowired IMemberDAO memberDao;
	@Autowired IMyDAO myDao;
	@Autowired AdminServiceImpl adminService;
	@Autowired IAdminDAO adminDao;
	
	//0613-지혜
		//장바구니 구현. 구조는 map(String, map(String,Object)) 푸드, 상품은 map으로, 음료는 배열로
		//상품 삭제 0617 - 가격이없음
	@SuppressWarnings("unchecked")
	@Override
	public boolean setOrderList(HashMap<String, String> data) { //이중구조로 만들기
		HashMap<String, Object> cart = (HashMap<String, Object>)session.getAttribute("list");
		if(cart == null) cart = new HashMap<String, Object>();
		if(data.get("categoryType").equals("01")) {
			ArrayList<ProductDTO> Drink = (ArrayList<ProductDTO>)cart.get("Drink");
			if(Drink == null) Drink = new ArrayList<ProductDTO>();
			ProductDTO dto = new ProductDTO();
			dto.setP_category1(data.get("categoryType"));
			dto.setP_name(data.get("p_name"));
			dto.setP_img(data.get("p_img"));
			int price = getPrice(data.get("p_name"));
			dto.setP_price(price);
			String op = makeOption(data, dto);
			dto.setP_op(op);
			Drink.add(dto);
			cart.put("Drink", Drink);
		}
		if(data.get("categoryType").equals("02")) {
			HashMap<String, ProductDTO> Food = (HashMap<String, ProductDTO>)cart.get("Food");
			if(Food == null) Food = new HashMap<String, ProductDTO>();
			
			if(Food.get(data.get("p_name")) == null) {//푸드가 있으면 안받음
				ProductDTO dto = new ProductDTO();
				dto.setP_category1(data.get("categoryType"));
				dto.setP_name(data.get("p_name"));
				dto.setP_img(data.get("p_img"));
				int price = getPrice(data.get("p_name"));
				dto.setP_price(price);
				Food.put(data.get("p_name"), dto);
				cart.put("Food", Food);
			}
		}
		session.setAttribute("list", cart);
		return true;
	}
	
	@Override //나만의 메뉴 등록- 지혜
	public boolean setMyMenu(HashMap<String, String> data) {
		UserInfoDTO user = (UserInfoDTO)session.getAttribute("userInfo");
		String op = makeOption(data, null);
		CustomDTO dto = new CustomDTO();
		dto.setId(user.getId());
		dto.setCus_nickname(data.get("nickname"));
		dto.setP_name(data.get("p_name"));
		dto.setCus_op(op);
		if(dao.insertMyMenu(dto) > 0) return true;
		return false;
	}
	
	@Override
	public int getPrice(String p_name) {
		if(p_name != null) return dao.selectPrice(p_name);
		return 0;
	}
	
	public void setPrice(ProductDTO dto, int addPrice) {
		dto.setP_price(dto.getP_price() + addPrice);
	}
	
	//옵션생성 - 지혜
	private String makeOption(HashMap<String, String> data, ProductDTO dto) {
		//컵사이즈 체크
		//옵션별 가격체크. 컵사이즈가 올라갈때마다 500원 추가. 기본아닌것 600원추가 고정, 디카페인 300원추가
		//삿추가는 개수만큼 600추가
		String result = "";
		
		if(data.get("delegateSku").equals("10")) result += "숏";
		else if(data.get("delegateSku").equals("20")) result += "톨";
		else if(data.get("delegateSku").equals("30")) {
			result += "그란데";
			if(dto != null) setPrice(dto, 500);
		}
		else if(data.get("delegateSku").equals("40")) {
			result += "벤티";
			if(dto != null) setPrice(dto, 1000);
		}
		result += "|";
		
		if(data.get("cupType").equals("1")) result += "일회용";
		else if(data.get("cupType").equals("0")) result += "머그";
		else if(data.get("cupType").equals("2")) {
			result += "개인";
			int reward = session.getAttribute("cupReward") == null ? 0 : (int)session.getAttribute("cupReward");
			session.setAttribute("cupReward", reward += 1);
		}
		
		if(data.get("customFlag").equals("Y")) {//drink_view에서 커스텀리스트 값 체크해야함. 언디파인나옴
			result += "|" + data.get("customList");
			String opArr[] = data.get("customList").split("\\|");
			if(dto != null) {
				for(int i=0; i < opArr.length ; i++) {
					if(opArr[i].contains("에스프레소 샷")){//기본옵션인지 확인
						if(i > opArr.length) {
							if(!opArr[i+1].contains("에스프레소 샷")) {
								int shot = getPrice("에스프레소 샷") * opArr[i].charAt(opArr[i].length()-1);
								setPrice(dto, shot);
							}
						}else {
							int shot = getPrice("에스프레소 샷") * (opArr[i].charAt(opArr[i].length()-1)-48);
							setPrice(dto, shot);
						}
					}else if(opArr[i].contains("디카페인")){
						setPrice(dto, getPrice("디카페인"));
					}else if(opArr[i].contains("시럽")) {
						if(i > opArr.length) {
							if(!opArr[i+1].contains("시럽")) setPrice(dto, getPrice("시럽"));
						}else setPrice(dto, getPrice("시럽"));
					}else if(opArr[i].contains("휘핑")) {
						if(i > opArr.length) {
							if(!opArr[i+1].contains("휘핑")) setPrice(dto, getPrice("휘핑"));
						}else setPrice(dto, getPrice("휘핑"));
					}else if(opArr[i].contains("드리즐")) {
						if(i > opArr.length) {
							if(!opArr[i+1].contains("드리즐")) setPrice(dto, getPrice("드리즐"));
						}else setPrice(dto, getPrice("드리즐"));
					}else if(opArr[i].contains("자바칩")) {
						if(i > opArr.length) {
							if(!opArr[i+1].contains("자바칩")) setPrice(dto, getPrice("자바칩"));
						}else setPrice(dto, getPrice("자바칩"));
					}
				}
			}
		}
		
		return result;
	}
	
	@Override //0617-지혜
	public boolean setOrderCount(HashMap<String, String> data) {
		//결제버튼 누르면 data값 가져와서 세션에 저장.(수량저장하는거임. 카카오페이 결제 완료시 sale값에 수량넣어주기)
		session.setAttribute("saleCount", data);
		HashMap<String, HashMap<String, ProductDTO>> cart = (HashMap<String, HashMap<String, ProductDTO>>)session.getAttribute("list");
		HashMap<String, ProductDTO> food = cart.get("Food");
		if(food != null) {
			Collection<ProductDTO> foodDtos = food.values();
			for(ProductDTO dto : foodDtos) {
				if(dto.getP_category1().equals("02")) {
					String order = data.get(dto.getP_name()) == null ? null : data.get(dto.getP_name());
					if(order != null) {
						int count = Integer.parseInt(order);
						dto.setP_price(dto.getP_price()* count);
					}
					
				}
			}
			cart.put("Food", food);
			session.setAttribute("list", cart);
		}
		
		//지혜 0628
		if(!cart.containsKey("Drink"))//별쿠폰 음료만 적용을 위해 세션에 저장
			session.setAttribute("drink", "N");
			
		return true;
	}
	
	@Override //0617-지혜
	public void resetOrderList() {
		//결제취소 or 결제실패시 cart의 푸드 가격 재생성 & count세션 날리기
		if(session.getAttribute("saleCount") != null) {
			HashMap<String, HashMap<String, ProductDTO>> cart = (HashMap<String, HashMap<String, ProductDTO>>)session.getAttribute("list");
			if(cart != null) {
				HashMap<String, ProductDTO> food = cart.get("Food");
				if(food != null) {
					Collection<ProductDTO> foodDtos = food.values();
					for(ProductDTO dto : foodDtos) {
						dto.setP_price(getPrice(dto.getP_name()));//이름값으로 푸드 가격 리셋
					}
					cart.put("Food", food);
					session.setAttribute("list", cart);
				}
			}
			session.removeAttribute("saleCount");
			session.removeAttribute("cupReward");
		}
	}
	
	@Override //결제후 DB저장-지혜
	public int payment(HashMap<String,String> data) throws ParseException {
		UserInfoDTO user = (UserInfoDTO)session.getAttribute("userInfo");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		HashMap<String,String> sale = (HashMap<String,String>)session.getAttribute("saleCount");
		
		if(!data.get("couponNum").isBlank()) {//쿠폰 있는 경우 사용상태로 변경해줌
			if(myDao.useCoupon(data.get("couponNum")) < 1)  return 0;
		}
		String method = data.get("method");
		if(method.equals("sbcard")) {//카드결제의 경우 결제값 빼주기
			int amount = Integer.parseInt(data.get("amount"));
			CardDTO dto = myDao.c_numCheck(data.get("card_num"));
			if(dto != null) {
				dto.setRemaincost((dto.getRemaincost() - amount));
				myDao.remainUpdate(dto);
			}
			else return 0;
		}
		
		//sale DB등록
		for(String key : sale.keySet()) {
			int count = Integer.parseInt(sale.get(key));
			SaleDTO dto = new SaleDTO();
			dto.setId(user.getId());
			dto.setP_name(key);
			dto.setSalecount(count);
	        dto.setSaledate(sdf.parse(data.get("pay_date")));;
	        dto.setSalemethod(data.get("method"));
	        if(!data.get("couponNum").isBlank()) {
	        	int ponNo = Integer.parseInt(data.get("couponNum"));
	        	dto.setPon_no(ponNo);
	        }
	        int result = dao.insertSale(dto);
	        if(result != 1) System.out.println(dto.getP_name() + "DB입력에러");
		}
		//0628지혜

		String check = (String)session.getAttribute("drink");
		if(check == null) {
			makeStar(user, sale.keySet(), sdf.parse(data.get("pay_date")));//별 생성
			session.removeAttribute("drink");//음료 유무
		}
		session.removeAttribute("saleCount");//판매개수
		session.removeAttribute("list");//장바구니
		if(session.getAttribute("cupReward") != null) session.removeAttribute("cupReward");
		
		return 1;
	}
	
	@Override //DB생성 - 지혜
	public void insertMenu(String menuName) throws FileNotFoundException, IOException {
		ClassPathResource resource = new ClassPathResource("upload/json/menu/custom/makefile/" + menuName + ".json");
		FileReader reader = new FileReader(resource.getFile());
		
		Gson gson = new Gson();
		JsonArray arr = gson.fromJson(reader, JsonArray.class);
		for(int i = 0; i < arr.size(); i++) {
			JsonObject tmp = (JsonObject)arr.get(i);
	  		ProductDTO dto = new ProductDTO();
			dto.setP_category1(tmp.get("p_category1").getAsString());
			dto.setP_category2(tmp.get("p_category2").getAsString());
			dto.setP_name(tmp.get("p_name").getAsString());
			dto.setP_price(tmp.get("p_price").getAsInt());
			dao.insertProduct(dto);
		}
	}
	
	//별쿠폰 생성-지혜0627
	private void makeStar(UserInfoDTO user, Set<String> set, Date start) throws ParseException {
		HashMap<String, ArrayList<ProductDTO>> cart = (HashMap<String, ArrayList<ProductDTO>>)session.getAttribute("list");
		ArrayList<ProductDTO> drink = (ArrayList<ProductDTO>)cart.get("Drink");
		int count = 0;
		for(ProductDTO product : drink) {
			String pro = product.getP_name();
			for(String pname : set)
				if(pro.equals(pname)) count++;
		}
		System.out.println("음료개수적립 : " + count);
		if(user.getCupreward().equals("S")) {
			int reward = session.getAttribute("cupReward") == null ? 0 : (int)session.getAttribute("cupReward");
			System.out.println("에코별적립 : " + reward);
			count += reward;
		}
		int userStar = user.getStar() + count;
		if(userStar > 11) { //적립별이 12개이상이면 별쿠폰 적립 후 별 차감
			System.out.println("더한개수 : "+userStar);
			userStar -= 12;
			E_couponDTO coupon = new E_couponDTO();
			coupon.setPon_category("star");
			coupon.setPon_num(adminService.starCoupon_NumMake());
			coupon.setPon_name("[음료전용]별 적립 쿠폰");
			coupon.setPon_startdate(start);
			coupon.setPon_used('N');
			coupon.setPon_enddate(adminService.endDate(coupon));
			coupon.setPon_cash(5600);
			coupon.setId(user.getId());
			adminDao.insertEcoupon(coupon);
		}
		user.setStar(userStar);
		myDao.updateStar(user);
	}

	
	
	   @Override //다정
	   public void couponUse(E_couponDTO e_couponDTO, Model model) throws ParseException {
	      UserInfoDTO user = (UserInfoDTO) session.getAttribute("userInfo");
	      String id = user.getId();
	      
	      ArrayList<E_couponDTO> list =  dao.couponList(id);
	      
	      
	      //시작날-끝날 날짜 변환코드
	      ArrayList<String> startList = new ArrayList<String>();
	      ArrayList<String> endList = new ArrayList<String>();
	      
	      SimpleDateFormat sdf = new SimpleDateFormat("yy/MM/dd");
	      for(int i=0; i<list.size();i++) {
	    	  //startDate
	    	  Date sdate = list.get(i).getPon_startdate();
	    	  String pon_startDate = sdf.format(sdate);
	    	  
	    	  //시작날짜 리스트에 저장
	    	  startList.add(pon_startDate);
	    	  
		      //endDate
		      Date edate = list.get(i).getPon_enddate();
		      String pon_endDate = sdf.format(edate);
		      
		      endList.add(pon_endDate);
	      }
	      model.addAttribute("list",list);
	      model.addAttribute("startList",startList);
	      model.addAttribute("endList",endList);
	   }


	@Override //다정
	public void cardChoice(CardDTO cardDTO, Model model) {
	    UserInfoDTO userInfo = (UserInfoDTO) session.getAttribute("userInfo");
	    String id = userInfo.getId();
	    
	    ArrayList<CardDTO> list = dao.cardList(id);
	    
	    model.addAttribute("list", list);
		
	}
	   
}
	
