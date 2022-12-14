package com.web.sollabo.product.dto;

import java.sql.Timestamp;

public class ProductDTO {
	
	/*product 테이블 + division/category*/
	private int productNo;
	private String categoryCode;
	private String categoryName;
	private String divisionCode;
	private String divisionName;
	private String productName;
	private String productImage;
	private String productContent;
	private int productCnt;
	private int productPrice;
	private Timestamp productRegDate;
	private String icon;
	
	/*option 테이블*/
	private String shcolor;
	private String shsize;
	
	/*reply 테이블*/
	private int productReplyNo;
	private String productReplyWriter;
	private String productReplyContent;
	private String productReplyFile;
	private Timestamp productReplyRegDate;
	private int productReplyDel;
	
	
	public int getProductReplyNo() {
		return productReplyNo;
	}
	public void setProductReplyNo(int productReplyNo) {
		this.productReplyNo = productReplyNo;
	}
	public String getProductReplyWriter() {
		return productReplyWriter;
	}
	public void setProductReplyWriter(String productReplyWriter) {
		this.productReplyWriter = productReplyWriter;
	}
	public String getProductReplyContent() {
		return productReplyContent;
	}
	public void setProductReplyContent(String productReplyContent) {
		this.productReplyContent = productReplyContent;
	}
	
	
	public String getShcolor() {
		return shcolor;
	}
	public void setShcolor(String shcolor) {
		this.shcolor = shcolor;
	}
	public String getShsize() {
		return shsize;
	}
	public void setShsize(String shsize) {
		this.shsize = shsize;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public String getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}
	public String getDivisionCode() {
		return divisionCode;
	}
	public void setDivisionCode(String divisionCode) {
		this.divisionCode = divisionCode;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	public String getProductContent() {
		return productContent;
	}
	public void setProductContent(String productContent) {
		this.productContent = productContent;
	}
	public int getProductCnt() {
		return productCnt;
	}
	public void setProductCnt(int productCnt) {
		this.productCnt = productCnt;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public Timestamp getProductRegDate() {
		return productRegDate;
	}
	public void setProductRegDate(Timestamp productRegDate) {
		this.productRegDate = productRegDate;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getDivisionName() {
		return divisionName;
	}
	public void setDivisionName(String divisionName) {
		this.divisionName = divisionName;
	}
	public String getProductReplyFile() {
		return productReplyFile;
	}
	public void setProductReplyFile(String productReplyFile) {
		this.productReplyFile = productReplyFile;
	}
	public Timestamp getProductReplyRegDate() {
		return productReplyRegDate;
	}
	public void setProductReplyRegDate(Timestamp productReplyRegDate) {
		this.productReplyRegDate = productReplyRegDate;
	}
	public int getProductReplyDel() {
		return productReplyDel;
	}
	public void setProductReplyDel(int productReplyDel) {
		this.productReplyDel = productReplyDel;
	}
	
	@Override
	public String toString() {
		return "ProductDTO [productNo=" + productNo + ", categoryCode=" + categoryCode + ", categoryName="
				+ categoryName + ", divisionCode=" + divisionCode + ", divisionName=" + divisionName + ", productName="
				+ productName + ", productImage=" + productImage + ", productContent=" + productContent
				+ ", productCnt=" + productCnt + ", productPrice=" + productPrice + ", productRegDate=" + productRegDate
				+ ", icon=" + icon + ", shcolor=" + shcolor + ", shsize=" + shsize + ", productReplyNo="
				+ productReplyNo + ", productReplyWriter=" + productReplyWriter + ", productReplyContent="
				+ productReplyContent + ", productReplyFile=" + productReplyFile + ", productReplyRegDate="
				+ productReplyRegDate + ", productReplyDel=" + productReplyDel + "]";
	}
	
}
