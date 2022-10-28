package com.web.sollabo.login.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	@RequestMapping(value="login", method=RequestMethod.GET)
	public String loginGet() {
		return "member/login";
	}
	
	/* 공부하고 수정해야함 */
//	@RequestMapping(value="chkUser")
//	public String chkUser(HttpServletRequest request) {
//		String id = "test";
//		String pwd = "1234";
//		String name = "테스트";
//		String reqId = request.getParameter("id");
//		String reqPwd = request.getParameter("pwd");
//		HttpSession session = request.getSession();
//		if(id.equals(reqId) && pwd.equals(reqPwd) || session.getAttribute("loginUser") != null) {
//			session.setAttribute("loginUser", name);
//			return "login/main";
//		} else {
//			return "redirect:login";
//		}
//	}
	
	@RequestMapping(value="logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		return "member/logout";
	}
	
}
