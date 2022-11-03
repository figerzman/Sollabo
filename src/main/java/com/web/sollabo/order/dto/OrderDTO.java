package com.web.sollabo.order.dto;

import java.sql.Timestamp;

public class OrderDTO {
	private int orderNo;
	private String memId;
	private int productNo;
	private String orderName;
	private String orderAddr1;
	private String orderAddr2;
	private String orderAddr3;
	private String orderTel;
	private int productOrderCnt;
	private int orderAccount;
	private Timestamp orderRegDate;
	private String orderState;
	
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public String getOrderName() {
		return orderName;
	}
	public void setOrderName(String orderName) {
		this.orderName = orderName;
	}
	public String getOrderAddr1() {
		return orderAddr1;
	}
	public void setOrderAddr1(String orderAddr1) {
		this.orderAddr1 = orderAddr1;
	}
	public String getOrderAddr2() {
		return orderAddr2;
	}
	public void setOrderAddr2(String orderAddr2) {
		this.orderAddr2 = orderAddr2;
	}
	public String getOrderAddr3() {
		return orderAddr3;
	}
	public void setOrderAddr3(String orderAddr3) {
		this.orderAddr3 = orderAddr3;
	}
	public String getOrderTel() {
		return orderTel;
	}
	public void setOrderTel(String orderTel) {
		this.orderTel = orderTel;
	}
	public int getProductOrderCnt() {
		return productOrderCnt;
	}
	public void setProductOrderCnt(int productOrderCnt) {
		this.productOrderCnt = productOrderCnt;
	}
	public int getOrderAccount() {
		return orderAccount;
	}
	public void setOrderAccount(int orderAccount) {
		this.orderAccount = orderAccount;
	}
	public Timestamp getOrderRegDate() {
		return orderRegDate;
	}
	public void setOrderRegRegDate(Timestamp orderorderRegDate) {
		this.orderRegDate = orderorderRegDate;
	}
	public String getOrderState() {
		return orderState;
	}
	public void setOrderState(String orderState) {
		this.orderState = orderState;
	}
	
	
}
