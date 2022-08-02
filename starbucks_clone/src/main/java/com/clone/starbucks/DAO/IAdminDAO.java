package com.clone.starbucks.DAO;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.DTO.RankDTO;
import com.clone.starbucks.DTO.RegisterDTO;
import com.clone.starbucks.DTO.UserInfoDTO;

@Repository
public interface IAdminDAO {
	
	//coupon 발급
	void insertEcoupon(E_couponDTO eCoupon);
	
	E_couponDTO selectNo(int pon_no);
	
	
	
	ArrayList<RegisterDTO> memberListForm(@Param("b")int begin, @Param("e")int end, 
			@Param("sel")String select, @Param("search")String search);
	int memberCount();
	
	RegisterDTO userInfoForm(String id);
	UserInfoDTO info(String id);

	int updateReg(RegisterDTO all);
	int updateUser(UserInfoDTO user);

	void deleteCustom(String Id);
	void deleteSale(String Id);
	void deleteE_coupon(String Id);
	void deleteCard(String Id);
	void deleteReg(String Id);
	void deleteUser(String Id);
	
	Integer salesDrinkCount(String saledate);
	ArrayList<RankDTO> drinkRank();
	
	int allCountD();
	
	Integer salesFoodCount(String saledate);
	ArrayList<RankDTO> foodRank();
	
	int allCountF();
}
