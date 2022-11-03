package com.web.sollabo.mybatis.member;

import java.util.List;

import com.web.sollabo.member.dto.MemberDTO;

public interface MemberMapper {
	
	public List<MemberDTO> getMember();
	
	public MemberDTO user_check(String memId);
	public MemberDTO findId(MemberDTO memberDTO);
	public MemberDTO findPwd(MemberDTO memberDTO);
	public int join(MemberDTO member);

}
