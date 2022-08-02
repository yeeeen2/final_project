package com.clone.starbucks.service;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.clone.starbucks.config.SmsConfig;


@Service
public class SmsService {
	@Autowired HttpSession session;

	public String sendRandomMessage(String phone) {
	    SmsConfig message = new SmsConfig();
	    Random rand = new Random();
	    String numStr = String.format("%06d", rand.nextInt(1000000));	//111111~999999
	    
	    System.out.println("회원가입 문자 인증 => " + numStr);

	    message.sendSMS(phone, numStr);

	    return numStr;
	}
		

}
