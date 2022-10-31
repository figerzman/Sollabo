package com.web.sollabo.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.sollabo.member.dto.MemberDTO;
import com.web.sollabo.mybatis.admin.AdminMapper;
import com.web.sollabo.mybatis.member.MemberMapper;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminMapper adminMapper;
	
	@Autowired
	private MemberMapper memberMapper;
	
	@Override
	public List<MemberDTO> adminUserListGet() {
		return memberMapper.getMember();
	}

	@Override
	public String adminOrderUpdateGet() {
		return null;
	}

	@Override
	public String adminProductUpdateGet() {
		return null;
	}

	@Override
	public String adminQAGet() {
		return null;
	}

	@Override
	public String adminNoticeGet() {
		return null;
	}

	@Override
	public String adminLogoutGet() {
		return null;
	}

}
