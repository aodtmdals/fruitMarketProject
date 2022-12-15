package com.miniproject.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.miniproject.dao.ICartDAO;
import com.miniproject.model.CartVO;
import com.miniproject.model.FruitVO;


@Service
public class CartService implements ICartService {
	// MyBatis 사용하는 경우
	@Autowired
	@Qualifier("ICartDAO")
	private ICartDAO dao;

	@Override
	public void insertCart(CartVO vo) {
		dao.insertCart(vo);
	}

	@Override
	public int checkFruInCart(String fruNo, String memId) {
		// 장바구니에 동일 상품이 하는지 여부 확인
		// 존재하면 mapper로부터 동일 상품 개수 반환 받아서 
		// 컨트롤러에게 반환
		// 전달받은 prdNo와 memId를 map에 넣어서 Mapper에게 전달
		// 매개변수가 2개 이상인 경우에는 HashMap으로 전달해야 하기 때문
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("fruNo", fruNo);
		map.put("memId", memId);
		return dao.checkFruInCart(map);
	}

	@Override
	public void updateQtyInCart(CartVO vo) {
		dao.updateQtyInCart(vo);
	}

	@Override
	public ArrayList<CartVO> cartList(String memId) {		
		return dao.cartList(memId);
	}

	@Override
	public void deleteCart(String cartNo) {
		dao.deleteCart(cartNo);
	}



	@Override
	public void updateCart(CartVO vo) {
		dao.updateCart(vo);
	}

	@Override
	public void deleteAllCart(String memId) {
		dao.deleteAllCart(memId);
		
	}

	@Override
	public void insertCartClick(String fruNo) {
		// TODO Auto-generated method stub
		dao.insertCartClick(fruNo);
	}

	

	



}