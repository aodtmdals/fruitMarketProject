package com.miniproject.model;

public class ChatVO {
	private String memId;
	private String sender;
	private String sendMsg;
	private String sndImg;
	private String sndDate;
	
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
	public String getSendMsg() {
		return sendMsg;
	}
	public void setSendMsg(String sendMsg) {
		this.sendMsg = sendMsg;
	}
	public String getSndImg() {
		return sndImg;
	}
	public void setSndImg(String sndImg) {
		this.sndImg = sndImg;
	}
	public String getSndDate() {
		return sndDate;
	}
	public void setSndDate(String sndDate) {
		this.sndDate = sndDate;
	}
}
