package com.gunwoo.myapp.biz.mypick.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gunwoo.myapp.biz.mypick.MypickService;
import com.gunwoo.myapp.biz.mypick.MypickVO;

@Service("mypickService")
public class MypickImpl implements MypickService {
	
	@Autowired
	private MypickDAOMybatis mypickDAO;
	
	
	
	@Override
	public void insertMypick(MypickVO vo) {
		mypickDAO.insertMypick(vo);
	}
	
	@Override
	public MypickVO getMypick(MypickVO vo) {
		return mypickDAO.getMypick(vo);
	}

	@Override
	public void deleteMypick(MypickVO vo) {
		mypickDAO.deleteMypick(vo);
	}
	
	@Override
	public List<MypickVO> getMypickList(MypickVO vo) {
		return mypickDAO.getMypickList(vo);
	}
	
}
