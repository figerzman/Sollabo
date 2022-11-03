package com.web.sollabo.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.sollabo.member.dto.MemberDTO;
import com.web.sollabo.mybatis.admin.AdminMapper;
import com.web.sollabo.mybatis.member.MemberMapper;
import com.web.sollabo.order.dto.OrderDTO;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;

	@Autowired
	private MemberMapper memberMapper;

	@Override
	public List<MemberDTO> adminUserListGet() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String adminOrderUpdateGet() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String adminProductUpdateGet() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String adminQAGet() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String adminNoticeGet() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String adminLogoutGet() {
		// TODO Auto-generated method stub
		return null;
	}



}
