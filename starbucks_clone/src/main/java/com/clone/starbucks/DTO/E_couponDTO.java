package com.clone.starbucks.DTO;




import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/*
create table e_coupon(
pon_no number not null primary key,
pon_category char(7) check(pon_category in ('receipt','mms','star')) not null,
pon_num varchar2(20) not null unique,
pon_name varchar2(50) not null,
pon_startdate date default sysdate not null,
pon_enddate date default sysdate+30 not null,
pon_used char(1) check(pon_used in ('Y','N')) not null,
pon_usedate date default sysdate null,
pon_cash number not null,
id varchar2(30)
);

===== sequence ===
create sequence pon_no
INCREMENT BY 1
START WITH 0001
MINVALUE 0001
MAXVALUE 9999
CYCLE
NOCACHE
ORDER;


*/


public class E_couponDTO {
	
	private int pon_no; // 쿠폰 발행 순서 [not null, sequence]
	private String pon_category;	// 쿠폰 카테고리(msr, 카카오톡선물...) [not null, check]
	private String pon_num;	// 쿠폰 고유번호 [not null, unique]
	private String pon_name;	// 쿠폰 이름 [not null]
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date pon_startdate;	// 쿠폰 시작일자 [not null, sysdate]  <<Date는 sql이어서 util로 바꿨습니당 -다정
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date pon_enddate;	// 쿠폰 끝일자 [not null, 시작일자+30day]
	private char pon_used;	// 쿠폰 사용여부 [not null, check]
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date pon_usedate;	// 쿠폰 사용일자 [null, sysdate]
	private int pon_cash;	// 쿠폰 금액 [not null]
	private String id;	// 등록한 사용자 아이디
	
	
	public int getPon_no() {
		return pon_no;
	}
	public void setPon_no(int pon_no) {
		this.pon_no = pon_no;
	}
	public String getPon_category() {
		return pon_category;
	}
	public void setPon_category(String pon_category) {
		this.pon_category = pon_category;
	}
	public String getPon_num() {
		return pon_num;
	}
	public void setPon_num(String pon_num) {
		this.pon_num = pon_num;
	}
	public String getPon_name() {
		return pon_name;
	}
	public void setPon_name(String pon_name) {
		this.pon_name = pon_name;
	}
	public Date getPon_startdate() {
		return pon_startdate;
	}
	public void setPon_startdate(Date pon_startdate) {
		this.pon_startdate = pon_startdate;
	}
	public Date getPon_enddate() {
		return pon_enddate;
	}
	public void setPon_enddate(Date pon_enddate) {
		this.pon_enddate = pon_enddate;
	}
	public char getPon_used() {
		return pon_used;
	}
	public void setPon_used(char pon_used) {
		this.pon_used = pon_used;
	}
	public Date getPon_usedate() {
		return pon_usedate;
	}
	public void setPon_usedate(Date pon_usedate) {
		this.pon_usedate = pon_usedate;
	}
	public int getPon_cash() {
		return pon_cash;
	}
	public void setPon_cash(int pon_cash) {
		this.pon_cash = pon_cash;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

}
