package com.miniproject.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.miniproject.model.ChatVO;

@Controller
public class chatController {
//	@Autowired
//	ChatService service;
	
	//chat 페이지로 넘어가기
	@RequestMapping("/chat")
	public String chat() {
		return "product/chat";
	}
	
//	@RequestMapping("/chat/send")
//	public String sendMessage(HttpSession session,
//							  ChatVO vo) {
//
//		
//
//		String memId = (String)session.getAttribute("sid");
//		vo.setMemId(memId);
//		
//		return "";
//	}
	
	
}
