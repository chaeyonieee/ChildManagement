package com.example.demo.member.service;


import java.util.Map;

import com.example.demo.vo.MemberVO;



public interface MemberService {

	

	public int registerInfoNo() throws Exception;
	public void insertMemberWithMap(Map MemRegisterMap) throws Exception;
	public void insertNurserWithMap(Map nurseRegisterMap) throws Exception;
	public MemberVO login(Map loginMap);
}
