package com.namuthon.namuluck.member.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.namuthon.namuluck.member.model.dao.MemberDao;
import com.namuthon.namuluck.member.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao md;
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public Member loginMember(Member m) {
		return md.loginMember(sqlSession, m);
	}

	@Override
	public int deleteMember(Member m) {
		return md.deleteMember(sqlSession,m);
	}

	@Override
	public int insertMember(Member m) {
		return md.insertMember(sqlSession, m);
	}
	

}
