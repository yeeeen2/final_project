package com.clone.starbucks.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.clone.starbucks.DAO.IMemberDAO;
import com.clone.starbucks.DTO.RegisterDTO;
import com.clone.starbucks.DTO.UserInfoDTO;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.clone.starbucks.DAO.IMemberDAO;
import com.clone.starbucks.DTO.UserInfoDTO;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;


@Service
public class MemberServiceImpl implements IMemberService{
			@Autowired IMemberDAO memberDao;
			@Autowired HttpSession session;
			
			@Override
			public int isExistPhone(String phone) {
				if(phone == null)
					return 1;
				int count = memberDao.isExistPhone(phone);
				if(count >= 1)
					return 0;
				return 1;
			}

			@Override
			public String isExistId(String id) {

				if(id == null)
					return "아이디를 입력 후 다시 시도하세요.";
				int count = memberDao.isExistId(id);
				//System.out.println("count : " + count);
				if(count == 1)
					return "중복 아이디 입니다.";

				return "사용 가능한 아이디입니다.";
			}


			@SuppressWarnings("unlikely-arg-type")
			@Override
			public String memberProc(RegisterDTO member) {
				UserInfoDTO userinfo = member;

				if(userinfo.getId() == null || userinfo.getId().isEmpty())
					return "아이디를 입력하세요.";
				if(userinfo.getPw() == null || userinfo.getPw().isEmpty())
					return "비밀번호를 입력하세요.";
				if(memberDao.isExistId(userinfo.getId()) > 0)
					return "중복 아이디 입니다.";


				BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
				String securePw = encoder.encode(userinfo.getPw());
				userinfo.setPw(securePw);
				
				// 성별 값 변경
				String genderStr = member.getGender().substring(0,1);
				member.setGender(genderStr);

				
				memberDao.insertUserInfo(userinfo);
				
				
				memberDao.insertMember(member);
				


				return "가입 완료";
			}
			
			@Override //로그인 - 설아
			public String loginProc(UserInfoDTO member) {
				if(member.getId() == null || member.getId().isEmpty())
					return "아이디를 입력하세요.";
				
				if(member.getPw() == null || member.getPw().isEmpty())
					return "비밀번호를 입력하세요.";
				
				UserInfoDTO check = memberDao.loginProc(member.getId());
				System.out.println(check.getPw());
				
				BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		
				System.out.println("dddd: " + encoder.encode(check.getPw()));
				
				if(check != null && encoder.matches(member.getPw(), check.getPw())) {
					session.setAttribute("userInfo", check);
					System.out.println("야" + encoder.encode(member.getPw()));
					return "로그인 성공";
				}else {
					System.out.println("야" + encoder.encode(member.getPw()));
					return "아이디 또는 비밀번호를 확인하세요.";
				}
				

			}
			
	public String getAccessToken (String code) {//설아
		String accessToken = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";
		try {
			String sendMessage = "grant_type=authorization_code" 
					+ "&client_id=8f741cbc7673a04d6bfdf330732780bd"
					+"&redirect_uri=http://localhost:8085/starbucks/login/kakaoLogin" 
					+ "&code=" + code;
		
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection)url.openConnection();
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			bw.write(sendMessage); 
			bw.flush();
			
			int responseCode = conn.getResponseCode(); // 결과 코드가 200이라면 성공
			System.out.println("responseCode : " + responseCode);
			
			// 요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "", result = "";
			while ((line = br.readLine()) != null) {
				result += line;
			}

			//Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
			JsonElement element = JsonParser.parseString(result);
			accessToken = element.getAsJsonObject().get("access_token").getAsString();
			
			br.close();
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		} 
		return accessToken;
	}
	
	public HashMap<String, String> getUserInfo(String accessToken) {//설아
		HashMap<String, String> userInfo = new HashMap<String, String>();
		//요청할 카카오 URL주소
		String reqURL = "https://kapi.kakao.com/v2/user/me";

		try {
			//URL에 연결하기
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			// 요청에 필요한 Header에 포함될 필수 내용 
			conn.setRequestProperty("Authorization", "Bearer " + accessToken);
			
			//카카오 서버가 응답한 데이터 확인
			int responseCode = conn.getResponseCode();
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";
			while ((line = br.readLine()) != null) {
				result += line;
			}
			
			JsonElement element = JsonParser.parseString(result);
			JsonObject properties = element.getAsJsonObject().get("kakao_account").getAsJsonObject();
			String nickname = properties.get("profile").getAsJsonObject().get("nickname").getAsString();
			String email = properties.get("email").getAsString();
			String birthday = properties.get("birthday").getAsString();
			String gender = properties.get("gender").getAsString();
			userInfo.put("nickname", nickname);
			userInfo.put("email", email);
			userInfo.put("birthday", birthday);
			if(gender.equals("female")) gender = "F";
			else gender = "M";
			userInfo.put("gender", gender);

		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return userInfo;
	}
	
	@Override //지혜
	public UserInfoDTO memberCheck(String id) {
		UserInfoDTO user = memberDao.loginProc(id);
		if (user != null) return user;
		return null;
	}
					
	public void logout(String accessToken) { //설아
	    String reqURL = "https://kapi.kakao.com/v1/user/logout";
	    
	    try {
	        URL url = new URL(reqURL); // URL 객체 생성
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection(); 
	        conn.setRequestMethod("POST"); // 메소드 설정
	        
	        // 요청 정보 헤더에 담기.
	        conn.setRequestProperty("Authorization", "Bearer " + accessToken);
	        // 응답 코드 확인
	        int responseCode = conn.getResponseCode();
	    }catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int logoutProc() { //지혜
		if(session.getAttribute("userInfo") == null)
			return 0;
		session.invalidate();
		return 1;
	}
	
}
