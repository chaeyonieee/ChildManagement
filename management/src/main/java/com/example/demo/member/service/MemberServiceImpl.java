package com.example.demo.member.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.member.dao.MemberDAO;
import com.example.demo.vo.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;

	

	@Override
	public int registerInfoNo() throws Exception {
		int MemberNo = memberDAO.registerInfoNo();
		return MemberNo;
	}


	

	@Override
	@Transactional
	public void insertMemberWithMap(Map MemRegisterMap) throws Exception{
		memberDAO.insertMemberWithMap(MemRegisterMap);
	}
	@Override
	@Transactional
	public void insertNurserWithMap(Map nurseRegisterMap) throws Exception{
		memberDAO.insertNurserWithMap(nurseRegisterMap);
	}

	

	

}
