package com.example.demo.admin.member.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.admin.member.dao.AdminMemberDAO;
import com.example.demo.vo.MemberVO;

@Service("adminMemberService")
public class AdminMemberServiceIml implements AdminMemberService {
	@Autowired
	private AdminMemberDAO adminMemberDAO;
	
	@Override
	public List<MemberVO> adminMemberApprovalList(Map memberMap) {
		return adminMemberDAO.adminMemberApprovalList(memberMap);
	}

	
}
