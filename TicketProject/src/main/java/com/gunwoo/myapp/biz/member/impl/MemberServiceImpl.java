package com.gunwoo.myapp.biz.member.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gunwoo.myapp.biz.member.MemberService;
import com.gunwoo.myapp.biz.member.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAOMybatis MemberDAO;

	@Override
	public void insertMember(MemberVO vo) {
		MemberDAO.insertMember(vo);
	}

	@Override
	public void updateMember(MemberVO vo) {
		MemberDAO.updateMember(vo);
	}

	@Override
	public void deleteMember(MemberVO vo) {
		MemberDAO.deleteMember(vo);
	}

	@Override
	public MemberVO getMember(MemberVO vo) {
		return MemberDAO.getMember(vo);
	}


	@Override
	public MemberVO findId(MemberVO vo) {
		return MemberDAO.findId(vo);
	}

	@Override
	public MemberVO findPw(MemberVO vo) {
		return MemberDAO.findPw(vo);
	}
	
	@Override
	public MemberVO login(MemberVO vo) {
		return MemberDAO.login(vo);
	}

	@Override
	public List<MemberVO> getMemberList(MemberVO vo) {
		return MemberDAO.getMemberList(vo);
	}

	@Override
	public MemberVO chkPw(MemberVO vo) {
		return MemberDAO.chkPw(vo);
	}

	
}
