package com.clone.starbucks.DTO;

import java.util.Date;

/*
create table custom(
cus_no number not null primary key,
id varchar2(30) not null,
p_name varchar2(80) not null,
cus_nickname varchar2(80),
cus_date date default sysdate not null,
cus_op varchar2(100)
);

alter table custom add foreign key(id) references userinfo(id);
alter table custom add foreign key(p_name) references product(p_name);

===== sequence ===
create sequence cus_no
INCREMENT BY 1
START WITH 0001
MINVALUE 0001
MAXVALUE 9999
CYCLE
NOCACHE
ORDER;
*/

public class CustomDTO {
	private int cus_no; //커스텀고유번호 not null sequence
	private String id; //저장한 아이디 not null
	private String p_name; //제품이름 not null
	private String cus_nickname; //애칭 
	private Date cus_date; //등록일 not null, default sysdate
	private String cus_op; //커스텀옵션 
	
	
	public void setCus_no(int cus_no) {
		this.cus_no = cus_no;
	}
	public int getCus_no() {
		return cus_no;
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
	public String getCus_nickname() {
		return cus_nickname;
	}
	public void setCus_nickname(String cus_nickname) {
		this.cus_nickname = cus_nickname;
	}
	public Date getCus_date() {
		return cus_date;
	}
	public void setCus_date(Date cus_date) {
		this.cus_date = cus_date;
	}
	public String getCus_op() {
		return cus_op;
	}
	public void setCus_op(String cus_op) {
		this.cus_op = cus_op;
	}
	
}
