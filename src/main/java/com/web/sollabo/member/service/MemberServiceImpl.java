package com.web.sollabo.member.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.sollabo.member.dto.MemberDTO;
import com.web.sollabo.mybatis.member.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberMapper mapper;
	
	// 로그인
	@Override
	public int user_check(HttpServletRequest request) {
		MemberDTO dto = mapper.user_check(request.getParameter("memId"));
		if(dto != null) {
			if(request.getParameter("memPassword").equals(dto.getMemPassword())) {
				return 0;
			}
		}
		return 1;
	}
	
	// 아이디 찾기
	@Override
	public MemberDTO findId(MemberDTO memberDTO) {
		MemberDTO dto = mapper.findId(memberDTO);
		return dto;
	}
	
	// 비밀번호 찾기
	@Override
	public MemberDTO findPwd(MemberDTO memberDTO) {
		MemberDTO dto = mapper.findPwd(memberDTO);
		return dto;
	}
	
	// 회원가입
	@Override
	public int join(MemberDTO member) {
		try {
			return mapper.join(member);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
	}
	
	
	@Override
	public List<MemberDTO> getMember() {
		List<MemberDTO> list = new ArrayList<MemberDTO>();
		list = mapper.getMember();
		return list;
	}
	
}
