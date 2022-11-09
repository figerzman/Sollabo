package com.web.sollabo.mybatis.member;

import java.util.List;

import com.web.sollabo.member.dto.MemberDTO;
import com.web.sollabo.member.dto.UnMemberDTO;

public interface MemberMapper {
	
	public List<MemberDTO> getMember();
	public MemberDTO user_check(MemberDTO memberDTO);
	public MemberDTO findId(MemberDTO memberDTO);
	public MemberDTO findPwd(MemberDTO memberDTO);
	public int join(MemberDTO memberDTO);
	public MemberDTO modifyProfile(MemberDTO memberDTO);
	public MemberDTO updateMember(MemberDTO memberDTO);
	public int deleteMember(MemberDTO memberDTO);
	public int unMember(UnMemberDTO unMemberDTO);
	public int unDeleteMember(MemberDTO memberDTO);
}
