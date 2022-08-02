package com.clone.starbucks.DTO;

import java.util.Date;

/*
create table card(
c_name varchar2(50) not null,
c_saledate date default sysdate not null,
id varchar2(30),
remaincost number,
c_num varchar2(20) not null unique,
c_master number check(c_master in(0,1)),
c_pin varchar2(6) not null
);

===== fk =====
alter table card add foreign key(id) references userinfo(id);

*/



public class CardDTO {
	
	private String c_name;		//카드 이름 [not null]
	private Date c_saledate;	// 카드 구매일자 [not null, sysdate]
	private String id;			// 아이디 [FK]
	private int remaincost;		// 카드 잔액
	private String c_num;		// 카드번호[not null, unique]
	private int c_master;		// 주카드 설정 [check]
	private String c_pin;		// 핀번호[not null]
	
	
	public String getC_pin() {
		return c_pin;
	}
	public void setC_pin(String c_pin) {
		this.c_pin = c_pin;
	}
	public String getC_name() {
		return c_name;
	}
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}
	public Date getC_saledate() {
		return c_saledate;
	}
	public void setC_saledate(Date c_saledate) {
		this.c_saledate = c_saledate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
