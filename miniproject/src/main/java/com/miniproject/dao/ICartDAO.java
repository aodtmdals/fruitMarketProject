package com.miniproject.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.miniproject.model.CartVO;
import com.miniproject.model.MemberVO;
import com.miniproject.model.OrderInfoVO;



public interface ICartDAO {
	// 장바구니 및 주문관련 작업 처리 시 필요한 메소드들 (기능들)
	public void insertCart(CartVO vo); // 장바구니에 추가
	public void insertCartClick(String fruNo); // 버튼 클릭시 장바구니 추가
	public int checkFruInCart(HashMap<String, Object> map); // 동일 상품 존재 여부 확인 (반환값: 동일 상품 개수)
	public void updateQtyInCart(CartVO vo); //동일 상품이  존재하면 수량 변경
	public ArrayList<CartVO> cartList(String memId); // 현재 회원의 장바구니 목록 반환
	public void deleteCart(String cartNo); // 장바구니 삭제
	
	public void deleteAllCart(String memId);
	

	
	// 주문 처리 작업에 필요한 메소드
		public MemberVO getMemberInfo(String memId); // 주문서에 출력할 회원 정보 알아오기
		public void updateCart(CartVO vo);
		
		// 주문 완료 처리 : 주문 내역 저장
		public void insertOrderInfo(OrderInfoVO ordInfoVo); // 주문 정보 저장
		public void insertOrderFruit(HashMap<String, Object> map); // 주문 상품 내용 저장
		public void deleteCartAfterOrder(String memId);// 주문 후 장바구니 내용 비우기(삭제)
}



