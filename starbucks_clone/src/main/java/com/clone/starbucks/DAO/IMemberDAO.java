package com.clone.starbucks.DAO;

import org.springframework.stereotype.Repository;

import com.clone.starbucks.DTO.RegisterDTO;
import com.clone.starbucks.DTO.UserInfoDTO;



@Repository
public interface IMemberDAO {
	
	UserInfoDTO loginProc(String id);

	UserInfoDTO selectId(String id);

	int isExistPhone(String phone);
	
	int isExistId(String id);
	
	void insertMember(RegisterDTO member);

	void insertUserInfo(UserInfoDTO userinfo);


}
