package com.miniproject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class testController {
	@RequestMapping("/")
	public String index() {
		return "index";
	}

	@RequestMapping("/cart")
	public String cartListView() {
		return "product/cartListView";
	}

	@RequestMapping("/list")
	public String productListlView() {
		return "product/productListView";
	}
	@RequestMapping("/detail")
	public String productDetailView() {
		return "product/productDetailView";
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
