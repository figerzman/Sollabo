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
	
	@GetMapping("memberTest")
	public ModelAndView getMember() {
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("member/memberTest");
		modelAndView.addObject("list", ms.getMember());
		
		return modelAndView;
	}
	
	// db
	@Autowired
	private MemberService ms;
	
	private ModelAndView modelAndView;
	
	// 로그인
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
	public String findId(@ModelAttribute MemberDTO memberDTO, RedirectAttributes redirectAttributes) {
		MemberDTO result = ms.findId(memberDTO);
		if(result.getMemId() != null) {		// 아이디가 있으면
			redirectAttributes.addAttribute("memId", result.getMemId());	// 아이디를 보내주고
			return "redirect:/member/findIdResult";		// 아이디 찾기 결과 페이지로 가라
		}
		return "redirect:/member/findId";
	}
	
	@GetMapping("/findIdResult")	// 아이디 찾기 결과 페이지로 왔으면
	public ModelAndView findIdResult(@RequestParam String memId) { // 아이디를 받아서
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("memId", memId); 	// 아이디를 담아주고
		modelAndView.setViewName("member/findIdResult"); // 아이디를 아이디 찾기 결과 페이지로 보낸다
		return modelAndView;
	}
	
	// 비밀번호 찾기
	@PostMapping("/findPwd")
	public String findPwd(@ModelAttribute MemberDTO memberDTO, RedirectAttributes redirectAttributes) {
		MemberDTO result = ms.findPwd(memberDTO);
		if(result.getMemPassword() != null) {	// 비밀번호가 있으면
			redirectAttributes.addAttribute("memPassword", result.getMemPassword());	// 비밀번호를 보내주고
			return "redirect:/member/findPwdResult";	// 비밀번호 찾기 결과 페이지로 가라
		}
		return "redirect:/member/findPwd";
	}
	
	/* 임시 비밀번호 메일 발송 뺌 */
	@GetMapping("/findPwdResult")	// 비밀번호 찾기 결과 페이지로 왔으면
	public ModelAndView findPwdResult(@RequestParam String memPassword) { // 비밀번호를 받아서
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("memPassword", memPassword);	// 비밀번호를 담아주고
		modelAndView.setViewName("member/findPwdResult"); // 비밀번호를 비밀번호 찾기 결과 페이지로 보낸다
		return modelAndView;
	}
	
	// 회원가입
	@RequestMapping("/join_form")
	public String join_form() {
		return "member/join";
	}
	
	@RequestMapping("/join")
	public String join(MemberDTO member) {
		int result = ms.join(member);
		if(result == 1) {
			return "redirect:joinResult";
		}
		return "redirect:join_form";
	}
	
	@GetMapping("/join")
	public String join() {
		return "member/join";
	}
	
	@GetMapping("/joinResult")
	public String joinResult() {
		return "member/joinResult";
	}
	
	//--------------------------------
	
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
	
	@GetMapping("/findPwd")
	public String findPwd() {
		return "member/findPwd";
	}
	
	@GetMapping("/sendPwd")
	public String sendPwd() {
		return "member/sendPwd";
	}
	
}
 