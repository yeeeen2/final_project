package com.clone.starbucks.service;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.ParseException;
import java.util.HashMap;

import org.springframework.ui.Model;

import com.clone.starbucks.DTO.CardDTO;
import com.clone.starbucks.DTO.E_couponDTO;

public interface IMenuService {
	
	public boolean setOrderList(HashMap<String, String> data); //세션에 메뉴고른거 넣기
	
	public boolean setOrderCount(HashMap<String, String> data); //세션에 결제할 아이템&수량저장
	
	public boolean setMyMenu(HashMap<String, String> data); //나만의메뉴 등록
	
	public void resetOrderList(); //결제 실패시 장바구니 세션 삭제
	
	public int getPrice(String p_name);
	
	public void insertMenu(String menuName) throws FileNotFoundException, IOException; //DB에 메뉴넣기
	
	public void couponUse(E_couponDTO e_couponDTO, Model model) throws ParseException;

	public int payment(HashMap<String,String> data) throws ParseException;
	
	public void cardChoice(CardDTO cardDTO, Model model); 
	

}
