package com.web.sollabo.member.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.sollabo.member.dto.MemberDTO;
import com.web.sollabo.mybatis.member.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberMapper memberMapper;
	
	@Override
	public List<MemberDTO> getMember() {
		List<MemberDTO> list = new ArrayList<MemberDTO>();
		list = memberMapper.getMember();
		return list;
	}
	
}
