package com.clone.starbucks.DAO;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.clone.starbucks.DTO.AllDTO;
import com.clone.starbucks.DTO.CardDTO;
import com.clone.starbucks.DTO.CustomDTO;
import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.DTO.ReceiptDTO;
import com.clone.starbucks.DTO.RegisterDTO;
import com.clone.starbucks.DTO.UserInfoDTO;


@Repository
public interface IMyDAO {
	
	CardDTO c_numCheck(String c_num);
	
	String nameFind(String c_num);
	
	int updateCard(CardDTO cardDTO);
	
	int cMaster1Bool(String id); 
	
	String cMaster1Num(String id);

	int masterBool(String c_num);
	
	int countC_num(String id);
	
	int remainUpdate(CardDTO check);
	
	E_couponDTO pon_numCheck(String pon_num);
	
	int idUpdate(E_couponDTO ecouponDTO);
	
	int useCoupon(String pon_no);

	ArrayList<CardDTO> cardList(String id);

	int N_M_update(CardDTO cardDTO);

	int masterUpdate(String id);
	
	int couponCount(String id);
	
	ArrayList<ReceiptDTO> eReceipt(String id);
	
	int dataCount(String id);
	
	//ArrayList<ReceiptDTO> printList(String id, @Param("b")int begin, @Param("e")int end);
	
	//---------------------------------
	// my index - 예은
	
	int userCard(String id);
	
	int userCoupon(String string);

	int updateStar(UserInfoDTO user);
	
	AllDTO userAllInfo(String id);

	int useCouponCount(String id);

	int isExistCar(String carNo);

	int updateDtpass(UserInfoDTO userInfo);

	int deleteDtpass(UserInfoDTO userInfo);

	
	ArrayList<CustomDTO> customList(Map<String, Object> paramMap); //지혜
	
	int cusCount(String id); //지혜
	
	int deleteCustom(int cus_no); //지혜
	
	ArrayList<String> saleTop3(Map<String, Object> paramMap); //지혜
	
	RegisterDTO getInfo(String id); //지혜
	
	int updateReward(UserInfoDTO rewardType); //지혜

	//---------------------------------
	// 개인정보관리 - 예은
	
	RegisterDTO userInfo(String id);

	UserInfoDTO detailinfo(String id);

	void updateRegInfo(RegisterDTO all);

	void updateUserInfo(UserInfoDTO user);

	void updatePwd(UserInfoDTO userInfo);

	void deleteUser(UserInfoDTO userInfo);

}
