package com.miniproject.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class chatController {
	
	//chat 페이지로 넘어가기
	@RequestMapping("/chat")
	public String chat() {
		return "product/chat";
	}
}
