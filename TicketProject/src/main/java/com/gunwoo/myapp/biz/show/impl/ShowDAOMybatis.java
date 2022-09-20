package com.gunwoo.myapp.biz.show.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.gunwoo.myapp.biz.show.ShowVO;

@Repository
public class ShowDAOMybatis {
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertShow(ShowVO vo) {
		System.out.println("========>Spring mybaties로 insertShow() 기능 처리");
		mybatis.insert("ShowDAO.insertShow",vo);
	}



	//U
	public void updateShow(ShowVO vo) {
		System.out.println("========>Spring mybaties로 updateShow() 기능 처리");
		mybatis.update("ShowDAO.updateShow",vo);

	}





	//D
	public void deleteShow(ShowVO vo) {
		System.out.println("========>Spring mybaties로 deleteShow() 기능 처리");
		mybatis.delete("ShowDAO.deleteShow",vo);

	}




	//R ALL
	public List<ShowVO> getShowList(ShowVO vo) {
		System.out.println("========>Spring mybaties로 getShowList() 기능 처리");

		return 	mybatis.selectList("ShowDAO.getShowList",vo);

	}






	//R  1 row
	public ShowVO getShow(ShowVO vo) {
		System.out.println("========>Spring mybaties로 getShow() 기능 처리");
		return 	mybatis.selectOne("ShowDAO.getShow",vo);
	}





	//U readCount ++
	public void increaseCNT(ShowVO Bvo) {
		System.out.println("========>Spring   increaseCNT() 기능처리 ");

	}
	
	
	
	// Mypick All
	public List<ShowVO> getMypickList(String id) {
		return mybatis.selectList("ShowDAO.getMypickList", id);
	}
	
	
	// getShowReview
	public ShowVO getShowReview(ShowVO vo) {
		return mybatis.selectOne("ShowDAO.getShowReview", vo);
	}
}
