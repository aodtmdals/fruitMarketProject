package com.miniproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class chatController {
	@RequestMapping("/chat")
	public String chat() {
		return "product/chat";
	}
	
}
