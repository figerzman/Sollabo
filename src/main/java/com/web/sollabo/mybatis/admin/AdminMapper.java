package com.web.sollabo.mybatis.admin;

import java.util.List;

import com.web.sollabo.member.dto.MemberDTO;

public interface AdminMapper {
	public List<MemberDTO> adminUserListGet();
	public String adminOrderUpdateGet();
	public String adminProductUpdateGet();
	public String adminQAGet();
	public String adminNoticeGet();
	public String adminLogoutGet();
}
