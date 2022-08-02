package com.clone.starbucks.DTO;

/*
create table userinfo(
id varchar2(30) not null primary key,
pw varchar2(60) not null,
star number,
grade char(2) check(grade in ('WC','GR','GD')) not null,
nickname varchar2(50),
cupreward char(1) check(cupreward in('S','D')) not null,
DTPass varchar2(50)
);

===== default =====
alter table userinfo modify star default 0;
alter table userinfo modify grade default 'WC';
alter table userinfo modify cupreward default 'S';

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

public class UserInfoDTO {
	
	private String id;	// 아이디 [PK, not null]
	private String pw;	// 비밀번호 [not null]
	private String confirmPw;	// 디비에는 안들어가는 확인용
	private int star;	// 별 [default 0]
	private String grade;	// 등급 [not null, check, default wc]
	private String nickname;	//닉네임
	private String cupreward;	// 에코컵리워드 설정 [not null, check, default s] :s는 별적립 d는 할인
	private String DTPass;	//드라이브스루 패스 등록
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getConfirmPw() {
		return confirmPw;
	}
	public void setConfirmPw(String confirmPw) {
		this.confirmPw = confirmPw;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getCupreward() {
		return cupreward;
	}
	public void setCupreward(String cupreward) {
		this.cupreward = cupreward;
	}
	public String getDTPass() {
		return DTPass;
	}
	public void setDTPass(String dTPass) {
		DTPass = dTPass;
	}
	
}