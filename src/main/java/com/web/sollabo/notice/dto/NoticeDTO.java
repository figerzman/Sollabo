package com.web.sollabo.notice.dto;

import java.sql.Timestamp;

public class NoticeDTO {
	private int noticeNo;
	private String noticeTitle;
	private String noticeContent;
	private String noticeWriter;
	private String noticeFile;
	private Timestamp noticeRegDate;
	private int noticeHit;
	private int noticeDel;
	
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
	public int getNoticeHit() {
		return noticeHit;
	}
	public void setNoticeHit(int noticeHit) {
		this.noticeHit = noticeHit;
	}
	public int getNoticeDel() {
		return noticeDel;
	}
	public void setNoticeDel(int noticeDel) {
		this.noticeDel = noticeDel;
	}
	
	
}
