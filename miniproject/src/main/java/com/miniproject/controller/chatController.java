package com.miniproject.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class chatController {
//	@Autowired
//	ChatService service;
	
	//chat 페이지로 넘어가기
	@RequestMapping("/chat")
	public String chat() {
		return "fruit/chat";
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
