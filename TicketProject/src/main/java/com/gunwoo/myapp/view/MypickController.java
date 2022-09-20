package com.gunwoo.myapp.view;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gunwoo.myapp.biz.mypick.MypickService;
import com.gunwoo.myapp.biz.mypick.MypickVO;
import com.gunwoo.myapp.biz.show.ShowService;

@Controller
public class MypickController {

	@Autowired
	private MypickService mpService;

	@Autowired
	private ShowService showService;

	// 찜하기
	@RequestMapping("insertMypick.do")
	public String insertMypick(MypickVO vo, HttpServletRequest request) {
		System.out.println("[EXE] >>> insertMypick");
		String id = request.getParameter("id");
		String seq = request.getParameter("seq");
		
		vo.setId(id);
		vo.setSeq(Integer.parseInt(seq));
		
		System.out.println(vo);
		mpService.insertMypick(vo);
		
		return "redirect:/mypage/mypick";
	}
	
	// 마이페이지 마이픽 이동
	@RequestMapping("/mypage/mypick")
	public String getMypickList(Model md, HttpSession sess) {
		String id = sess.getAttribute("login").toString();
		
		md.addAttribute("mypickList", showService.getMypickList(id));
		
		System.out.println("[PATH] >>> /mypage/mypick");
		
		return "/mypage/mypick";
	}
	
	// 마이페이지 마이픽 삭제
	@RequestMapping("/deleteMypick.do")
	public String deleteMypick(MypickVO vo) {
		System.out.println("[실행] >>> deleteMypick");
		
		mpService.deleteMypick(vo);
		
		return "redirect:/mypage/mypick";
	}
}
