package com.web.sollabo.cart.dto;


 
import java.text.SimpleDateFormat;

import oracle.sql.TIMESTAMP;

/*CREATE TABLE CART (
	   CART_NO   NUMBER(5)   NOT NULL,
	   MEM_NO   NUMBER(5)   NOT NULL,
	   PRODUCT_NO   NUMBER(5)   NOT NULL,
	   CART_CNT   NUMBER(5)   NOT NULL   ,
	   CART_REG_DATE   DATE      DEFAULT SYSDATE
);*/



public class CartDTO {
	
	
	private int cart_no;
	private int mem_no;
	private int product_no;
	private int cart_cnt;
	private String cart_reg_date;
	
	// 상품 데이터
	private int product_order_count;
	
	private int product_price;
	private int product_name;
	
	// 가격 표시
	
	/*
	 * private int saleprice;
	 * 
	 * private int totalprice;
	 */
	
	
	
	
	
	public int getCart_no() {
		return cart_no;
	}
	public void setCart_no(int cart_no) {
		this.cart_no = cart_no;
	}
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public int getProduct_no() {
		return product_no;
	}
	public void setProduct_no(int product_no) {
		this.product_no = product_no;
	}
	public int getCart_cnt() {
		return cart_cnt;
	}
	public void setCart_cnt(int cart_cnt) {
		this.cart_cnt = cart_cnt;
	}
	public String getCart_reg_date() {
		return cart_reg_date;
	}
	/*
	 * public void setCart_reg_date(String cart_reg_date) { this.cart_reg_date =
	 * cart_reg_date; }
	 */
	private void setCart_reg_date(TIMESTAMP Cart_reg_date) {
		SimpleDateFormat format = new SimpleDateFormat("YYYY-MM-dd HH:mm:ss");
		this.cart_reg_date = format.format(Cart_reg_date);

	}
	public int getproduct_order_count() {
		return  product_order_count;
	}
	public void setproduct_order_count(int  product_order_count) {
		this. product_order_count =  product_order_count;
	}
	
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public int getProduct_name() {
		return product_name;
	}
	public void setProduct_name(int product_name) {
		this.product_name = product_name;
	}
	
	
	
	
	
	
}

























