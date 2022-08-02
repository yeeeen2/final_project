package com.clone.starbucks.DTO;



public class AllDTO extends UserInfoDTO{
	
	private String c_name;		
	private int remaincost;		
	private String c_num;
	private int c_master;
	
	
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public int getRemaincost() {
		return remaincost;
	}
	public void setRemaincost(int remaincost) {
		this.remaincost = remaincost;
	}
	public String getC_num() {
		return c_num;
	}
	public void setC_num(String c_num) {
		this.c_num = c_num;
	}
	public int getC_master() {
		return c_master;
	}
	public void setC_master(int c_master) {
		this.c_master = c_master;
	}
	

	
}
