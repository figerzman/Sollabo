package com.web.sollabo.member.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.sollabo.member.dto.MemberDTO;
import com.web.sollabo.member.dto.UnMemberDTO;
import com.web.sollabo.mybatis.member.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberMapper mapper;
	
	// getMember
	@Override
	public List<MemberDTO> getMember() {
		List<MemberDTO> list = new ArrayList<MemberDTO>();
		list = mapper.getMember();
		return list;
	}
	
	
	// 로그인
	@Override
	public 	List<Object> user_check(MemberDTO memberDTO) {
		MemberDTO dto = mapper.user_check(memberDTO);
		List<Object> list = new ArrayList<Object>();			
			if(dto != null) {				
				list.add(1);
				list.add(dto.getMemAuKeyword());
				return 	list;
			}else {
				list.add(0);
			}
			return list;
	}
	
   
	// 아이디 찾기
	@Override
	public MemberDTO findId(MemberDTO memberDTO) {
		MemberDTO dto = mapper.findId(memberDTO);
		return dto;
	}
   
	
	// 비밀번호 찾기
	@Override
	public MemberDTO findPwd(MemberDTO memberDTO) {
		MemberDTO dto = mapper.findPwd(memberDTO);
		return dto;
	}
   
	
	// 회원가입
	@Override
	public int join(MemberDTO memberDTO) {
		System.out.println(memberDTO);
		MemberDTO mDto = new MemberDTO();	
		mDto = mapper.modifyProfile(memberDTO);
		System.out.println(mDto);
		if(mDto == null) {
			memberDTO.setMemNickname("a");
			memberDTO.setMemProfile("a");
			return mapper.join(memberDTO);
		}else {
			return 0;
		}
	}
	
	
	// 회원정보 수정 값 보여주기
	@Override
	public MemberDTO modifyProfile(MemberDTO memberDTO) {
		MemberDTO dto = mapper.modifyProfile(memberDTO);
		return dto;
	}

	@Override
	public MemberDTO updateMember(MemberDTO memberDTO) {
		return mapper.updateMember(memberDTO);
	}


	@Override
	public int deleteMember(MemberDTO memberDTO) {	
		memberDTO =  mapper.modifyProfile(memberDTO);
		UnMemberDTO um = new UnMemberDTO();
		um.setUnMemId(memberDTO.getMemId());
		um.setUnMemEmail(memberDTO.getMemEmail());
		um.setUnMemPassword(memberDTO.getMemPassword());
		um.setUnMemName(memberDTO.getMemName());
		um.setUnMemProfile(memberDTO.getMemProfile());
		um.setUnMemAddr1(memberDTO.getMemAddr1());
		um.setUnMemAddr2(memberDTO.getMemAddr2());
		um.setUnMemAddr3(memberDTO.getMemAddr3());
		um.setUnMemTel(memberDTO.getMemTel());
		um.setUnMemNickname(memberDTO.getMemNickname());
		um.setUnMemRegDate(memberDTO.getMemRegDate());
		um.setUnMemGrade(memberDTO.getMemGrade());
		um.setUnMemLoginFaleCnt(memberDTO.getMemLoginFaleCnt());
		um.setUnMemAuKeyword(memberDTO.getMemAuKeyword());
		int result = mapper.unMember(um); 		
		// 탈퇴 테이블 인서트 완료 되면 멤버 삭제로 감
		if(result == 1) {
			result = mapper.deleteMember(memberDTO);
			//모두 성공하면 2 실패하면 0
			if(result==1) {
				result = 2;			
			}else {
				result = 0;				
			}
		}else {
			//실패하면 result 0으로 나옴
			mapper.unDeleteMember(memberDTO);
		}
		return result;
	}
	 
}

