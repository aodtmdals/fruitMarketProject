package com.miniproject.controller;


import java.util.ArrayList;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.miniproject.model.CartVO;

import com.miniproject.service.CartService;




@Controller
public class CartController {
	@Autowired
	private CartService service;
	
	// 장바구니에 추가
	@RequestMapping("/fruit/insertCart")
	public String insertCart(CartVO vo, HttpSession session) {
		// memId에 저장
		// 로그인 성공 시 설정한 세션 sid 값 가져와서 사용
		String memId = (String)session.getAttribute("sid");
		vo.setMemId(memId); // vo의 memId 값 설정
		
		
		// (1) 동일 상품이 존재하는 지 확인 : 동일 상품 개수 반환
		int count = service.checkFruInCart(vo.getFruNo(), memId);	
		
		if(count == 0) { // (2) 동일 상품이 존재하지 않으면(count==0) 장바구니에 추가
			service.insertCart(vo); 
		} else { // (3) 동일 상품이 존재하면 주문수량 변경
			service.updateQtyInCart(vo);
		}
		
		// 장바구니 목록 출력 요청 포워딩
		return "redirect:/fruit/cartList";
	}

 	@RequestMapping("/fruit/insertCart/{fruNo}")
 	public String insertCartClick(@PathVariable String fruNo, CartVO vo, HttpSession session) {

		String memId = (String)session.getAttribute("sid");
		vo.setMemId(memId); // vo의 memId 값 설정
		
		vo.setFruNo(fruNo);
		vo.setCartQty(1);
		
		service.insertCart(vo);
 		
 		
		// 장바구니 목록 출력 요청 포워딩
		return "redirect:/fruit/cartList";
 	}
	
	// 장바구니 목록 출력 : 현재 사용자의 장바구니에 있는 모든 상품 출력
	@RequestMapping("/fruit/cartList")
	public String cartList(Model model, HttpSession session) {
		// cart 테이블에서 현재 로그인 한 회원에 해당되는 내용만 출력하기 위해
		// memId 필요 : session의 sid 사용
		String memId = (String) session.getAttribute("sid");
		ArrayList<CartVO> cartList = service.cartList(memId);
		
		
		model.addAttribute("cartList", cartList);
		return "fruit/cartListView";
	}
	
	// 장바구니 삭제 : 배열로 만들어진 cartNo
	@ResponseBody
	@RequestMapping("/fruit/deleteCart")
	public int deleteCart(@RequestParam("chbox[]") ArrayList<String> chkArr) {
		int result = 0; 
		
		// 배열에서 cartNo 추출해서 해당되는 상품 삭제
		if(chkArr != null) {
			for(String carNo : chkArr) {
				service.deleteCart(carNo);
			}
			
			result = 1; // 성공
		}
		
		return result;
	}
	
	
	@RequestMapping("/fruit/deleteAllCart")
	public String delete(HttpSession session) {
	String memId= (String)session.getAttribute("sid");
	service.deleteAllCart(memId);
	

	return "redirect:/fruit/cartList";
	}
	
	
}





