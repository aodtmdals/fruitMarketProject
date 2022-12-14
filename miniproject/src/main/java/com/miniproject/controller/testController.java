package com.miniproject.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testController {
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/chat")
	public String chat() {
		return "fruit/chat";
	}

	@RequestMapping("/fruit")
	public String cartListView() {
		return "fruit/cartListView";
	}
	
	@RequestMapping("/detail")
	public String productDetailView() {
		return "fruit/fruitDetailView";
	}

	@RequestMapping("/login")
	public String loginForm() {
		return "member/loginForm";
	}
	@RequestMapping("/join")
	public String joinForm() {
		return "member/joinForm";
	}	

}
