package com.example.demo.admin.member.service;

import java.util.List;
import java.util.Map;

import com.example.demo.vo.MemberVO;


public interface AdminMemberService {

	List<MemberVO> adminMemberApprovalList(Map memberMap);

}
