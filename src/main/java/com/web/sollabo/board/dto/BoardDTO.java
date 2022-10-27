package com.web.sollabo.board.dto;

import java.sql.Timestamp;

public class BoardDTO {
	
	private int noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private String noticeWriter;
	private String noticeFile;
	private Timestamp noticeRegDate;
	private String noticeHit;
	private String noticeDel;
	public int getNoticeNo() {
		return noticeNo;
	}
	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}
	public String getNoticeTitle() {
		return noticeTitle;
	}
	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}
	public String getNoticeContent() {
		return noticeContent;
	}
	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}
	public String getNoticeWriter() {
		return noticeWriter;
	}
	public void setNoticeWriter(String noticeWriter) {
		this.noticeWriter = noticeWriter;
	}
	public String getNoticeFile() {
		return noticeFile;
	}
	public void setNoticeFile(String noticeFile) {
		this.noticeFile = noticeFile;
	}
	public Timestamp getNoticeRegDate() {
		return noticeRegDate;
	}
	public void setNoticeRegDate(Timestamp noticeRegDate) {
		this.noticeRegDate = noticeRegDate;
	}
	public String getNoticeHit() {
		return noticeHit;
	}
	public void setNoticeHit(String noticeHit) {
		this.noticeHit = noticeHit;
	}
	public String getNoticeDel() {
		return noticeDel;
	}
	public void setNoticeDel(String noticeDel) {
		this.noticeDel = noticeDel;
	}
	
}
