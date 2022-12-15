package com.miniproject.service;

import java.util.ArrayList;

import com.miniproject.model.CartVO;


public interface ICartService {
	public void insertCart(CartVO vo); // 장바구니에 추가
	public void insertCartClick(String fruNo);// 버튼 클릭시 장바구니에 추가
	public int checkFruInCart(String fruNo, String memId); // 동일 상품 존재 여부 확인 (반환값: 동일 상품 개수)
	public void updateQtyInCart(CartVO vo); //동일 상품이  존재하면 수량 변경
	public ArrayList<CartVO> cartList(String memId); // 현재 회원의 장바구니 목록 반환
	public void deleteCart(String cartNo); // 장바구니 삭제
	
	public void deleteAllCart(String memId);
	// 주문 처리 작업에 필요한 메소드

	public void updateCart(CartVO vo); // 변경된 주문수량 업데이트

	
	// 주문 완료 처리 : 주문 내역 저장


}