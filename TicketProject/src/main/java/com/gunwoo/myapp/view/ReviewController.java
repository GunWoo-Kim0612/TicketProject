package com.gunwoo.myapp.view;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gunwoo.myapp.biz.review.ReviewService;
import com.gunwoo.myapp.biz.review.ReviewVO;
import com.gunwoo.myapp.biz.show.ShowService;
import com.gunwoo.myapp.biz.show.ShowVO;

@Controller
public class ReviewController {

	@Autowired
	private ReviewService reviewService;
	
	@Autowired
	private ShowService showService;

	@RequestMapping("/insertReview.do")
	public String insertReview(ReviewVO vo, Model model) {

		System.out.println("관람평 추가!");

		reviewService.insertReview(vo);

		return "redirect:/getShow.do?seq=" + vo.getSeq() + "&mode=3";
	}

	// 마이페이지 관람평 이동
	@GetMapping("/mypage/myreview")
	public String getMyreviewList(ReviewVO rvo, ShowVO svo, Model md, HttpSession sess) {
		System.out.println("[PATH] >>>  /mypage/myreview");
		String sess_id = (String) sess.getAttribute("login");
		rvo.setId(sess_id);
		
		reviewService.getUserReviewList(rvo);
		
		md.addAttribute("reviewList", reviewService.getUserReviewList(rvo));
		md.addAttribute("show", showService.getShowList(svo));
		
		System.out.println(reviewService.getUserReviewList(rvo));

		return "/mypage/myreview";
	}
	
	// 마이페이지 관람평 수정
	@PostMapping("/mypage/updateMyreview.do")
	public String updateMyreview(ReviewVO vo, HttpSession sess) {
		System.out.println(">>> 리뷰 수정");
		String sess_id = (String) sess.getAttribute("login");
		vo.setId(sess_id);
		
		reviewService.updateReview(vo);
		
		return "redirect:/mypage/myreview";
	}
	
	
	// 마이페이지 관람평 삭제
	@GetMapping("/deleteMyreview.do")
	public String deleteMyreview(ReviewVO vo) {
		System.out.println("/deleteMyreview.do");
		
		reviewService.deleteReview(vo);
		
		return "redirect:/mypage/myreview";
	}

}
