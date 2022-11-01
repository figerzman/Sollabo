package com.web.sollabo.cart.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.web.sollabo.member.dto.MemberDTO;

public class CartInterceptor implements HandlerInterceptor{

	/*
	 * @Override public boolean preHandle(HttpServletRequest request,
	 * HttpServletResponse response, Object handler) throws Exception {
	 * 
	 * HttpSession session = request.getSession();
	 * 
	 * MemberDTO mto = (MemberDTO)session.getAttribute("member");
	 * 
	 * if(mto == null) { response.sendRedirect("../"); return false; } else { return
	 * true; }
	 * 
	 * }
	 */
}
