package com.miniproject.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.miniproject.model.ChatVO;
import com.miniproject.service.ChatService;

@Controller
public class chatController {
	@Autowired
	ChatService service;
	
	//chat 페이지로 넘어가기
	@RequestMapping("/chat")
	public String chat() {
		return "product/chat";
	}
	
	//채팅 내용 저장
	@RequestMapping("/chat/sendMessage")
	public String sendMessage(ChatVO msg, HttpSession session) {
		String memId = (String)session.getAttribute("sid");
		msg.setMemId(memId);
		
		service.sendMessage(msg);		
		// 수정된 데이터 저장 후 상품 조회 화면으로 포워딩  
		return "redirect:/product/productListAll"; // -> 위에 있는 @RequestMapping("/product/productListAll")
	}
	
}
