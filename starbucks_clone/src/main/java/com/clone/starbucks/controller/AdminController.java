package com.clone.starbucks.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.DTO.RegisterDTO;
import com.clone.starbucks.DTO.SaleDTO;
import com.clone.starbucks.DTO.UserInfoDTO;
import com.clone.starbucks.service.AdminServiceImpl;

@Controller
public class AdminController {

//	@Autowired private IAdminService adminService;
	@Autowired AdminServiceImpl adminService;
	@Autowired HttpSession session;

	@PostMapping(value="admin/eCouponProc")
	public String ecouponProc(E_couponDTO e_coupon, Model model, HttpServletRequest request, HttpServletResponse response) throws ParseException, IOException {
		System.out.println("cont : " + e_coupon.getPon_startdate());
		String msg = adminService.eCouponProc(e_coupon, request);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		if(msg.equals("완료")) {
			out.println("<script>alert('쿠폰 발급이 완료되었습니다.'); location.href='adminCouponMake';</script>");
			out.flush();
			out.close();
			return "admin/adminCouponMake";
		}else {
			model.addAttribute("msg",msg);
			out.println("<script>alert('쿠폰 발급이 실패하였습니다.'); location.href='adminCouponMake';</script>");
			out.flush();
			out.close();
			return "admin/adminCouponMake";
		}
	}

	
		//admin
	   @RequestMapping(value="admin/adminCouponMake")
	   public String adminCouponMake() {
	      return "admin/adminCouponMake";
	   }
	
	   //0601 다정 커피
	   @RequestMapping(value="admin/saleChart-1")
	   public String saleChart1(Model model) {
		  adminService.drinkCount(model);
		  adminService.drinkRank(model);
	      return "admin/saleChart-1";
	   }
	   
	   //0602 다정 푸드
	   @RequestMapping(value="admin/saleChart-2")
	   public String saleChart2(Model model) {
		  adminService.foodCount(model);
		  adminService.foodRank(model);
	      return "admin/saleChart-2";
	   }
	   
	   //프로덕트
	   @RequestMapping(value="admin/saleChart-3")
	   public String saleChart3() {
	      return "admin/saleChart-3";
	   }
	   
	   
	   
	   
	   
	//단 - 목록
	@RequestMapping(value = "admin/memberListForm")
	public String memberListForm(Model model, 
			@RequestParam(value = "currentPage", required=false, defaultValue = "1") int currentPage,
			String select, String search) {
		adminService.memberListForm(currentPage, select, search);
		
		return "admin/memberListForm";
	}
	
	//단 - 정보
	@RequestMapping(value = "admin/userInfoForm")
	public String userInfoForm(String id, Model model) {
			model.addAttribute("all", adminService.userInfoForm(id));
			return "admin/userInfoForm";
	}
	
	//단 - 정보(로그인 필요)
//	@Value("${ADMIN:admin}") private String adminAccount;
//	@RequestMapping(value = "admin/userInfoForm") // memberListForm.jsp에서 사용자의 아이디를 클릭 시 요청을 받음.
//	public String userInfoForm(String id, HttpSession session, Model model) {
//		//String sessionId = (String) session.getAttribute("id");
//		UserInfoDTO user = (UserInfoDTO) session.getAttribute("userInfo");
//		if (id == "" || id == null || sessionId == "" || sessionId == null) {
//			return "redirect:admin/memberListForm";
//		}
//		if (sessionId.equals(id) || adminAccount.equals(sessionId)) {
//			model.addAttribute("all", adminService.userInfoForm(id));
//			return "admin/userInfoForm";
//		}
//		return "redirect:admin/memberListForm";
//	}
	
	//단 - 수정
	@RequestMapping(value = "admin/memberModifyForm")
	public String memberModifyForm(RegisterDTO all, Model model) {
		model.addAttribute("all", all);
		return "admin/memberModifyForm";
	}
	@RequestMapping(value = "admin/memberModifyProc")
	public String memberModifyProc(RegisterDTO all, UserInfoDTO userInfo) {
		String msg = adminService.memberModifyProc(all, userInfo);
		if(msg.equals("회원 수정 완료")) {
			return "redirect:/admin/memberListForm";
		}
		return "redirect:/";
	}
	
	//단 - 삭제
	@RequestMapping(value = "admin/memberDelete")
	public String memberDelete(RegisterDTO all, Model model) {
		model.addAttribute("all", all);
		return "admin/memberListForm";
	}
	@RequestMapping(value = "admin/deleteProc")
	public String deleteProc(RegisterDTO all, UserInfoDTO userInfo) {
		String msg = adminService.deleteProc(all, userInfo);
		if(msg.equals("회원 삭제 완료")) {
			return "redirect:/admin/memberListForm";
		}
		return "redirect:/";
	}
	
	
}
