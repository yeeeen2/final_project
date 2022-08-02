package com.clone.starbucks.service;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Random;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.clone.starbucks.DAO.IMsrDAO;
import com.clone.starbucks.DTO.CardDTO;
import com.clone.starbucks.DTO.RegisterDTO;
import com.clone.starbucks.DTO.UserInfoDTO;

@Service
public class MsrServiceImpl implements IMsrService{
	
	@Autowired IMsrDAO msrDAO;
	@Autowired HttpSession session;

//----------------------------------------E-gift Card----------------------------------------------	
	
	//카드번호 생성
	@Override
	public String card_NumMake(CardDTO cardDTO) {
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
		
		String cardNum = firstNum + secondNum + thirdNum+ fourthNum; 
		return cardNum;
	}

	
	//핀번호 생성
	@Override
	public String pin_NumMake(CardDTO cardDTO) {
		Random random = new Random();
		int codeNum = random.nextInt(1000000);
		String pinCode = String.format("%06d", codeNum);
	
		return pinCode;
	}
	

	// 선물하기 페이지 정보 DB에 넣기
	@Override
	public CardDTO eGiftCardProc(CardDTO cardDTO, HttpServletRequest request) throws ParseException {
		
		//받는 사람
		if(request.getParameter("name")==null) {
			return null;
		}
		if(request.getParameter("email1")==null ||request.getParameter("email2")==null) {
			return null;
		}
		
		//카드 선택 << 기본선택 2022 Cherry Blossom
		
		//메세지 입력 << 기본적으로 null허용
		
		//금액 선택 << 기본선택 1만원
		
		//결제수단 선택 << 기본선택 카카오페이
		
		//카드 선물받은 날짜 넣기
		Date date = new Date(); //카드선물 받은 날짜는 현재 지금 날짜로
		cardDTO.setC_saledate(date);
		
		//카드 번호 넣기(랜덤)
		cardDTO.setC_num(card_NumMake(cardDTO));
		
		//핀 번호 넣기(랜덤)
		cardDTO.setC_pin(pin_NumMake(cardDTO));
		
		
		//insert
		msrDAO.insertEgift(cardDTO);
		
		session.setAttribute("cardDTO", cardDTO);
		
		
		return cardDTO;
	}

	@Override
	public boolean setPurchaseData(HashMap<String, String> data) {
		String name = data.get("name");
		String email1 = data.get("email1");
		String email2 = data.get("email2");
		String reqMsg = data.get("reqMsg");
		String price = data.get("price");
		String c_name = data.get("c_name");
		
		if(name.isEmpty() || email1.isEmpty() || email2.isEmpty() || reqMsg.isEmpty()) {
			return false;
		}
		
		session.setAttribute("name", name);
		session.setAttribute("email1", email1);
		session.setAttribute("email2", email2);
		session.setAttribute("reqMsg", reqMsg);
		session.setAttribute("price", price);
		session.setAttribute("c_name",c_name);
		
		System.out.println("에이젝스 옵니다~");
		return true;
	}

	@Override
	public void regInfo(RegisterDTO registerDTO, Model model) {
		
		UserInfoDTO user = (UserInfoDTO) session.getAttribute("userInfo");
		String id = user.getId();
		System.out.println("id :"+id);
		
		RegisterDTO register =  msrDAO.idCheck(id);
		
		String name = register.getName();
		String email = register.getEmail();
//		String[] mailSplit = email.split("@");
//		String email1 = mailSplit[0];
//		String email2 = mailSplit[1];
		
		model.addAttribute("name",name);
		model.addAttribute("email",email);
	}

	
//----------------------------------------E-gift Card----------------------------------------------


	
}
