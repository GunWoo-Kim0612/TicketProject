package com.gunwoo.myapp.biz.member;

import java.util.List;

public interface MemberService {

	// 회원가입
	public void insertMember(MemberVO vo);

	// 회원정보 수정
	public void updateMember(MemberVO vo);

	// 회원탈퇴
	public void deleteMember(MemberVO vo);

	// 내 정보 보기
	public MemberVO getMember(MemberVO vo);

	// 아이디 찾기
	public MemberVO findId(MemberVO vo);

	// 비밀번호 찾기
	public MemberVO findPw(MemberVO vo);

	// 로그인
	public MemberVO login(MemberVO vo);

	// 관리자 페이지용 전체 회원 정보
	public List<MemberVO> getMemberList(MemberVO vo);

	// 마이페이지 비밀번호 확인
	public MemberVO chkPw(MemberVO vo);
}
