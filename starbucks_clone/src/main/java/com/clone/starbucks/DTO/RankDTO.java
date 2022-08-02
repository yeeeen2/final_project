package com.clone.starbucks.DTO;

public class RankDTO extends SaleDTO{
	
	public String p_category1;
	public int sumcount;
	


	public int getSumcount() {
		return sumcount;
	}

	public void setSumcount(int sumcount) {
		this.sumcount = sumcount;
	}

	public String getP_category1() {
		return p_category1;
	}

	public void setP_category1(String p_category1) {
		this.p_category1 = p_category1;
	}
	
}
