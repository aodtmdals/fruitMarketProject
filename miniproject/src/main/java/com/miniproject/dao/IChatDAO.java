package com.miniproject.dao;

import com.miniproject.model.ChatVO;

public interface IChatDAO {
	public void sendMessage(ChatVO msg);
}
