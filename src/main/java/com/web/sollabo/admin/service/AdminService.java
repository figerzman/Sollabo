package com.web.sollabo.admin.service;

import java.util.List;import com.web.sollabo.member.dto.MemberDTO;

public interface AdminService {
	
	public List<MemberDTO> adminUserListGet();
	public String adminOrderUpdateGet();
	public String adminProductUpdateGet();
	public String adminQAGet();
	public String adminNoticeGet();
	public String adminLogoutGet();
}
