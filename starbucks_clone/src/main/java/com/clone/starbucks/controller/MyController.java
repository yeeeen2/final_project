package com.clone.starbucks.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.clone.starbucks.DAO.IMyDAO;
import com.clone.starbucks.DTO.AllDTO;
import com.clone.starbucks.DTO.CardDTO;
import com.clone.starbucks.DTO.CustomDTO;
import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.DTO.RegisterDTO;
import com.clone.starbucks.DTO.UserInfoDTO;
import com.clone.starbucks.service.MenuServiceImpl;
import com.clone.starbucks.service.MyServiceImpl;
import com.google.gson.JsonObject;

@Controller
public class MyController {
	
	@Autowired MenuServiceImpl menuService;
	@Autowired MyServiceImpl myService;
	@Autowired IMyDAO myDAO;
	@Autowired HttpSession session;

	//my
	@PostMapping(value="my/cardRegisterProc")
	public String cardRegisterProc(UserInfoDTO userInfoDTO,CardDTO cardDTO, Model model, HttpServletRequest request, HttpServletResponse response)throws IOException {
		String msg = myService.cardRegisterProc(userInfoDTO, cardDTO, request);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(msg.equals("등록완료")) {
			model.addAttribute("msg",msg);
			out.println("<script>alert('카드 등록이 완료되었습니다.'); location.href='mycard_info_input';</script>");
			out.flush();
			out.close();
			return "my/mycard_info_input";
		}else {
			model.addAttribute("msg",msg);
			out.println("<script>alert('카드 발급이 실패하였습니다'); location.href='mycard_info_input';</script>");
			out.flush();
			out.close();
			return "my/mycard_info_input";
		}
		}
		
	@RequestMapping(value = "my/ecoupon_popup")
	public String ecoupon_popup() {
		return "my/ecoupon_popup";
	}
	
