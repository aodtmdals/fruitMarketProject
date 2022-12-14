package com.miniproject.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.miniproject.dao.IChatDAO;
import com.miniproject.model.ChatVO;

public class ChatService implements IChatService {
	@Autowired
	@Qualifier("IChatDAO")
	IChatDAO dao;

	@Override
	public void sendMessage(ChatVO msg) {
		dao.sendMessage(msg);
	}
}
