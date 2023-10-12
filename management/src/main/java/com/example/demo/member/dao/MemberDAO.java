package com.example.demo.member.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

@Mapper
@Repository("memberDAO")
public interface MemberDAO {

	public int registerInfoNo() throws DataAccessException;

	public void insertMemberWithMap(Map MemRegisterMap);

}
