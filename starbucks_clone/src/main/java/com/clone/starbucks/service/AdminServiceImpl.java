package com.clone.starbucks.service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.clone.starbucks.DAO.IAdminDAO;
import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.DTO.ProductDTO;
import com.clone.starbucks.DTO.RankDTO;
import com.clone.starbucks.DTO.RegisterDTO;
import com.clone.starbucks.DTO.SaleDTO;
import com.clone.starbucks.DTO.UserInfoDTO;

@Service
public class AdminServiceImpl implements IAdminService {
	
	@Autowired IAdminDAO adminDAO;
	@Autowired HttpSession session;
	
	
//----------------------------------------E-coupon----------------------------------------------
	
	//영수증쿠폰(16자) 랜덤숫자 생성
	@Override
	public String receiptCoupon_NumMake() {
		Random random = new Random();
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");
		String ymd = df.format(date);
		
		//앞 첫번째, 두번째 코드 (발급받는 날짜 기준) 
		String firstNum = ymd.substring(0,4);
		String secondNum = ymd.substring(4,8);
		
		//뒤 세번째, 네번째 코드 (랜덤 코드)
		int intThirdNum = random.nextInt(10000);
		String thirdNum = String.format("%04d", intThirdNum);
		int intFourthNum = random.nextInt(10000);
		String fourthNum = String.format("%04d", intFourthNum);
		
		String receiptCoupon = firstNum + secondNum + thirdNum+ fourthNum;
	
		
		return receiptCoupon;
	}
	
	//mms쿠폰(13자) 랜덤숫자 생성
	@Override
	public String mmsCoupon_NumMake() {
		Random random = new Random();
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");
		String ymd = df.format(date);
		
		//앞, 중간 코드 (발급받는 날짜 기준) 
		String firstNum = ymd.substring(0,4);
		String middleNum = ymd.substring(4,8);
		
		//뒤 마지막 코드 (랜덤 코드)
		int intLastNum = random.nextInt(100000);
		String lastNum = String.format("%05d", intLastNum);
		String mmsCoupon = firstNum + middleNum+ lastNum;
		
		return mmsCoupon;
	}

	//스타쿠폰(13자) 랜덤숫자 생성
	@Override
	public String starCoupon_NumMake() {
		Random random = new Random();
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");
		String ymd = df.format(date);
		
		//앞, 중간 코드 (발급받는 날짜 기준) 
		String firstNum = ymd.substring(0,4);
		String middleNum = ymd.substring(4,8);
		
		//뒤 마지막 코드 (랜덤 코드)
		int intLastNum = random.nextInt(100000);
		String lastNum = String.format("%05d", intLastNum);
		String starCoupon = firstNum + middleNum+ lastNum;
		
		
		return starCoupon;
	}
	
