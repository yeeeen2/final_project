package com.clone.starbucks.DAO;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.clone.starbucks.DTO.CardDTO;
import com.clone.starbucks.DTO.CustomDTO;
import com.clone.starbucks.DTO.E_couponDTO;
import com.clone.starbucks.DTO.ProductDTO;
import com.clone.starbucks.DTO.SaleDTO;

@Repository
public interface IMenuDAO {
	int selectPrice(String p_name);
	
	int insertProduct(ProductDTO dto);
	
	int insertSale(SaleDTO dto);
	
	int insertMyMenu(CustomDTO dto);
	
	ArrayList<E_couponDTO> couponList(String id);
	
	ArrayList<CardDTO> cardList(String id);
}
