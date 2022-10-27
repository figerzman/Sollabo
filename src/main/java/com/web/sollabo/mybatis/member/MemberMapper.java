package com.web.sollabo.mybatis.member;

import java.util.List;

import com.web.sollabo.member.dto.MemberDTO;

public interface MemberMapper {
	
	public List<MemberDTO> getMember();

}
