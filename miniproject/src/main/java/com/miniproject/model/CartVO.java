package com.miniproject.model;

public class CartVO {
	private int cartNo;
	private String memId;
	private String fruNo;
	private int cartQty;
	
	// DB에는 없지만
	// Mapper에서 조인해서 결과를 반환할 경우 
	// 받아서 view 페이지 출력할 때 필요한 필드
	private String fruName;
	private int fruPrice;
	private String fruImg;
	private String fruInfo;
	
	public String getFruInfo() {
		return fruInfo;
	}
	public void setFruInfo(String fruInfo) {
		this.fruInfo = fruInfo;
	}
	public int getCartNo() {
		return cartNo;
	}
	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getFruNo() {
		return fruNo;
	}
	public void setFruNo(String fruNo) {
		this.fruNo = fruNo;
	}
	public int getCartQty() {
		return cartQty;
	}
	public void setCartQty(int cartQty) {
		this.cartQty = cartQty;
	}
	public String getFruName() {
		return fruName;
	}
	public void setFruName(String fruName) {
		this.fruName = fruName;
	}
	public int getFruPrice() {
		return fruPrice;
	}
	public void setFruPrice(int fruPrice) {
		this.fruPrice = fruPrice;
	}
	public String getFruImg() {
		return fruImg;
	}
	public void setFruImg(String fruImg) {
		this.fruImg = fruImg;
	}
	
	
}