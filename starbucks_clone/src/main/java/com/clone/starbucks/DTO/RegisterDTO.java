package com.clone.starbucks.DTO;

/*
create table register(
id varchar2(30) not null,
name varchar2(30) not null,
registerdate date default sysdate not null,
phone varchar2(15) unique not null,
email varchar2(50) not null,
birth_year number not null,
birth_month number not null,
birth_day number not null,
gender char(1) check(gender in ('M','F')) not null,
event_e char(1) check(event_e in ('Y','N')) not null,
event_SMS char(1) check(event_SMS in ('Y','N')) not null

===== fk =====
alter table register add foreign key(id) references userInfo(id);
*/

import java.sql.Date;

public class RegisterDTO extends UserInfoDTO {
   
   private String id;   		// 아이디 [fK, not null]
   private String name; 		// 이름 [not null]
   private Date registerdate; 	// 가입일자 [not null, sysdate]
   private String phone;   		// 전화번호 [not null, unique]
   private String email;  		// 이메일 [not null]
   private int birth_year;   	// 생년 [not null]
   private int birth_month;   	// 생월 [not null]
   private int birth_day;   	// 생일 [not null]
   private String gender;   		// 성별 [not null, check]
   private String event_e;   		// 이벤트수신허용 - 이메일 [not null, check]
   private String event_sms;   	// 이벤트수신허용 - sms [not null, check]

   
   public String getId() {
      return id;
   }
   public void setId(String id) {
      this.id = id;
   }
   public String getName() {
      return name;
   }
   public void setName(String name) {
      this.name = name;
   }
   public Date getRegisterdate() {
      return registerdate;
   }
   public void setRegisterdate(Date registerdate) {
      this.registerdate = registerdate;
   }
   public String getPhone() {
      return phone;
   }
   public void setPhone(String phone) {
      this.phone = phone;
   }
   public String getEmail() {
      return email;
   }
   public void setEmail(String email) {
      this.email = email;
   }
   public int getBirth_year() {
      return birth_year;
   }
   public void setBirth_year(int birth_year) {
      this.birth_year = birth_year;
   }
   public int getBirth_month() {
      return birth_month;
   }
   public void setBirth_month(int birth_month) {
      this.birth_month = birth_month;
   }
   public int getBirth_day() {
      return birth_day;
   }
   public void setBirth_day(int birth_day) {
      this.birth_day = birth_day;
   }
   public String getGender() {
      return gender;
   }
   public void setGender(String gender) {
      this.gender = gender;
   }
   public String getEvent_e() {
      return event_e;
   }
   public void setEvent_e(String event_e) {
      this.event_e = event_e;
   }
   public String getEvent_sms() {
      return event_sms;
   }
   public void setEvent_sms(String event_sms) {
      this.event_sms = event_sms;
   }
   
}