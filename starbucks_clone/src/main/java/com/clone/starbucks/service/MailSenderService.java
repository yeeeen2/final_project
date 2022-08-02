package com.clone.starbucks.service;

import java.io.UnsupportedEncodingException;
import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MailSenderService {
	@Autowired JavaMailSender mailsender;
	
	// 받는사람의메일주소, 받는이름, 메일제목, 메일내용	
	public boolean mailSend(String toEmailAddress,String name, String subject, String text) {
		boolean result = true;				
		MimeMessage message = mailsender.createMimeMessage();
		try {
			// 메일의 제목 설정
			message.setSubject(subject, "UTF-8");
			// 메일내용
			message.setText(text, "UTF-8", "html");
			// 보내는 사람 이메일 : gmail을 사용하는 경우에는 인증된 메일처리가 된다.
			message.setFrom(new InternetAddress("inis2510@naver.com"));
			// 받는 사람의 이메일  주소
			message.addRecipient(RecipientType.TO, new InternetAddress(toEmailAddress,name,"UTF-8"));
			// 메일 전송
			mailsender.send(message);
			} catch (MessagingException e) {
				result=false;
				e.printStackTrace();		
			} catch (UnsupportedEncodingException e) {
				result=false;
				e.printStackTrace();
			}				
			return result;	
		}
	}

