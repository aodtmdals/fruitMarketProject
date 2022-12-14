package com.miniproject.model;

import java.sql.Date;

public class ChatVO {
	private String memId;
	private String sender;
	private String sndImg;
	private String sendMsg;
	private Date sendDate;
	
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getSndImg() {
		return sndImg;
	}
	public void setSndImg(String sndImg) {
		this.sndImg = sndImg;
	}
	public String getSendMsg() {
		return sendMsg;
	}
	public void setSendMsg(String sendMsg) {
		this.sendMsg = sendMsg;
	}
	public Date getSendDate() {
		return sendDate;
	}
	public void setSendDate(Date sendDate) {
		this.sendDate = sendDate;
	}
		
}
