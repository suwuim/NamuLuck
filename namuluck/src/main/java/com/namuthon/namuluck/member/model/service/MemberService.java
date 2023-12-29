package com.namuthon.namuluck.member.model.service;

import java.util.ArrayList;

import com.namuthon.namuluck.member.model.vo.Member;

public interface MemberService {
//서비스 설계하는 곳
	Member loginMember(Member m);

	int deleteMember(Member m);

	int insertMember(Member m);
	
}
