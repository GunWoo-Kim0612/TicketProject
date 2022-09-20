package com.gunwoo.myapp.biz.mypick;

import java.util.List;

public interface MypickService {
	
	// 등록
	public void insertMypick(MypickVO vo);
	
	// 삭제
	public void deleteMypick(MypickVO vo);

	// 상세 조회
	public MypickVO getMypick(MypickVO vo);
	
	// 전체 조회
	public List<MypickVO> getMypickList(MypickVO vo);
	
	
}
