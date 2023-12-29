package com.namuthon.namuluck.member.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.namuthon.namuluck.member.model.vo.Member;

@Repository
public class MemberDao {
	
	public Member loginMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.selectOne("memberMapper.loginMember",m);
	}

	public int deleteMember(SqlSessionTemplate sqlSession, Member m) {
		return sqlSession.delete("memberMapper.deleteMember", m);
	}
	
	public int insertMember(SqlSessionTemplate sqlSession,Member m) {
		return sqlSession.insert("memberMapper.insertMember", m);
	}
	

}
