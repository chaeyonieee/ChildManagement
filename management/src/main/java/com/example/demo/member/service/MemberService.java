package com.example.demo.member.service;


import java.util.Map;



public interface MemberService {

	

	public int registerInfoNo() throws Exception;

	public void insertMemberWithMap(Map MemRegisterMap) throws Exception;

}
