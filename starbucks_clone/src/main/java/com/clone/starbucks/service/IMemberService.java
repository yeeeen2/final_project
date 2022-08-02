package com.clone.starbucks.service;


import com.clone.starbucks.DTO.RegisterDTO;
import com.clone.starbucks.DTO.UserInfoDTO;
import java.util.HashMap;


public interface IMemberService {

	// 핸드폰 인증시 중복확인
	int isExistPhone(String phone);
	
	//중복확인
	public String isExistId(String id);
		
	//회원가입 
	public String memberProc(RegisterDTO member);
	
	//로그인버튼 클릭시
	public String loginProc(UserInfoDTO member);
	public String getAccessToken(String code);
	public HashMap<String, String> getUserInfo(String accessToken);
	public UserInfoDTO memberCheck(String id);
	
	//로그아웃
	public void logout(String accessToken);

}
