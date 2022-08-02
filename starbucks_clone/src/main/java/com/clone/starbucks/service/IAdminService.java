package com.clone.starbucks.service;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.DTO.ProductDTO;
import com.clone.starbucks.DTO.RegisterDTO;
import com.clone.starbucks.DTO.SaleDTO;
import com.clone.starbucks.DTO.UserInfoDTO;

public interface IAdminService {
//----------------------------------------E-coupon----------------------------------------------	
		String receiptCoupon_NumMake();
		String mmsCoupon_NumMake();
		String starCoupon_NumMake();
		
		String eCouponProc(E_couponDTO ecouponDTO, HttpServletRequest request) throws ParseException;
		
		//String selectNo(E_couponDTO ecouponDTO) throws ParseException;
		
		Date endDate(E_couponDTO ecouponDTO) throws ParseException;
		
//----------------------------------------E-coupon----------------------------------------------	

	void memberListForm(int currentPage, String select, String search);
	
	RegisterDTO userInfoForm(String id);
	
	String memberModifyProc(RegisterDTO all, UserInfoDTO userInfo);
	
	String deleteProc(RegisterDTO all, UserInfoDTO userInfo);

//------------------------------------------sale------------------------------------------------
	
	void drinkCount(Model model);
	
	void drinkRank(Model model);
	
	void foodCount(Model model);
	
	void foodRank(Model model);
	
//------------------------------------------sale------------------------------------------------	
	
}
