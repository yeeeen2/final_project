package com.clone.starbucks.service;

import java.text.ParseException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.clone.starbucks.DTO.CardDTO;
import com.clone.starbucks.DTO.RegisterDTO;
import com.clone.starbucks.DTO.UserInfoDTO;

public interface IMsrService {

//----------------------------------------E-gift Card----------------------------------------------

	String card_NumMake(CardDTO cardDTO);
	String pin_NumMake(CardDTO cardDTO);
	
	CardDTO eGiftCardProc(CardDTO cardDTO, HttpServletRequest request) throws ParseException;
	
	boolean setPurchaseData(HashMap<String, String> data);
	
	void regInfo(RegisterDTO registerDTO, Model model);
	
//----------------------------------------E-gift Card----------------------------------------------

}
