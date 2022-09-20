package com.gunwoo.myapp.biz.member.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gunwoo.myapp.biz.member.MemberVO;

@Repository
public class MemberDAOMybatis {

	@Autowired
	private SqlSessionTemplate mybatis;

	// 회원가입
	public void insertMember(MemberVO vo) {
		System.out.println(">>>>> Mybatis로 insertMember실행");
		mybatis.insert("MemberDAO.insertMember", vo);
	}

	// 회원 정보 수정
	public void updateMember(MemberVO vo) {
		System.out.println(">>>>> Mybatis로 updateMember실행");
		mybatis.update("MemberDAO.updateMember", vo);
	}

	// 회원 탈퇴
	public void deleteMember(MemberVO vo) {
		System.out.println(">>>>> Mybatis로 deleteMember실행");
		mybatis.delete("MemberDAO.deleteMember", vo);
	}

	// 내 정보 보기
	public MemberVO getMember(MemberVO vo) {
		System.out.println(">>>>> Mybatis로 getMember실행");
		return mybatis.selectOne("MemberDAO.getMember", vo);
	}

	// 아이디 찾기
	public MemberVO findId(MemberVO vo) {
		System.out.println(">>>>> Mybatis로 findId실행");
		return mybatis.selectOne("MemberDAO.findId", vo);
	}

	// 비밀번호 찾기
	public MemberVO findPw(MemberVO vo) {
		System.out.println(">>>>> Mybatis로 findPw실행");
		return mybatis.selectOne("MemberDAO.findPw", vo);
	}

	// 비밀번호 찾기
	public MemberVO login(MemberVO vo) {
		System.out.println(">>>>> Mybatis로 login실행");
		return mybatis.selectOne("MemberDAO.login", vo);
	}

	// 관리자 페이지용 전체 회원 정보
	public List<MemberVO> getMemberList(MemberVO vo) {
		System.out.println(">>>>> Mybatis로 getMemberList실행");
		return mybatis.selectList("MemberDAO.getMemberList", vo);
	}

	// 마이페이지 비밀번호 확인
	public MemberVO chkPw(MemberVO vo) {
		System.out.println(">>>>> Mybatis로 chkPw실행");
		return mybatis.selectOne("MemberDAO.chkPw", vo);
	}

}
