package com.gunwoo.myapp.view;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.gunwoo.myapp.biz.common.S3Service;
import com.gunwoo.myapp.biz.review.ReviewService;
import com.gunwoo.myapp.biz.review.ReviewVO;
import com.gunwoo.myapp.biz.show.ShowService;
import com.gunwoo.myapp.biz.show.ShowVO;

@Controller
public class ShowController {

	@Autowired
	private ShowService showService;
	
	@Autowired
	private S3Service s3Service;

	@Autowired
	private ReviewService reviewService;

	//getShowList기능 후 메인페이지이동
	@RequestMapping("/")
	public ModelAndView viewMain(ShowVO vo, ModelAndView mav) {

		List<ShowVO> show = showService.getShowList(vo);
		mav.setViewName("index");
		mav.addObject("showList", showService.getShowList(vo));

		System.out.println("show : " + show.toString());

		return mav;
	}

	//getShowList기능 후 달력페이지로 이동
	@RequestMapping(value = "/program/schedule")
	public ModelAndView viewCalender(ShowVO vo, ModelAndView mav) {

		mav.setViewName("/program/schedule");
		
		mav.addObject("showList", showService.getShowList(vo));

		return mav;

	}

	//getShowList기능 후 오늘의공연페이지로 이동
	@RequestMapping(value = "/program/todayshow")
	public ModelAndView viewTodayShow(ShowVO vo, ModelAndView mav) {

		mav.setViewName("/program/todayShow");
		
		mav.addObject("showList", showService.getShowList(vo));

		return mav;

	}

	
	/*
	 * @RequestMapping("/getShowList.do") public ModelAndView getShowList(ShowVO vo,
	 * ModelAndView mav, HttpServletRequest req) {
	 * 
	 * mav.setViewName("/program/todayShow");
	 * 
	 * mav.addObject("showList", showService.getShowList(vo));
	 * 
	 * return mav; }
	 */

	//insertShow기능(파일업로드) 후 오늘의공연 페이지로 이동
	@RequestMapping("/insertShow.do")
	public String admin(ShowVO vo, Model model, MultipartFile file) {

		System.out.println("insertShow.do 기능처리");

		MultipartFile uploadFile = vo.getUpload();

		if (!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();

			vo.setImg(fileName);
			try {
				fileName = uploadFile.getOriginalFilename();

				System.out.println(fileName);
				System.out.println(fileName + "업로드 동작");

				// ========= 서버에 파일 저장 ========= //
				String res = s3Service.uploadObject(uploadFile, fileName);
				System.out.println(res);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		System.out.println(vo.getImg());

		showService.insertShow(vo);

		return "redirect:/program/todayshow";
	}
	
	
	
	
	
	
	//관리자페이지 공연 등록 페이지로 이동
	@RequestMapping("/insertForm")
	public ModelAndView adminInsertPage(ShowVO vo, ModelAndView mav) {
		
		mav.setViewName("/admin/insertForm");
		
		return mav;
	}

	//getShow기능 후 공연 상세보기페이지로 이동 
	@RequestMapping("/getShow.do")
	public ModelAndView getShow(ShowVO svo, ReviewVO rvo, ModelAndView mav) {
		rvo.setSeq(svo.getSeq());
		
		mav.addObject("show", showService.getShow(svo));
		mav.addObject("review", reviewService.getReviewList(rvo));
		
		mav.setViewName("/show_view/view_index");
		return mav;
	}
	
	//deleteShow기능 후 오늘의공연 페이지로 이동
	@RequestMapping("/deleteShow.do")
	public String deleteShow(ShowVO vo, ModelAndView mav) {
		
		showService.deleteShow(vo);
		
		return "redirect:/program/todayshow";
	}

	//getShow 기능 후 공연 수정 페이지로 이동
	@RequestMapping("/updateForm")
	public ModelAndView updateForm(ShowVO vo, ModelAndView mav) {
		
		showService.getShow(vo); mav.addObject("show", showService.getShow(vo));
		
		mav.setViewName("/admin/updateForm");
		
		return mav;
	}

	//updateShow기능 후 오늘의 공연 페이지로 이동
	@RequestMapping("/updateShow.do")
	public String updateShow(ShowVO vo, Model model, MultipartFile file) {

		System.out.println("update.do 기능처리");

		MultipartFile uploadFile = vo.getUpload();

		if (!uploadFile.isEmpty()) {
			String fileName = uploadFile.getOriginalFilename();

			vo.setImg(fileName);
			try {
				fileName = uploadFile.getOriginalFilename();

				System.out.println(fileName);
				System.out.println(fileName + "업로드 동작");

				// ========= 서버에 파일 저장 ========= //
				String res = s3Service.uploadObject(uploadFile, fileName);
				System.out.println(res);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		System.out.println(vo.getSeq());
		System.out.println(vo.getImg());
		System.out.println(vo.getContents());
		System.out.println(vo.getEnd_date());
		System.out.println(vo.getPrice());
		System.out.println(vo.getRuntime());
		System.out.println(vo.getSeats());
		System.out.println(vo.getStart_date());
		System.out.println(vo.getTitle());
		
		showService.updateShow(vo);

		return "redirect:/program/todayshow";
	}

}