	@PostMapping(value="my/couponRegisterProc")
	public String couponRegisterProc(UserInfoDTO userInfoDTO, E_couponDTO eCouponDTO, Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {
		String msg = myService.couponRegisterProc(userInfoDTO, eCouponDTO, request);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(msg.equals("등록완료")) {
			model.addAttribute("msg",msg);
			out.println("<script>alert('쿠폰 등록이 완료되었습니다.'); location.href='mycard_info_input';</script>");
			out.flush();
			out.close();
			return "my/ecoupon";
		}else {
			model.addAttribute("msg",msg);
			out.println("<script>alert('쿠폰 등록이 실패되었습니다.'); location.href='mycard_info_input';</script>");
			out.flush();
			out.close();
			return "my/ecoupon";
		}
	}
	
	@RequestMapping(value = "my/ecoupon")
	public String ecoupon(E_couponDTO eCouponDTO, Model model) throws ParseException {
		myService.couponCount(eCouponDTO,model);
		return "my/ecoupon";
	}
	
	@RequestMapping(value="my/couponList")
	public String couponList(E_couponDTO eCouponDTO, Model model) throws ParseException {
		menuService.couponUse(eCouponDTO, model);
		return "my/couponList";
	}
	
	@RequestMapping(value = "my/egiftCard_shopping_bag")
	public String egiftCard_shopping_bag() {
		return "my/egiftCard_shopping_bag";
	}

	@RequestMapping(value = "my/egiftCard")
	public String egiftCard() {
		return "my/egiftCard";
	}
	
	
	//전자영수증
	@RequestMapping(value = "my/eReceiptList")
	public String eReceiptList(Model model) {
		myService.receipt(model);
		return "my/eReceiptList";
	}
	
//	public String eReceiptList(Model model,
//			@RequestParam(value="currentPage", required = false, defaultValue = "1") int currentPage) {
//		myService.receipt(currentPage, model);
//		return "my/eReceiptList";
//	}
	
	
	// 예은 - 마이스타벅스
	   @RequestMapping(value = "my/index")
	   public String my_index(UserInfoDTO userInfo, CardDTO cardDTO, Model model){
	      
	   
		   
	      UserInfoDTO user = (UserInfoDTO) session.getAttribute("userInfo");
	      
	      // 로그인 안했을때 로그인창으로 이동
	      if(user == null) {
	    	  return "redirect:/login/login";
	      }
	      
	      
	      boolean b = myService.isExistCard(userInfo, cardDTO);
	      System.out.println("카드확인 :" + b);
	      
	      model.addAttribute("nickname", user.getNickname());
	      

	      // 카드 없는 회원
	      if(b==false) {
	                  
	            int couponCount = myDAO.userCoupon(user.getId());
	          
	            model.addAttribute("couponCount", couponCount);
	            
	            return "my/index";
	      }      
	      
	      
	      // 카드 있는 회원)
	      System.out.println("아이디확인 : "+user.getId());
	      System.out.println("등급 : " + user.getGrade());
	      AllDTO all = myService.userAllInfo(user.getId());
	      
	      // 등급명 변경
	      if(all.getGrade().equals("WC")) {
	         all.setGrade("Welcome Level");
	      }else if(all.getGrade().equals("GR")) {
	         all.setGrade("Green Level");
	      }else {
	         all.setGrade("Gold Level");
	      }
	      
	      
	      // 카드 갯수
	      
	      int cardCount = myDAO.userCard(user.getId());
	      
	      // 쿠폰 갯수
	      
	      int useCouponCount = myDAO.useCouponCount(user.getId());
	      
	      int couponCount = (myDAO.userCoupon(user.getId())-useCouponCount);
	      System.out.println("==================");
	      System.out.println(myDAO.userCoupon(user.getId()));
	      System.out.println(useCouponCount);


	      
	      
	      //views로 넘겨주는 값
	   
	      model.addAttribute("nickname", all.getNickname());
	      model.addAttribute("grade", all.getGrade());
	      model.addAttribute("star", all.getStar());
	      model.addAttribute("c_name", all.getC_name());
	      model.addAttribute("c_num", all.getC_num());
	      model.addAttribute("remaincost", all.getRemaincost());
	      model.addAttribute("cardCount", cardCount);
	      model.addAttribute("couponCount", couponCount);
	      //지혜0704 추가
	      model.addAttribute("ageGd", myService.getInfo(user.getId()));
	      
	      return "my/index2";

	   }
	   
	   
	@RequestMapping(value = "my/mycard_charge")
	public String mycard_charge() {
		return "my/mycard_charge";
	}

	@RequestMapping(value = "my/mycard_charge_1")
	public String mycard_charge_1(CardDTO cardDTO,Model model, HttpServletRequest request) {
		myService.cardList(cardDTO, model);
		return "my/mycard_charge";
	}
	
	@ResponseBody 
	@RequestMapping(value="my/setChargeAjax")
	public int setChargeAjax(@RequestBody HashMap<String,String> data) {
		if(data != null) {
			if(myService.setChargeData(data)) {
			return 1;
			}
		}
		return 0;
	}

	
	@RequestMapping(value = "my/mycard_index")
	public String mycard_index() {
		return "my/mycard_index";
	}
	
	
	@RequestMapping(value = "my/cardList")
	public String cardList(CardDTO cardDTO,Model model){
		myService.cardList(cardDTO, model);
		return "my/mycard_index";
	}
	
	@RequestMapping(value="my/mycardProc")
	public String mycardProc(CardDTO cardDTO, Model model, HttpServletRequest request) {
		myService.mycardProc(cardDTO, model, request);
		return "my/mycard";
	}
	
	@RequestMapping(value="my/editCardProc")
	public String editCardProc(CardDTO cardDTO, Model model, HttpServletRequest request, HttpServletResponse response) throws IOException {
		String msg = myService.editCardProc(cardDTO, request, model);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(msg.equals("완료")) {
			model.addAttribute("msg",msg);
			out.println("<script>alert('카드 정보 수정이 완료되었습니다.'); location.href='cardList';</script>");
			out.flush();
			out.close();
			return "my/cardList";
		}else {
			model.addAttribute("msg",msg);
			out.println("<script>alert('카드 정보 수정이 실패하였습니다.'); window.location.href='my/mycard';</script>");
			out.flush();
			out.close();
			return "my/mycard";
		}
	}

	
	@RequestMapping(value = "my/mycard_info_input")
	public String mycard_info_input() {
		return "my/mycard_info_input";
	}

	@RequestMapping(value = "my/mycard_lost")
	public String mycard_lost() {
		return "my/mycard_lost";
	}

	@RequestMapping(value = "my/mycard")
	public String mycard() {
		return "my/mycard";
	}

	@RequestMapping(value = "my/reward_star_history")
	public String reward_star_history() {
		return "my/reward_star_history";
	}

	@RequestMapping(value = "my/reward")
	public String reward() {
		return "my/reward";
	}
	
	
	@RequestMapping(value = "my/dtpass")
	public String dtpass() {
		return "my/dtpass";
	}
	
	@ResponseBody // 차량번호 중복 체크-예은
	@PostMapping(value = "my/isExistCarNoWeb", produces = "application/json; charset=UTF-8")
	public String isExistCarNoWeb(@RequestBody(required = false) String carNo) {
		// @RequestBody : 클라이언트가 보낸 데이터 / (required = true / false) 기본필수값
		
		
		
		String str = carNo;
		String[] strAry = str.split("\\&|\\=");
		JsonObject obj = new JsonObject();

		for (String a : strAry)

			carNo = strAry[1];

		String msg = myService.isExistCar(carNo);
		if (msg.equals("등록 가능 차량 번호")) {
			obj.addProperty("result_code", "000");
			obj.addProperty("message", "");
		} else if (msg.equals("중복 차랑 변호")) {
			obj.addProperty("result_code", "ERROR");
			obj.addProperty("message", "");
		}
		return obj.toString();
	}
	
	
	@RequestMapping(value = "my/dtpassProc")	// 차량번호 등록
	public String dtpassProc(@ModelAttribute UserInfoDTO userInfo, Model model, RedirectAttributes ra, HttpServletResponse response) throws IOException {
	
		 UserInfoDTO user = (UserInfoDTO) session.getAttribute("userInfo");
	      
	      // 로그인 안했을때 로그인창으로 이동
	      if(user == null) {
	    	  return "redirect:/login/login";
	      }
	    //System.out.println(userInfo.getDTPass());

	    userInfo.setId(user.getId());
		String msg = myService.dtpassProc(userInfo);

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		
		if (msg.equals("등록 완료")) {
			model.addAttribute("msg", msg);
			user.setDTPass(userInfo.getDTPass());
			session.setAttribute("userInfo", user);
			out.println("<script>alert('차랑 번호가 등록되었습니다.'); window.location.href='../my/index';</script>");
			out.flush();
			out.close();
			return "my/index";
			

		} else {
			model.addAttribute("msg", msg);
			out.println("<script>alert('차랑 번호 등록에 실패하였습니다.'); window.location.href='../my/dtpass';</script>");
			out.flush();
			out.close();
			return "my/dtpass";

		}

	}
	
	@RequestMapping(value = "my/deleteProc")	// 차량번호 삭제
	public String deleteProc(UserInfoDTO userInfo, Model model, HttpServletResponse response) throws IOException{
	
		 UserInfoDTO user = (UserInfoDTO) session.getAttribute("userInfo");

		 
	      // 로그인 안했을때 로그인창으로 이동
	      if(user == null) {
	    	  return "redirect:/login/login";
	      }
	    //System.out.println(userInfo.getDTPass());

	    userInfo.setId(user.getId());
	    userInfo.setDTPass(user.getDTPass());
	 
		String msg = myService.deleteProc(userInfo);

			
		if (msg.equals("삭제 완료")) {
			user.setDTPass("");
			session.setAttribute("userInfo", user);
			
			return "redirect:/my/index";
			

		} else {
			return "redirect:/my/dtpass";

		}

	}
	
	//회원정보 확인 - 예은
	@RequestMapping(value = "my/myinfo_modify_login")
	public String myinfo_modify_login(String id, Model model) {
		model.addAttribute("all", myService.userInfo(id));
		return "my/myinfo_modify_login";
	}
	
	//회원정보 수정 - 예은
	
	@RequestMapping(value = "my/myinfo_modifyForm")
	public String memberModifyForm(RegisterDTO all, Model model) {
		model.addAttribute("all", all);
		return "my/myinfo_modifyForm";
	}
		
	@RequestMapping(value = "my/myinfo_ModifyProc")
	public String myinfo_modifyForm(RegisterDTO all, UserInfoDTO userInfo) {
		UserInfoDTO Session_user = (UserInfoDTO) session.getAttribute("userInfo");
	    String id = Session_user.getId();
	    System.out.println("확인 : " + id);
	    
	    all.setId(id);
	    userInfo.setId(id);
	    
		
		String msg = myService.myinfo_ModifyProc(all, userInfo);
		if(msg.equals("회원 수정 완료")) {
			return "redirect:/my/myinfo_modify_login";
		}
		return "redirect:/my/myinfo_modifyForm";
	}
	
	//회원탈퇴 - 예은
		@RequestMapping(value = "my/myinfo_out")
		public String myinfo_out(UserInfoDTO userInfo, CardDTO cardDTO, Model model) {
			 UserInfoDTO user = (UserInfoDTO) session.getAttribute("userInfo");

			 
			  boolean b = myService.isExistCard(userInfo, cardDTO);


		      // 카드 없는 회원
		      if(b==false) {
		              
		    		 if(user.getGrade().equals("WC")) {
		    			 user.setGrade("Welcome Level");
				      }else if(user.getGrade().equals("GR")) {
				    	  user.setGrade("Green Level");
				      }else {
				    	  user.setGrade("Gold Level");
				      }
		    	  	
		            int couponCount = myDAO.userCoupon(user.getId());
				      
				      model.addAttribute("nickname", user.getNickname());
				      model.addAttribute("grade", user.getGrade());
				      model.addAttribute("star", user.getStar());
				      model.addAttribute("c_name", "");
				      model.addAttribute("c_num", "");
				      model.addAttribute("remaincost", 0);
				      model.addAttribute("cardCount", 0);
				      model.addAttribute("couponCount", couponCount);
				      
				      return "my/myinfo_out";
		      }      
		      
			 
			 AllDTO all = myService.userAllInfo(user.getId());
			 
			 
			 if(all.getGrade().equals("WC")) {
				 all.setGrade("Welcome Level");
		      }else if(all.getGrade().equals("GR")) {
		    	  all.setGrade("Green Level");
		      }else {
		    	  all.setGrade("Gold Level");
		      }
			 
			   // 카드 갯수
		      
		      int cardCount = myDAO.userCard(user.getId());
		      
		      // 쿠폰 갯수
		      
		      int useCouponCount = myDAO.useCouponCount(user.getId());
		      
		      int couponCount = (myDAO.userCoupon(user.getId())-useCouponCount);

		      //views로 넘겨주는 값
		   
		      model.addAttribute("nickname", user.getNickname());
		      model.addAttribute("grade", user.getGrade());
		      model.addAttribute("star", user.getStar());
		      model.addAttribute("c_name", all.getC_name());
		      model.addAttribute("c_num", all.getC_num());
		      model.addAttribute("remaincost", all.getRemaincost());
		      model.addAttribute("cardCount", cardCount);
		      model.addAttribute("couponCount", couponCount);
			 
			return "my/myinfo_out";
		}
		
		
		@RequestMapping(value = "my/userDeleteProc")
		public String userDelete(UserInfoDTO userInfo, Model model, HttpServletResponse response){
		
			UserInfoDTO user = (UserInfoDTO) session.getAttribute("userInfo");

		    userInfo.setId(user.getId());
		 
			String msg = myService.userDeleteProc(userInfo);

				
			if (msg.equals("탈퇴 완료")) {

				session.invalidate();
				return "redirect:/index";
				

			} else {
				return "my/myinfo_out";

			}

		}
	
	//비밀번호 수정 - 예은
		
	@RequestMapping(value = "my/myinfo_modify_pwd")
	public String myinfo_modify_pwd(UserInfoDTO userInfo) {
		UserInfoDTO user = (UserInfoDTO) session.getAttribute("userInfo");
	    String id = user.getId();

		return "my/myinfo_modify_pwd";
	}
	
	
	@RequestMapping(value = "my/updatePwdProc")
	public String updatePwdProc(UserInfoDTO userInfo, Model model, RedirectAttributes ra, HttpServletRequest req, HttpServletResponse response) throws IOException {
		UserInfoDTO user = (UserInfoDTO) session.getAttribute("userInfo");
		String pw = user.getPw();
		
		userInfo.setPw(pw);
		userInfo.setId(user.getId());
		System.out.println("yess: " + userInfo.getPw());
		String msg = myService.updatePwdProc(userInfo, req);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		
		if(msg.equals("비밀번호 수정 완료")) {
			out.println("<script>alert('비밀번호가 변경되었습니다.'); location.href='myinfo_modify_pwd';</script>");
			out.flush();
			out.close();
			return "my/myinfo_modify_pwd";
		}else if(msg.equals("옳지 않은 비밀번호입니다")) {	//db랑 입력값이랑 다를때
			out.println("<script>alert('사용중인 비밀번호와 일치하지 않습니다.'); location.href='myinfo_modify_pwd';</script>");
			out.flush();
			out.close();
			return "my/myinfo_modify_pwd";
		}else if(msg.equals("변경불가")) {//입력값이랑 새비밀번호랑 같을때
			out.println("<script>alert('사용중인 비밀번호와 같습니다.'); location.href='myinfo_modify_pwd';</script>");
			out.flush();
			out.close();
			return "my/myinfo_modify_pwd";
		}else {// 새 비밀번호 비교
			out.println("<script>alert('두 비밀번호가 일치하지 않습니다.'); location.href='myinfo_modify_pwd';</script>");
			out.flush();
			out.close();
			return "my/myinfo_modify_pwd";
		}
			
	}
	
	@ResponseBody // 기존 비밀번호와 비교-예은
	@PostMapping(value = "my/getUserPwdCheck", produces = "application/json; charset=UTF-8")
	public String getUserPwdCheck() {
		JsonObject obj = new JsonObject();
		obj.addProperty("result_code", "SUCCESS");
		obj.addProperty("alert_msg", "");

		return obj.toString();
	}
	
	@ResponseBody // new 비밀번호 확인-예은
	@PostMapping(value = "**/interface/checkUserPwd", produces = "application/json; charset=UTF-8")
	public String checkUserPwd() {
		JsonObject obj = new JsonObject();
		obj.addProperty("result_code", "SUCCESS");

		return obj.toString();
	}
		
	
	
	
	@RequestMapping(value = "my/my_menu")//지혜0628
	public String my_menu(@RequestParam(value="myCustomPage", required = false, defaultValue = "1")int myCustomPage
			,Model model) {
		ArrayList<CustomDTO> list = myService.setCusTable(myCustomPage, model);
		model.addAttribute("custom", list);
		model.addAttribute("cusDateList", myService.setCusDate(list));
		
		return "my/my_menu";
	}

	@ResponseBody //지혜0629
	@PostMapping(value = "my/deleteCusAjax")
	public String deleteCusAjax(@RequestBody HashMap<String, ArrayList<Integer>> data) {
		return myService.deleteCustom(data.get("Arr"));
	}
	
	@GetMapping("userInfo")
	public String userInfoLoad(UserInfoDTO userinfo, RegisterDTO member, HttpServletRequest req, Model model) {
		String name = member.getName();
		model.addAttribute("userName", name);
		System.out.println(name);
		return "my/index";
	}

	@ResponseBody //지혜0704
	@PostMapping(value = "my/saleTop3Ajax", produces="application/json; charset=UTF-8")
	public ArrayList<String> saleTop3Ajax(@RequestBody HashMap<String, String> data) {
		System.out.println(data);
		ArrayList<String> result = myService.setSaleTop3(data);
		result.add(data.get("category"));
		return result;
	}
	
	@GetMapping("my/reward_tumbler") // 지혜 0707
	public String reward_tumbler() {
		return "my/reward_tumbler";
	}
	
	@ResponseBody //지혜0707
	@PostMapping(value = "my/setTumblerReward", produces="application/json; charset=UTF-8")
	public String rewardAjax(String tumblerRewardType) {
		System.out.println(tumblerRewardType);
		JsonObject result = new JsonObject();
		int check = myService.setTumblerReward(tumblerRewardType);
		if(check != 0) result.addProperty("result_code", "SUCCESS");
		else result.addProperty("result_code", "FAIL");
		return result.toString();
	}
	
}
