package com.clone.starbucks.controller;

import java.util.HashMap;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.clone.starbucks.DTO.RegisterDTO;
import com.clone.starbucks.DTO.UserInfoDTO;
import com.clone.starbucks.service.MemberServiceImpl;
import com.google.gson.JsonObject;

@Controller
public class MemberController {
	@Autowired MemberServiceImpl memberService;
	@Autowired HttpSession session;
	
	
	//login
	@RequestMapping(value = "login/login")
	public String login() {
		return "login/login";
	}
	
	@PostMapping(value = "login/loginProc")//지혜
	public String loginProc(UserInfoDTO member, RedirectAttributes ra) {
		String msg = memberService.loginProc(member);
		if(msg.equals("로그인 성공")) {
			ra.addFlashAttribute("msg", msg);
			return "redirect:/index";
		}
		ra.addFlashAttribute("msg", msg);
		return "redirect:/login/login";
	}
	
	//카카오 인가코드 확인- 지혜
	@RequestMapping("login/kakaoLogin")
	public String kakaoLogin(String code) {
		//카카오에서 url에 인가코드를 담아서 get방식으로 전해준다.
		//전해준 인가코드를 확인 후 카카오서버에서 accessToken 값을 돌려준다.
		String accessToken = memberService.getAccessToken(code);
		//사용자의 accessToken값으로 정보를 얻어낸다.
		HashMap<String, String> userInfo = memberService.getUserInfo(accessToken);
		String id = userInfo.get("email").toString();
		UserInfoDTO user = memberService.memberCheck(id);
		
		if(user == null) { //카카오로그인 가입이 없는경우 기본정보 입력해줌
			Random rd = new Random();
			RegisterDTO data = new RegisterDTO();
			data.setId(id);
			data.setPw("kakao" + (rd.nextInt(99) + 1));
			data.setNickname(userInfo.get("nickname"));
			data.setName(userInfo.get("nickname"));
			int num = rd.nextInt(99999999) + 1;
			String phoneNum = "010"+String.format("%08d", num) ;
			data.setPhone(phoneNum);
			data.setEmail(id);
			data.setBirth_year(2000);
			data.setBirth_month(Integer.parseInt(userInfo.get("birthday").substring(0, 1)));
			data.setBirth_day(Integer.parseInt(userInfo.get("birthday").substring(2)));
			data.setGender(userInfo.get("gender"));
			data.setEvent_e("Y");
			data.setEvent_sms("Y");
			
			System.out.println(memberService.memberProc(data));
			user = (UserInfoDTO)data;
		}
		
		session.setAttribute("userInfo", user);
		session.setAttribute("accessToken", accessToken); //로그아웃시 넘겨줄 accessToken값 저장
		return "redirect:/index";
	}
	
	@GetMapping(value = "login/logout") //지혜
	public String logout(RedirectAttributes ra) {
		String accessToken = (String)session.getAttribute("accessToken");
		if(accessToken != null) memberService.logout(accessToken);
		
		if(memberService.logoutProc() == 1)
			ra.addFlashAttribute("msg", "로그아웃 되셨습니다.");
		return "redirect:/index";
	}
	
	
	// mem 회원가입 - 예은
	
	@RequestMapping(value = "mem/join1")
	public String join1() {
		return "mem/join1";
	}

	// 문자인증post - 예은
	@RequestMapping(value = "mem/join2", method =  {RequestMethod.GET, RequestMethod.POST})
	public String join2(HttpServletRequest req, Model model) {
		model.addAttribute("pnum", req.getParameter("num"));
		
		return "mem/join2";
	}



	@RequestMapping(value = "mem/join3")
	public String join3() {
		return "mem/join3";
	}

	// 휴대폰 sms 인증 - 예은
	@RequestMapping(value = "mem/verify")
	public String verify() {
		return "mem/verify";
	}

	@PostMapping(value = "mem/isExistId", produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String isExistId(@RequestBody(required = false) String id) {
		// @RequestBody : 클라이언트가 보낸 데이터 / (required = true / false) 기본필수값
		String str = id;
		String[] strAry = str.split("\\&|\\=");
		JsonObject obj = new JsonObject();

		for (String a : strAry)

			id = strAry[1];
		// System.out.println(id);

		String msg = memberService.isExistId(id);
		if (msg.equals("사용 가능한 아이디입니다.")) {
			obj.addProperty("result_code", "SUCCESS");
			obj.addProperty("alert_msg", msg);
		} else if (msg.equals("중복 아이디 입니다.")) {
			obj.addProperty("result_code", "ERROR");
			obj.addProperty("alert_msg", msg);
		}
		return obj.toString();
	}
	
	
	@RequestMapping(value = "mem/memberProc")
	public String memberProc(RegisterDTO member, Model model, RedirectAttributes ra, HttpServletRequest req) {
	
		//수신동의 값 변경
		if(member.getEvent_sms() == null) {
			member.setEvent_sms("N");
		}
		
		if( member.getEvent_e() == null) {
			member.setEvent_e("N");
		
		}

		
		String msg = memberService.memberProc(member);
	
		
		
		if (msg.equals("가입 완료")) {
			ra.addFlashAttribute("msg", msg);
			model.addAttribute("name", req.getParameter("user_nm"));
			return "redirect:/mem/join3";
			// 메소드 실행 후 새로운 요청을 줘서 클라이언트에게 경로 제공

		} else {
			model.addAttribute("msg", msg);
			return "redirect:/mem/join1";
			// 메소드를 실행 후 화면 제공
		}

	}
	
	//ajax
	
	@ResponseBody // 아이디 체크-예은
	@PostMapping(value = "**/interface/getUserIdCheck", produces = "application/json; charset=UTF-8")
	public String getUserIdCheck() {
		JsonObject obj = new JsonObject();
		obj.addProperty("result_code", "SUCCESS");
		obj.addProperty("alert_msg", "");

//      {
//          "result_code": "SUCCESS",
//          "alert_msg": ""
//      }
		return obj.toString();
	}
	
	@ResponseBody // 비밀번호 규칙 체크-예은
	@PostMapping(value = "**/interface/getUserPwdCheck", produces = "application/json; charset=UTF-8")
	public String getUserPwdCheck() {
		JsonObject obj = new JsonObject();
		obj.addProperty("result_code", "SUCCESS");
		obj.addProperty("alert_msg", "");

//      {
//          "result_code": "SUCCESS",
//          "alert_msg": ""
//      }
		return obj.toString();
	}
	
	
	@ResponseBody // 닉네임 체크-예은
	@PostMapping(value = "**/interface/checkNicknameValid", produces = "application/json; charset=UTF-8")
	public String checkNicknameValid() {
		JsonObject obj = new JsonObject();
		obj.addProperty("result_code", "SUCCESS");
		obj.addProperty("alert_msg", "");

//      {
//          "result_code": "SUCCESS",
//          "alert_msg": ""
//      }
		return obj.toString();
	}

}

