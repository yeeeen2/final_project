package com.clone.starbucks.controller;


import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.clone.starbucks.DTO.CardDTO;
import com.clone.starbucks.DTO.RegisterDTO;
import com.clone.starbucks.DTO.UserInfoDTO;
import com.clone.starbucks.service.MailSenderService;
import com.clone.starbucks.service.MsrServiceImpl;

@Controller
public class MsrController {
	@Autowired MsrServiceImpl msrService;
	@Autowired HttpSession session;
	@Autowired MailSenderService mail;
	//msr
	
	
	@RequestMapping(value="msr/sceGift/eGiftCardProc")
	public String eGiftCardProc(CardDTO cardDTO, Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		//카카오톡 결제(메소드 만들어서 불러오기)
		
		//DB저장 <<카드값 저장
		CardDTO dto = msrService.eGiftCardProc(cardDTO, request);
		
		
		//alert
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		
		if(dto!=null) {	
			// <!-- 0620예은- 메일전송 -->
			
			String name = request.getParameter("name");
			String email1 = request.getParameter("email1");
			String email2 = request.getParameter("email2");
			String email = email1+"@"+email2;
			String subject = "♬ Starbucks E-Gift 카드가 도착하였습니다 ♬";
			String reqMsg = request.getParameter("reqMsg");
			
			String cardNum = dto.getC_num();
			String cardPin = dto.getC_pin();
			String ment = name+"님! E-gift 카드가 도착하였습니다! "
					+ "\n카드번호 : "+cardNum
					+ "\n핀번호 : "+cardPin
					+ "\n보내시는 분의 메세지 : "+reqMsg;
			
			mail.mailSend(email, name, subject, ment);
			out.println("<script>alert('카드 구매가 완료되었습니다.'); location.href='gift_step1';</script>");
			out.flush();
			out.close();
			return "msr/sceGift/gift_step1";
		}else {
			out.println("<script>alert('카드 구매를 실패하였습니다.'); location.href='gift_step1';</script>");
			out.flush();
			out.close();
			return "msr/sceGift/gift_step1";
		}
		
	}
	
	
	@RequestMapping(value = "msr/msreward/about")
	public String msreward_about() {
		return "msr/msreward/about";
	}

	@RequestMapping(value = "msr/msreward/level_benefit")
	public String msreward_level_benefit() {
		return "msr/msreward/level_benefit";
	}

	@RequestMapping(value = "msr/msreward/star")
	public String msreward_star() {
		return "msr/msreward/star";
	}

	@RequestMapping(value = "msr/scard/about")
	public String scard_about() {
		return "msr/scard/about";
	}

	@RequestMapping(value = "msr/scard/charge_information")
	public String scard_charge_information() {
		return "msr/scard/charge_information";
	}

	@RequestMapping(value = "msr/scard/lost_report")
	public String scard_lost_report() {
		return "msr/scard/lost_report";
	}

	@RequestMapping(value = "msr/scard/register_inquiry")
	public String scard_register_inquiry() {
		return "msr/scard/register_inquiry";
	}

	@RequestMapping(value = "msr/sceGift/egift_information")
	public String sceGift_egift_information() {
		return "msr/sceGift/egift_information";
	}

	@RequestMapping(value = "msr/sceGift/gift_step1")
	public String sceGift_gift_step1() {
		return "msr/sceGift/gift_step1";
	}
	
	@RequestMapping(value="msr/sceGift/gift_step2")
	public String gift_step2(RegisterDTO registerDTO, Model model, HttpServletRequest request) {
		msrService.regInfo(registerDTO,model);
		return "msr/sceGift/gift_step1";
	}

	@RequestMapping(value = "msr/sceGift/msr_useguide")
	public String sceGift_msr_useguide() {
		return "msr/sceGift/msr_useguide";
	}
	
	//카카오페이결제 sale/kakaopay
//	@RequestMapping(value="sale/kakaopay")
//	public String 
	
}
