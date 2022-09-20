package com.gunwoo.myapp.biz.show.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gunwoo.myapp.biz.show.ShowService;
import com.gunwoo.myapp.biz.show.ShowVO;

@Service("ShowService")
public class ShowServiceImpl implements ShowService{

	@Autowired
	private ShowDAOMybatis ShowDAO;

	@Override
	public void insertShow(ShowVO vo) {
		ShowDAO.insertShow(vo);
	}

	@Override
	public void updateShow(ShowVO vo) {
		ShowDAO.updateShow(vo);
	}

	@Override
	public void deleteShow(ShowVO vo) {
		ShowDAO.deleteShow(vo);
	}

	@Override
	public ShowVO getShow(ShowVO vo) {
		
		return ShowDAO.getShow(vo);
	}

	@Override
	public List<ShowVO> getShowList(ShowVO vo) {
		return ShowDAO.getShowList(vo);
	}

	@Override
	public List<ShowVO> getMypickList(String id) {
		return ShowDAO.getMypickList(id);
	}

	@Override
	public ShowVO getShowReview(ShowVO vo) {
		return ShowDAO.getShowReview(vo);
	}
	
	
}
