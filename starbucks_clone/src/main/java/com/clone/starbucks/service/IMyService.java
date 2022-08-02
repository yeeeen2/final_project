package com.clone.starbucks.service;


import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.clone.starbucks.DTO.AllDTO;
import com.clone.starbucks.DTO.CardDTO;
import com.clone.starbucks.DTO.CustomDTO;
//github.com/jeakim213/stabucks.git
import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.DTO.RegisterDTO;
import com.clone.starbucks.DTO.UserInfoDTO;

public interface IMyService {
	
	//my
	String cardRegisterProc(UserInfoDTO userInfo, CardDTO cardDTO, HttpServletRequest request);
	
	boolean isExistCard(UserInfoDTO userInfo, CardDTO cardDTO);

	AllDTO userAllInfo(String id);
	
	String couponRegisterProc(UserInfoDTO userInfoDTO, E_couponDTO eCouponDTO, HttpServletRequest request);

	void cardList(CardDTO cardDTO, Model model);

	void mycardProc(CardDTO cardDTO, Model model, HttpServletRequest request);
	
	String editCardProc(CardDTO cardDTO,HttpServletRequest request, Model model);

	boolean setChargeData(HashMap<String, String> data);
	
	void couponCount(E_couponDTO eCouponDTO, Model model);

	String isExistCar(String carNo);

	String dtpassProc(UserInfoDTO userInfo);

	String deleteProc(UserInfoDTO userInfo);
	
	void receipt(Model model);
	//void receipt(int currentPage, Model model);

	ArrayList<CustomDTO> setCusTable(int myCustomPage, Model model);
	
	String deleteCustom(ArrayList<Integer> cusNoArr);
	
	RegisterDTO userInfo(String id);

	String myinfo_ModifyProc(RegisterDTO all, UserInfoDTO userInfo);

	String updatePwdProc(UserInfoDTO userInfo, HttpServletRequest req);

	String userDeleteProc(UserInfoDTO userInfo);
	
	ArrayList<String> setSaleTop3(HashMap<String, String> data);
	
	RegisterDTO getInfo(String id);
	
	int setTumblerReward(String rewardType);
}