	//selectNo 번호검색
//	public String selectNo(E_couponDTO ecouponDTO) throws ParseException {
//		if(ecouponDTO.getPon_category().isEmpty() ||ecouponDTO.getPon_num().isEmpty() ||ecouponDTO.getPon_name().isEmpty() || ecouponDTO.getPon_startdate()==null || ecouponDTO.getPon_enddate()==null || ecouponDTO.getPon_used()==0 || ecouponDTO.getPon_usedate()==null || ecouponDTO.getPon_cash()==0) {
//			return "정보가 빈곳이 있습니다. 입력하세요.";
//		}
//		E_couponDTO check = adminDAO.selectNo(ecouponDTO.getPon_no());
//
//		if(check!=null && ecouponDTO.getPon_no()==check.getPon_no()) {
//			session.setAttribute("pon_category", check.getPon_category());
//			session.setAttribute("pon_num", check.getPon_num());
//			session.setAttribute("pon_name", check.getPon_name());
//			session.setAttribute("pon_startdate", check.getPon_startdate());
//			session.setAttribute("pon_enddate", endDate(ecouponDTO));
//			session.setAttribute("pon_used", check.getPon_used());
//			session.setAttribute("pon_usedate", check.getPon_usedate());
//			session.setAttribute("pon_cash", check.getPon_cash());
//			return "등록 완료";
//		}
//		return "등록 실패";
//	}

	
	//쿠폰 insert
	@Override
	public String eCouponProc(E_couponDTO eCouponDTO, HttpServletRequest request) throws ParseException {
		/*
		create table e_coupon(
		pon_no number not null primary key,												△ <<mapper에서 
		pon_category char(7) check(pon_category in ('receipt','mms','star')) not null,	O
		pon_num varchar2(20) not null unique,											O
		pon_name varchar2(50) not null,													O
		pon_startdate date default sysdate not null,									O
		pon_enddate date default sysdate+30 not null,									O
		pon_used char(1) check(pon_used in ('Y','N')) not null,							O
		pon_usedate date default sysdate null,											X
		pon_cash number not null														O
		);
		*/
		
		//pon_no
		
		
		//입력받아오는 네개의 정보
		//카테고리(pon_category)
		if(eCouponDTO.getPon_category().isEmpty() || eCouponDTO.getPon_category()==null) {
			return "카테고리를 선택해야 합니다.";
		}
		//쿠폰이름(pon_name)
		if(eCouponDTO.getPon_name().isEmpty() || eCouponDTO.getPon_name()==null) {
			return "쿠폰이름을 입력하세요.";
		}
		//쿠폰시작날짜(pon_startdate)
		if(eCouponDTO.getPon_startdate()==null) {
			return "쿠폰 시작 날짜를 선택해야 합니다.";
		}
		//쿠폰 금액(pon_cash)
		if(request.getParameter("pon_cash")=="" || request.getParameter("pon_cash")==null) {
			eCouponDTO.setPon_cash(0);
			return "쿠폰 금액을 입력해야합니다.";
		}
		
		
		
		
		//startdate 형식 변경후 dto에 저장
//		String dateStr = strYear+"-"+strMonth+"-"+strDate;
//		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
//		Date enddate = formatter.parse(dateStr);
		
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String strSD = sdf.format(eCouponDTO.getPon_startdate());
		
		System.out.println(eCouponDTO.getPon_category());
		System.out.println(eCouponDTO.getPon_name());
		System.out.println("시작날짜 : " + eCouponDTO.getPon_startdate());
		System.out.println("끝날짜 : "+endDate(eCouponDTO));
		String cashStr = request.getParameter("pon_cash");
		int cash = Integer.parseInt(cashStr);
		eCouponDTO.setPon_cash(cash);
		System.out.println("금액 : "+eCouponDTO.getPon_cash());
		
		
		//쿠폰 카테고리 확인해서 번호 입력 (pon_num)
		if(eCouponDTO.getPon_category().equals("receipt")) {
			eCouponDTO.setPon_num(receiptCoupon_NumMake());
		}else if(eCouponDTO.getPon_category().equals("mms")) {
			eCouponDTO.setPon_num(mmsCoupon_NumMake());
		}else if(eCouponDTO.getPon_category().equals("star")) {
			eCouponDTO.setPon_num(starCoupon_NumMake());
		}else {
			return "카테고리를 선택해야합니다.";
		}
		
		//쿠폰의 끝 날짜(pon_endDate)
		eCouponDTO.setPon_enddate(endDate(eCouponDTO));
		
		//쿠폰 사용했는지 안했는지(pon_used)
		eCouponDTO.setPon_used('N');
		
		//insert
		adminDAO.insertEcoupon(eCouponDTO);
		
		return "완료";
	}
	
	
	//끝날짜 계산
	@Override
	public Date endDate(E_couponDTO ecouponDTO) throws ParseException{
		//E_couponDTO check = adminDAO.selectNo(ecouponDTO.getPon_no());
		
		SimpleDateFormat sdfYear = new SimpleDateFormat("yyyy");
		SimpleDateFormat sdfMonth = new SimpleDateFormat("MM");
		SimpleDateFormat sdfDate = new SimpleDateFormat("dd");
		Date date = ecouponDTO.getPon_startdate();
		String strYear = sdfYear.format(date);
		String strMonth = sdfMonth.format(date);
		String strDate = sdfDate.format(date);
		int intMonth = Integer.parseInt(strMonth);
		int intDate = Integer.parseInt(strDate);
		
		switch(intMonth) {
		case 1: case 3: case 5: case 7: case 8: case 10: case 12:{
				if(intDate+30>31) {
					intDate = intDate+30-31;
					intMonth += 1;
				}else {
					intDate = intDate+30;
				}
				break;
			}
		case 2:{
			if(intDate==29) {
				intDate = intDate+30-29;
				intMonth+=1;
				break;
			}else {
				intDate= intDate+30-28;
				intMonth+=1;
				break;
			}
			}
		case 4: case 6: case 9: case 11:{
				intMonth+=1;
				break;
			}
		}
		
		strMonth = String.valueOf(intMonth);
		strDate = String.valueOf(intDate);
		
		String dateStr = strYear+"-"+strMonth+"-"+strDate;
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date enddate = formatter.parse(dateStr);
		return enddate;
	}



//----------------------------------------E-coupon----------------------------------------------

