package com.miniproject.service;

import java.util.HashMap;


import com.miniproject.model.MemberVO;



public interface IMemberService {
	
	public String loginCheck(HashMap<String, Object> map);
	public void insertMember(MemberVO vo);
	
}
