package com.clone.starbucks.DTO;

import java.util.Date;

/*
create table sale(
sale_no number not null,
id varchar2(30) not null,
p_name varchar2(80) not null,
salecount number not null,
saledate date default sysdate not null,
salemethod varchar2(50) not null,
pon_no number
);

===== fk =====
alter table sale add foreign key(id) references userinfo(id);
alter table sale add foreign key(p_name) references product(p_name);
alter table sale add foreign key(pon_no) references e_coupon(pon_no);

===== sequence ===
create sequence sale_no
INCREMENT BY 1
START WITH 0001
MINVALUE 0001
MAXVALUE 9999
CYCLE
NOCACHE
ORDER;

*/


public class SaleDTO {
	
	private int sale_no;	// 판매 순서 [PK, not null, sequence]
	private String id;	// 아이디 [FK, not null]
	private String p_name;	// 상품 이름 [FK, not null]
	private int salecount;	// 판매 갯수 [not null]
	private Date saledate;	// 판매일자 [not null, sysdate]
	private String salemethod;	// 구매 수단 [not null]
	private int pon_no;	// 쿠폰 순서 [FK, not null]
	
	
	public int getSale_no() {
		return sale_no;
	}
	public void setSale_no(int sale_no) {
		this.sale_no = sale_no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getSalecount() {
		return salecount;
	}
	public void setSalecount(int salecount) {
		this.salecount = salecount;
	}
	public Date getSaledate() {
		return saledate;
	}
	public void setSaledate(Date saledate) {
		this.saledate = saledate;
	}
	public String getSalemethod() {
		return salemethod;
	}
	public void setSalemethod(String salemethod) {
		this.salemethod = salemethod;
	}
	public int getPon_no() {
		return pon_no;
	}
	public void setPon_no(int pon_no) {
		this.pon_no = pon_no;
	}
	
	
}
