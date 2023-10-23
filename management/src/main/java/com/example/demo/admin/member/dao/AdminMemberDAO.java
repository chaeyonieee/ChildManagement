package com.example.demo.admin.member.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import org.springframework.stereotype.Repository;
import com.example.demo.vo.MemberVO;


@Mapper
@Repository("adminMemberDAO")
public interface AdminMemberDAO {
	



	public List<MemberVO> adminMemberApprovalList(Map memberMap);
	public MemberVO selectMemberByMemberNo(int memberNo);


}
