package com.clone.starbucks.controller;


import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.clone.starbucks.service.MemberServiceImpl;
import com.clone.starbucks.service.SmsService;

@Controller
public class SmsController {
	
	@Autowired MemberServiceImpl memberService;
	@Autowired SmsService smsService;
	@Autowired HttpSession session;
	
	
	
	@ResponseBody
	@PostMapping(value="mem/phoneAuth", produces = "application/json; charset=UTF-8;")
	public String phoneAuth(@RequestBody(required = false) String phone){
			
		if(memberService.isExistPhone(phone) == 0) {
			System.out.println("이미 가입된 번호입니다.");
			return "이미 가입된 번호입니다.";
		} else {
			if(phone != null) {
				String code = smsService.sendRandomMessage(phone);
				session.setAttribute("rand", code);
				System.out.println("인증 번호 전송");
				return "인증 번호 전송";
			} else {
				System.out.println("핸드폰 번호를 입력해주세요.");
				return "핸드폰 번호를 입력해주세요.";
			}	
		}
	}

	
	@ResponseBody
	@PostMapping(value="mem/phoneAuthCheck", produces = "application/json; charset=UTF-8;")
	public String phoneAuthCheck(@RequestBody(required = false) Map<String, String> map, Model model) {
		System.out.println("고객이 입력한 인증 번호: " + map.get("verifyCode"));
		
		// phoneAuth 메소드에서 생성한 인증번호와 고객이 입력한 인증번호를 비교
		String rand = (String) session.getAttribute("rand");
		String code = map.get("verifyCode");
		String phone = map.get("phone");
		
		if(rand == null) {
			System.out.println(rand);
			 return "인증 번호를 생성하세요";
		}
		if(code.isEmpty()) {

			 return "인증 번호를 입력하세요";
		}
		
		if(rand.equals(code)) {

			
			return "인증 성공";
		}
		
		return "인증 실패";
	}
	
	
	
	
	
}
