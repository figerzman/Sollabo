package com.web.sollabo.qna.dto;

import java.sql.Timestamp;

public class QnaDTO {
	
	/*----------------------QNA------------------------------*/

	private int qnaNo;
	private String qnaTitle;
	private String qnaContent;
	private String qnaWriter;
	private String qnaFile;
	private Timestamp qnaRegdate;
	private int qnaPublic;
	
	/*----------------------QNA_REPLY------------------------------*/
	
	private int qnaReplyNo;
	private int qnaReNo;
	private String qnaReplyContent;
	private String qnaReplyWriter;
	private Timestamp qnaReplyRegdate;
	
	/* 둘이 같음 qnaNo = qnaReNo */
	
	public int getQnaNo() {
		return qnaNo;
	}
	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}
	public String getQnaTitle() {
		return qnaTitle;
	}
	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}
	public String getQnaContent() {
		return qnaContent;
	}
	public void setQnaContent(String qnaContent) {
		this.qnaContent = qnaContent;
	}
	public String getQnaWriter() {
		return qnaWriter;
	}
	public void setQnaWriter(String qnaWriter) {
		this.qnaWriter = qnaWriter;
	}
	public String getQnaFile() {
		return qnaFile;
	}
	public void setQnaFile(String qnaFile) {
		this.qnaFile = qnaFile;
	}
	public Timestamp getQnaRegdate() {
		return qnaRegdate;
	}
	public void setQnaRegdate(Timestamp qnaRegdate) {
		this.qnaRegdate = qnaRegdate;
	}
	public int getQnaPublic() {
		return qnaPublic;
	}
	public void setQnaPublic(int qnaPublic) {
		this.qnaPublic = qnaPublic;
	}
	public int getQnaReplyNo() {
		return qnaReplyNo;
	}
	public void setQnaReplyNo(int qnaReplyNo) {
		this.qnaReplyNo = qnaReplyNo;
	}
	public int getQnaReNo() {
		return qnaReNo;
	}
	public void setQnaReNo(int qnaReNo) {
		this.qnaReNo = qnaReNo;
	}
	public String getQnaReplyContent() {
		return qnaReplyContent;
	}
	public void setQnaReplyContent(String qnaReplyContent) {
		this.qnaReplyContent = qnaReplyContent;
	}
	public String getQnaReplyWriter() {
		return qnaReplyWriter;
	}
	public void setQnaReplyWriter(String qnaReplyWriter) {
		this.qnaReplyWriter = qnaReplyWriter;
	}
	public Timestamp getQnaReplyRegdate() {
		return qnaReplyRegdate;
	}
	public void setQnaReplyRegdate(Timestamp qnaReplyRegdate) {
		this.qnaReplyRegdate = qnaReplyRegdate;
	}
	
	
}
