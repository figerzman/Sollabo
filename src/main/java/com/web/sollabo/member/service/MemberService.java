package com.web.sollabo.member.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.web.sollabo.member.dto.MemberDTO;

//로그인 1111111111
public interface MemberService {
   
   public List<MemberDTO> getMember();
   
   public int user_check(HttpServletRequest request);
   public int findId(MemberDTO memberDTO);

}