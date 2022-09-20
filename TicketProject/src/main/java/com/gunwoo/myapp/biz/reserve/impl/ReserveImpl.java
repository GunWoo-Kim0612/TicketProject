package com.gunwoo.myapp.biz.reserve.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gunwoo.myapp.biz.reserve.ReserveService;
import com.gunwoo.myapp.biz.reserve.ReserveVO;

@Service("ReserveService")
public class ReserveImpl implements ReserveService {

	@Autowired
	private ReserveDAOMybatis resDAO;
	
	@Override
	public void insertReserve(ReserveVO vo) {
		resDAO.insertReserve(vo);
	}
	
	@Override
	public void updateReserve(ReserveVO vo) {
		resDAO.updateReserve(vo);
	}

	@Override
	public void deleteReserve(ReserveVO vo) {
		resDAO.deleteReserve(vo);
	}
	
	@Override
	public ReserveVO getReserve(ReserveVO vo) {
		return resDAO.getReserve(vo);
	}

	@Override
	public List<ReserveVO> getReserveList(ReserveVO vo) {
		return resDAO.getReserveList(vo);
	}
	
}
