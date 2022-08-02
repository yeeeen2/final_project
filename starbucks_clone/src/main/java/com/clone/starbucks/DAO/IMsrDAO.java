package com.clone.starbucks.DAO;

import org.springframework.stereotype.Repository;

import com.clone.starbucks.DTO.CardDTO;
import com.clone.starbucks.DTO.RegisterDTO;

@Repository
public interface IMsrDAO {
	
	void insertEgift(CardDTO cardDTO);
	
	CardDTO cardInfo(String c_num);
	
	RegisterDTO idCheck(String id);

}
