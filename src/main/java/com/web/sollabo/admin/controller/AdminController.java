package com.web.sollabo.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.web.sollabo.admin.service.AdminService;
import com.web.sollabo.member.dto.MemberDTO;
import com.web.sollabo.member.service.MemberService;
import com.web.sollabo.notice.dto.NoticeDTO;

@Controller
@RequestMapping("admin")
public class AdminController {
	
	@Autowired
	private MemberService memberService;
	@Autowired
	private AdminService adminService;
	
	private ModelAndView modelAndView;
	
	/* 관리자 페이지 메뉴 페이지 이동 get 방식*/
	@RequestMapping(value="adminMenuList", method=RequestMethod.GET)
	public String adminMenuListGet() {
		return "admin/adminMenuList";
	}

	/* 관리자 고객 관리 리스트 페이지 이동 get 방식*/
	@RequestMapping(value="adminMemList", method=RequestMethod.GET)
	public ModelAndView adminUserListGet() {
		modelAndView = new ModelAndView();
		
		//memberService 재사용 하여 고객 검색
		modelAndView.addObject("memberList",memberService.getMember());
		modelAndView.setViewName("admin/adminMemList");
		
		return modelAndView;
	}	

	/* 관리자 회원 정보 변경 페이지 이동 get 방식 */
	@RequestMapping(value="adminMemUpdate", method=RequestMethod.GET)
	public String adminMemUpdateGet(@RequestParam int memNo) {
		return "admin/adminMemUpdate";
	}
	
	/* 관리자 회원 정보 변경 값 받아와서 처리 post 방식 */
	@RequestMapping(value="adminMemUpdate", method=RequestMethod.POST)
	@ResponseBody
	public String adminMemUpdatePost(MemberDTO memberDTO) {
		
		return "admin/adminMemUpdate";
	}
		
	/* 상품 페이지 변경 관리 get 방식*/
	@RequestMapping(value="adminProductUpdate", method=RequestMethod.GET)
	public String adminProductUpdateGet() {
		return "admin/adminProductUpdate";
	}
	
	/* 상품 페이지 변경 관리 post 방식*/
	@RequestMapping(value="adminProductUpdate", method=RequestMethod.POST)
	@ResponseBody
	public String adminProductUpdatePost(NoticeDTO noticeDTO) {
		return "admin/adminProductUpdate";
	}

	/* 회원 구매내역 리스트 get 방식*/
	@RequestMapping(value="adminOrderList", method=RequestMethod.GET)
	public String adminOrderUpdateGet() {
		return "admin/adminOrderList";
	}

	/* QnA 게시판 리스트 get 방식*/
	@RequestMapping(value="adminQA", method=RequestMethod.GET)
	public String adminQAGet() {
		return "admin/adminQA";
	}
	
	/* 관리자 공지사항 리스트 get 방식 */
	@RequestMapping(value="adminNotice", method=RequestMethod.GET)
	@ResponseBody
	public String adminNoticeGet(NoticeDTO noticeDTO) {
		return "admin/adminNotice";
	}
	
	/* 공지사항 수정 post 방식 */
	@RequestMapping(value="adminNoticeUpdate", method=RequestMethod.POST)
	@ResponseBody
	public String adminNoticeUpdatePost(NoticeDTO noticeDTO) {
		return "admin/adminNoticeUpdate";
	}

	/* 공지사항 수정 get 방식 */
	@RequestMapping(value="adminNoticeUpdate", method=RequestMethod.GET)
	@ResponseBody
	public String adminNoticeUpdateGet(NoticeDTO noticeDTO) {
		return "admin/adminNoticeUpdate";
	}

	/* 관리자 로그아웃 get */
	@RequestMapping(value="adminLogout", method=RequestMethod.GET)
	public String adminLogoutGet() {
		return "admin/adminLogout";
	}
	
	
}
