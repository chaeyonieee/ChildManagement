package com.example.demo.member.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.example.demo.vo.MemberVO;

@Mapper
@Repository("memberDAO")
public interface MemberDAO {

	public int registerInfoNo() throws DataAccessException;

	public void insertMemberWithMap(Map MemRegisterMap);
	public void insertNurserWithMap(Map nurseRegisterMap);
	public MemberVO login(Map loginMap);
}
