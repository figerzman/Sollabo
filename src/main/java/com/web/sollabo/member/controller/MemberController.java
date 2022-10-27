package com.web.sollabo.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.web.sollabo.member.service.MemberService;

@Controller
@RequestMapping("member")
public class MemberController {
	
	@GetMapping("/login")
	public String login() {
		return "member/login";
	}
	
	@GetMapping("/join")
	public String join() {
		return "member/join";
	}
	
	@GetMapping("/joinResut")
	public String joinResult() {
		return "member/joinResult";
	}
	
	@GetMapping("/mypage")
	public String mypage() {
		return "member/mypage";
	}
	
	@GetMapping("/delete")
	public String delete() {
		return "member/delete";
	}
	
	@GetMapping("/modifyProfile")
	public String modifyProfile() {
		return "member/modifyProfile";
	}
	
	@GetMapping("/findId")
	public String findId() {
		return "member/findId";
	}
	
	@GetMapping("/findIdResult")
	public String findIdResult() {
		return "member/findIdResult";
	}
	
	@GetMapping("/findPwd")
	public String findPwd() {
		return "member/findPwd";
	}
	
	@GetMapping("/sendPwd")
	public String sendPwd() {
		return "member/sendPwd";
	}
	
	@GetMapping("/findPwdResult")
	public String findPwdResult() {
		return "member/findPwdResult";
	}
	
	
	@Autowired
	MemberService memberService;
	
	@GetMapping("memberTest")
	public ModelAndView getMember() {
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("member/memberTest");
		modelAndView.addObject("list", memberService.getMember());
		
		return modelAndView;
	}
	
}
 