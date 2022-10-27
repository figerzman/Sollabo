package com.web.sollabo.member.dto;

import java.sql.Timestamp;

/*
CREATE TABLE MEMBER (
MEM_NO NUMBER(5),
MEM_ID   VARCHAR2(20)   NOT NULL,
MEM_EMAIL   VARCHAR2(50)   NOT NULL,
MEM_PASSWORD   VARCHAR2(100)   NOT NULL,
MEM_NAME   VARCHAR2(30)   NOT NULL,
MEM_NICKNAME   VARCHAR2(30)   NOT NULL,
MEM_PROFILE   VARCHAR2(200)   NOT NULL,
MEM_ADDR1   VARCHAR2(20)   NOT NULL,
MEM_ADDR2   VARCHAR2(100)   NOT NULL,
MEM_ADDR3   VARCHAR2(100)   NOT NULL,
MEM_TEL   VARCHAR2(20)   NOT NULL,
MEM_REG_DATE   DATE      DEFAULT SYSDATE,
MEM_GRADE   NUMBER(1)      DEFAULT 1,
MEM_LOGIN_FALE_CNT   NUMBER(5)      DEFAULT 0,
MEM_AU_KEYWORD   VARCHAR2(5)      DEFAULT 'U'
);
*/

public class MemberDTO {
	
	private int memNo;
	private String memId;
	private String memEmail;
	private String memPassword;
	private String memName;
	private String memNickname;
	private String memProfile;
	private String memAddr1;
	private String memAddr2;
	private String memAddr3;
	private String memTel;
	private Timestamp memRegDate;
	private int memGrade;
	private int memLoginFaleCnt;
	private String memAuKeyword;
	
	
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemEmail() {
		return memEmail;
	}
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}
	public String getMemPassword() {
		return memPassword;
	}
	public void setMemPassword(String memPassword) {
		this.memPassword = memPassword;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemNickname() {
		return memNickname;
	}
	public void setMemNickname(String memNickname) {
		this.memNickname = memNickname;
	}
	public String getMemProfile() {
		return memProfile;
	}
	public void setMemProfile(String memProfile) {
		this.memProfile = memProfile;
	}
	public String getMemAddr1() {
		return memAddr1;
	}
	public void setMemAddr1(String memAddr1) {
		this.memAddr1 = memAddr1;
	}
	public String getMemAddr2() {
		return memAddr2;
	}
	public void setMemAddr2(String memAddr2) {
		this.memAddr2 = memAddr2;
	}
	public String getMemAddr3() {
		return memAddr3;
	}
	public void setMemAddr3(String memAddr3) {
		this.memAddr3 = memAddr3;
	}
	public String getMemTel() {
		return memTel;
	}
	public void setMemTel(String memTel) {
		this.memTel = memTel;
	}
	public Timestamp getMemRegDate() {
		return memRegDate;
	}
	public void setMemRegDate(Timestamp memRegDate) {
		this.memRegDate = memRegDate;
	}
	public int getMemGrade() {
		return memGrade;
	}
	public void setMemGrade(int memGrade) {
		this.memGrade = memGrade;
	}
	public int getMemLoginFaleCnt() {
		return memLoginFaleCnt;
	}
	public void setMemLoginFaleCnt(int memLoginFaleCnt) {
		this.memLoginFaleCnt = memLoginFaleCnt;
	}
	public String getMemAuKeyword() {
		return memAuKeyword;
	}
	public void setMemAuKeyword(String memAuKeyword) {
		this.memAuKeyword = memAuKeyword;
	}


}
