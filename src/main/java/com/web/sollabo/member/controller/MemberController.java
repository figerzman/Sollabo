package com.web.sollabo.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.web.sollabo.member.dto.MemberDTO;
import com.web.sollabo.member.service.MemberService;
import com.web.sollabo.session.name.MemberSession;

@Controller
@RequestMapping("member")
public class MemberController implements MemberSession {
	
	// db
	@Autowired
	private MemberService ms;
	
	private ModelAndView modelAndView;
	
	// 로그인 1111111111
	@PostMapping("/user_check")
	public String userCheck(HttpServletRequest request, HttpSession session) {
		System.out.println("re=" + request.getParameter("memId"));
		int result = ms.user_check(request);
		if(result == 0) {
			session.setAttribute("memId", request.getParameter("memId"));
			return "redirect:/";
		}
		return "redirect:/member/login";
	}
	
	@GetMapping("/login")
	public String login() {
		return "member/login";
	}
	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		if(session.getAttribute("loginUser") != null) {
			session.invalidate();
		}
		return "redirect:/index";
	}
	
	// 아이디 찾기
	@PostMapping("/findId")
	public String findId(@ModelAttribute MemberDTO memberDTO,RedirectAttributes redirectAttributes ) {
		int result = ms.findId(memberDTO);
		System.out.println(result);
		if(result == 0) {
			System.out.println(memberDTO.getMemEmail());
			redirectAttributes.addAttribute("memberDTO",memberDTO);
			return "redirect:/member/findIdResult";
		}
		return "redirect:/member/findId";
	}
	
	
	@GetMapping("memberTest")
	public ModelAndView getMember() {
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("member/memberTest");
		modelAndView.addObject("list", ms.getMember());
		
		return modelAndView;
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
	
}
 