package com.web.sollabo.member.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.web.sollabo.member.dto.MemberDTO;

public interface MemberService {
	
	public List<MemberDTO> getMember();
	
	public 	List<Object> user_check(MemberDTO memberDTO);
	public MemberDTO findId(MemberDTO memberDTO);
	public MemberDTO findPwd(MemberDTO memberDTO);
	public int join(MemberDTO memberDTO);
	public MemberDTO modifyProfile(MemberDTO memberDTO);
	public int updateMember(MemberDTO memberDTO);
	public int deleteMember(MemberDTO memberDTO);
}