	//단 - 목록
	@Override
	public void memberListForm(int currentPage, String select, String search) {
		int pageBlock = 5; //한 화면에 보여줄 데이터 수
		int totalCount = adminDAO.memberCount(); //총 데이터의 수 
		int end = currentPage * pageBlock; //데이터의 끝 번호
		int begin = end+1 - pageBlock; //데이터의 시작 번호
		ArrayList<RegisterDTO> list = adminDAO.memberListForm(begin, end, select, search);
		session.setAttribute("list", list);
		String url = "/starbucks/admin/memberListForm?currentPage=";
		session.setAttribute("page", PageService.getNavi(currentPage, pageBlock, totalCount, url));
	}
	
	//단 - 정보
	@Override
	public RegisterDTO userInfoForm(String id) {
		RegisterDTO reg = adminDAO.userInfoForm(id);
		UserInfoDTO user = adminDAO.info(id);
		RegisterDTO all = new RegisterDTO();
		if (reg != null) {
			all.setId(reg.getId());
			all.setName(reg.getName());
			all.setPhone(reg.getPhone());
			all.setEmail(reg.getEmail());
			all.setBirth_year(reg.getBirth_year());
			all.setBirth_month(reg.getBirth_month());
			all.setBirth_day(reg.getBirth_day());
			all.setGender(reg.getGender());
			all.setEvent_sms(reg.getEvent_sms());
			all.setEvent_e(reg.getEvent_e());
		}
		if (user != null) {
			all.setStar(user.getStar());
			all.setGrade(user.getGrade());
			all.setNickname(user.getNickname());
			all.setCupreward(user.getCupreward());
		}
		return all;
	}
	
	
//	@Value("${ADMIN:admin}")
//	private String adminAccount;
	
	//단 - 수정
	@Override
	public String memberModifyProc(RegisterDTO all, UserInfoDTO userInfo) {
		adminDAO.updateReg(all);
		UserInfoDTO user = (UserInfoDTO) all;
		adminDAO.updateUser(user);
		return "회원 수정 완료";
	}

	//단 - 삭제
	@Override
	public String deleteProc(RegisterDTO all, UserInfoDTO userInfo) {
		adminDAO.deleteCustom(all.getId());
		adminDAO.deleteSale(all.getId());
		adminDAO.deleteE_coupon(all.getId());
		adminDAO.deleteCard(all.getId());
		adminDAO.deleteReg(all.getId());
		UserInfoDTO user = (UserInfoDTO) all;
		adminDAO.deleteUser(user.getId());
		return "회원 삭제 완료";
	}
	//----------------------sale----------------------------

	@Override
	public void drinkCount(Model model) {
		//월별 카운트 뽑아내기
		Integer JanDrink = adminDAO.salesDrinkCount("01");
		Integer FebDrink = adminDAO.salesDrinkCount("02");
		Integer MarDrink = adminDAO.salesDrinkCount("03");
		Integer AprDrink = adminDAO.salesDrinkCount("04");
		Integer MayDrink = adminDAO.salesDrinkCount("05");
		Integer JunDrink = adminDAO.salesDrinkCount("06");
		Integer JulDrink = adminDAO.salesDrinkCount("07");
		Integer AugDrink = adminDAO.salesDrinkCount("08");
		Integer SepDrink = adminDAO.salesDrinkCount("09");
		Integer OctDrink = adminDAO.salesDrinkCount("10");
		Integer NovDrink = adminDAO.salesDrinkCount("11");
		Integer DecDrink = adminDAO.salesDrinkCount("12");
		
		model.addAttribute("drink1",JanDrink);
		model.addAttribute("drink2",FebDrink);
		model.addAttribute("drink3",MarDrink);
		model.addAttribute("drink4",AprDrink);
		model.addAttribute("drink5",MayDrink);
		model.addAttribute("drink6",JunDrink);
		model.addAttribute("drink7",JulDrink);
		model.addAttribute("drink8",AugDrink);
		model.addAttribute("drink9",SepDrink);
		model.addAttribute("drink10",OctDrink);
		model.addAttribute("drink11",NovDrink);
		model.addAttribute("drink12",DecDrink);
	}
	
