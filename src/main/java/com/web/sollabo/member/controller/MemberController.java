package com.web.sollabo.member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.web.sollabo.member.dto.MemberDTO;
import com.web.sollabo.member.service.MemberService;
import com.web.sollabo.session.name.MemberSession;

@Controller
@RequestMapping("member")
public class MemberController implements MemberSession {
	
	@Autowired
	private MemberService ms;
	
	private ModelAndView modelAndView;
	
	// getMember
	@GetMapping("memberTest")
	public ModelAndView getMember() {
		 modelAndView = new ModelAndView();
		
		modelAndView.setViewName("member/memberTest");
		modelAndView.addObject("list", ms.getMember());
		
		return modelAndView;
	}
	
	
	// 로그인 
	@PostMapping("user_check")
	@ResponseBody
	public int userCheck(MemberDTO memberDTO, HttpSession session) {
		System.out.println("옴" + memberDTO.toString());
		List<Object> list = ms.user_check(memberDTO);
		if((int)list.get(0) == 1 && list.size()==2) {
			session.setAttribute("memId", memberDTO.getMemId());
			session.setAttribute("memAuKeyword", (String)list.get(1));
			//성공하면 메인페이지로 이동
			return 1;
		}
		//실패후 로그인 페이지로
		return 0;
	}
	
	@GetMapping("login")
	public String login() {
		return "member/login";
	}
	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		if(session.getAttribute("memId") != null) {
			session.invalidate();
		}
		return "redirect:/";
	}
	
	
	// 아이디 찾기
	@GetMapping("findId")
	public String findId() {
		return "member/findId";
	}
	
	@PostMapping("findId")
	public String findId(@ModelAttribute MemberDTO memberDTO, RedirectAttributes redirectAttributes) {
		MemberDTO result = ms.findId(memberDTO);
		if(result.getMemId() != null) {		// 아이디가 있으면
			redirectAttributes.addAttribute("memId", result.getMemId());	// 아이디를 보내주고
			return "redirect:/member/findIdResult";		// 아이디 찾기 결과 페이지로 가라
		}
		return "redirect:/member/findId";
	}
	@PostMapping("idCheck")
	@ResponseBody
	public int idCheck(MemberDTO memberDTO) {
		System.out.println(memberDTO.getMemId());
		memberDTO = ms.modifyProfile(memberDTO);
		if(memberDTO ==null) {
			return 1;
		}else {
			return 0;
		}
	}
	
	@GetMapping("findIdResult")	// 아이디 찾기 결과 페이지로 왔으면
	public ModelAndView findIdResult(@RequestParam String memId) { // 아이디를 받아서
		 modelAndView = new ModelAndView();
		modelAndView.addObject("memId", memId); 	// 아이디를 담아주고
		modelAndView.setViewName("member/findIdResult"); // 아이디를 아이디 찾기 결과 페이지로 보낸다
		return modelAndView;
	}
	
	
	// 비밀번호 찾기
	@GetMapping("findPwd")
	public String findPwd() {
		return "member/findPwd";
	}
	
	@PostMapping("findPwd")
	public String findPwd(@ModelAttribute MemberDTO memberDTO, RedirectAttributes redirectAttributes) {
		MemberDTO result = ms.findPwd(memberDTO);
		if(result.getMemPassword() != null) {	// 비밀번호가 있으면
			redirectAttributes.addAttribute("memPassword", result.getMemPassword());	// 비밀번호를 보내주고
			return "redirect:/member/findPwdResult";	// 비밀번호 찾기 결과 페이지로 가라
		}
		return "redirect:/member/findPwd";
	}
	
	@GetMapping("findPwdResult")	// 비밀번호 찾기 결과 페이지로 왔으면
	public ModelAndView findPwdResult(@RequestParam String memPassword) { // 비밀번호를 받아서
		 modelAndView = new ModelAndView();
		modelAndView.addObject("memPassword", memPassword);	// 비밀번호를 담아주고
		modelAndView.setViewName("member/findPwdResult"); // 비밀번호를 비밀번호 찾기 결과 페이지로 보낸다
		return modelAndView;
	}
	
	// 회원가입
	@RequestMapping("join_form")
	public String join_form() {
		return "member/join";
	}

	@PostMapping("join")
	@ResponseBody
	public int join(MemberDTO member) {
		System.out.println(member);
		int result = ms.join(member);
		System.out.println(result);
		if(result == 1) {
			return 1; //성공하면
		}
		return 0; //실패하면
	}

	@GetMapping("join")
	public String join() {
		return "member/join";
	}
	
	
	// 회원정보 수정
	// 로그인된 id의 정보를 가져와서 회원정보 수정 페이지에 보여줌
	@GetMapping("modifyProfile")	
	public ModelAndView updateMember(HttpSession session) { 
		System.out.println("get");
		 modelAndView = new ModelAndView();
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setMemId((String)session.getAttribute("memId"));
		modelAndView.addObject("MemberDTO", ms.modifyProfile(memberDTO));	
		modelAndView.setViewName("member/modifyProfile");
		return modelAndView;
	}
	
	@PostMapping("modifyProfile")	
	@ResponseBody
	public int updateMember(MemberDTO memberDTO) { 
			
		System.out.println(memberDTO);
		int result = ms.updateMember(memberDTO);
		System.out.println(result);
		System.out.println("@@@@@@@@@@@@@@@");
		return result;

		
	}
	// 수정 업데이트 하는 것
	
	
	//--------------------------------
	
	@GetMapping("deleteMember")
	public String deleteMember(@ModelAttribute MemberDTO memberDTO,HttpSession session) {
		memberDTO.setMemId((String)session.getAttribute("memId"));
		int result = ms.deleteMember(memberDTO);		
		if(result==2) {
			session.removeAttribute("memId");
			return "redirect:/";
		}else {
			return "redirect:member/mypage";
		}
	}
	//mypageMenu get
	@GetMapping("mypage")
	public String mypage() {
		return "member/mypage";
	}
	
}
 