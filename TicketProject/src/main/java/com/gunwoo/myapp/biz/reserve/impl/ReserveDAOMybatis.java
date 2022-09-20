package com.gunwoo.myapp.biz.reserve.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gunwoo.myapp.biz.reserve.ReserveVO;


@Repository
public class ReserveDAOMybatis {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	// 등록
	public void insertReserve(ReserveVO vo) {
		System.out.println(">>>>> Mybatis로 insertReserve실행");
		mybatis.insert("ReserveDAO.insertReserve", vo);
	}
	
	// 수정
	public void updateReserve(ReserveVO vo) {
		System.out.println(">>>>> Mybatis로 updateReserve실행");
		mybatis.insert("ReserveDAO.updateReserve", vo);
	}
	
	// 삭제
	public void deleteReserve(ReserveVO vo) {
		System.out.println(">>>>> Mybatis로 deleteReserve실행");
		mybatis.delete("ReserveDAO.deleteReserve", vo);
	}
	
	// 상세 조회
	public ReserveVO getReserve(ReserveVO vo) {
		System.out.println(">>>>> Mybatis로 getReserve실행");
		return mybatis.selectOne("ReserveDAO.getReserve", vo);
	}
	
	// 전체 조회
	public List<ReserveVO> getReserveList(ReserveVO vo){
		System.out.println(">>>>> Mybatis로 getReserveList실행");
		return mybatis.selectList("ReserveDAO.getReserveList", vo);
	}
}