	@Override
	public void drinkRank(Model model) {
		ArrayList<RankDTO> list = adminDAO.drinkRank();
		double allCount = (double)adminDAO.allCountD();
		
		model.addAttribute("Dname1", list.get(0).getP_name());
		model.addAttribute("Dname2", list.get(1).getP_name());
		model.addAttribute("Dname3", list.get(2).getP_name());
		model.addAttribute("Dname4", list.get(3).getP_name());
		model.addAttribute("Dname5", list.get(4).getP_name());
		model.addAttribute("Dname6", list.get(5).getP_name());
		
		model.addAttribute("Dvalue1",String.format("%.02f", (((double)(list.get(0).getSumcount()))/allCount)*100));
		model.addAttribute("Dvalue2",String.format("%.02f", (((double)(list.get(1).getSumcount()))/allCount)*100));
		model.addAttribute("Dvalue3",String.format("%.02f", (((double)(list.get(2).getSumcount()))/allCount)*100));
		model.addAttribute("Dvalue4",String.format("%.02f", (((double)(list.get(3).getSumcount()))/allCount)*100));
		model.addAttribute("Dvalue5",String.format("%.02f", (((double)(list.get(4).getSumcount()))/allCount)*100));
		model.addAttribute("Dvalue6",String.format("%.02f", (((double)(list.get(5).getSumcount()))/allCount)*100));
		model.addAttribute("Dother",String.format("%.02f", ((double)(allCount-(list.get(1).getSumcount()+list.get(2).getSumcount()+list.get(3).getSumcount()+list.get(4).getSumcount()+list.get(5).getSumcount()+list.get(0).getSumcount()))/allCount)*100));
		
	}

	@Override
	public void foodCount(Model model) {
		Integer JanFood = adminDAO.salesFoodCount("01");
		Integer FebFood = adminDAO.salesFoodCount("02");
		Integer MarFood = adminDAO.salesFoodCount("03");
		Integer AprFood = adminDAO.salesFoodCount("04");
		Integer MayFood = adminDAO.salesFoodCount("05");
		Integer JunFood = adminDAO.salesFoodCount("06");
		Integer JulFood = adminDAO.salesFoodCount("07");
		Integer AugFood = adminDAO.salesFoodCount("08");
		Integer SepFood = adminDAO.salesFoodCount("09");
		Integer OctFood = adminDAO.salesFoodCount("10");
		Integer NovFood = adminDAO.salesFoodCount("11");
		Integer DecFood = adminDAO.salesFoodCount("12");
		
		model.addAttribute("food1", JanFood);
		model.addAttribute("food2", FebFood);
		model.addAttribute("food3", MarFood);
		model.addAttribute("food4", AprFood);
		model.addAttribute("food5", MayFood);
		model.addAttribute("food6", JunFood);
		model.addAttribute("food7", JulFood);
		model.addAttribute("food8", AugFood);
		model.addAttribute("food9", SepFood);
		model.addAttribute("food10", OctFood);
		model.addAttribute("food11", NovFood);
		model.addAttribute("food12", DecFood);
		
	}

	@Override
	public void foodRank(Model model) {
		ArrayList<RankDTO> list = adminDAO.foodRank();
		double allCount = (double)adminDAO.allCountF();
		
		model.addAttribute("Fname1", list.get(0).getP_name());
		model.addAttribute("Fname2", list.get(1).getP_name());
		model.addAttribute("Fname3", list.get(2).getP_name());
		model.addAttribute("Fname4", list.get(3).getP_name());
		model.addAttribute("Fname5", list.get(4).getP_name());
		model.addAttribute("Fname6", list.get(5).getP_name());
		
		model.addAttribute("Fvalue1",String.format("%.02f", (((double)(list.get(0).getSumcount()))/allCount)*100));
		model.addAttribute("Fvalue2",String.format("%.02f", (((double)(list.get(1).getSumcount()))/allCount)*100));
		model.addAttribute("Fvalue3",String.format("%.02f", (((double)(list.get(2).getSumcount()))/allCount)*100));
		model.addAttribute("Fvalue4",String.format("%.02f", (((double)(list.get(3).getSumcount()))/allCount)*100));
		model.addAttribute("Fvalue5",String.format("%.02f", (((double)(list.get(4).getSumcount()))/allCount)*100));
		model.addAttribute("Fvalue6",String.format("%.02f", (((double)(list.get(5).getSumcount()))/allCount)*100));
		model.addAttribute("Fother",String.format("%.02f", ((double)(allCount-(list.get(1).getSumcount()+list.get(2).getSumcount()+list.get(3).getSumcount()+list.get(4).getSumcount()+list.get(5).getSumcount()+list.get(0).getSumcount()))/allCount)*100));
		
		
	}
	
	
	
	
}
