package com.gunwoo.myapp.biz.review.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gunwoo.myapp.biz.review.ReviewService;
import com.gunwoo.myapp.biz.review.ReviewVO;

@Service("ReviewService")
public class ReviewServiceImpl implements ReviewService{

	@Autowired
	private ReviewDAOMybatis ReviewDAO;

	@Override
	public void insertReview(ReviewVO vo) {
		ReviewDAO.insertReview(vo);
	}

	@Override
	public void updateReview(ReviewVO vo) {
		ReviewDAO.updateReview(vo);
	}

	@Override
	public void deleteReview(ReviewVO vo) {
		ReviewDAO.deleteReview(vo);
	}

	@Override
	public ReviewVO getReview(ReviewVO vo) {
		return ReviewDAO.getReview(vo);
	}

	@Override
	public List<ReviewVO> getReviewList(ReviewVO vo) {
		return ReviewDAO.getReviewList(vo);
	}

	@Override
	public List<ReviewVO> getUserReviewList(ReviewVO vo) {
		return ReviewDAO.getUserReviewList(vo);
	}
	
}