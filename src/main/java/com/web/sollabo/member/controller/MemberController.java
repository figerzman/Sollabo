package com.web.sollabo.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	
	
	
	
}
 