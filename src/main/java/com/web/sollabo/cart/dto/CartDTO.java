package com.web.sollabo.cart.dto;


 
import java.awt.List;

import oracle.sql.TIMESTAMP;

/*CREATE TABLE CART (
	   CART_NO   NUMBER(5)   NOT NULL,
	   MEM_NO   NUMBER(5)   NOT NULL,
	   PRODUCT_NO   NUMBER(5)   NOT NULL,
	   CART_CNT   NUMBER(5)   NOT NULL   ,
	   CART_REG_DATE   DATE      DEFAULT SYSDATE
);*/



public class CartDTO {
	

	private int cartNo;
	private int memNo;
	private int productNo;
	private int cartCnt;
	private TIMESTAMP cartRegDate;

	
	private int productPrice;
	private String productName;
	
	// 가격 표시
	
	/*
	 * private int saleprice;
	 * 
	 * private int totalprice;
	 */
	
	
	public int getCartNo() {
		return cartNo;
	}
	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}
	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public int getCartCnt() {
		return cartCnt;
	}
	public void setCartCnt(int cartCnt) {
		this.cartCnt = cartCnt;
	}
	public TIMESTAMP getCartRegDate() {
		return cartRegDate;
	}
	public void setCartRegDate(TIMESTAMP cartRegDate) {
		this.cartRegDate = cartRegDate;
	}

	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	
	
	@Override
	public String toString() {
		return "CartDTO [cartNo=" + cartNo + ", memNo=" + memNo + ", productNo=" + productNo + ", cartCnt=" + cartCnt
				+ ", cartRegDate=" + cartRegDate + ", productPrice=" + productPrice + ", productName=" + productName
				+ "]";
	}

	
}

























