package com.gunwoo.myapp.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.gunwoo.myapp.biz.common.MailSendService;
import com.gunwoo.myapp.biz.member.MemberService;
import com.gunwoo.myapp.biz.member.MemberVO;
import com.gunwoo.myapp.biz.show.ShowVO;

@Controller
public class MailSendController {

	@Autowired
	private MailSendService mailService;

	

	// 회원가입 페이지 이동
	@RequestMapping(value = "/mailtest")
	public String userJoin() {
		return "/test";
	}

	// 이메일 인증
	@GetMapping("/mailCheck")
	@ResponseBody
	public String mailCheck(String email) {
		System.out.println("이메일 인증 요청이 들어옴!");
		System.out.println("이메일 인증 이메일 : " + email);
		return mailService.joinEmail(email);

	}
	/*
	 * @GetMapping("/reserveMail")
	 * 
	 * @ResponseBody public String sendReserveMail(String email) {
	 * System.out.println("이메일 인증 요청이 들어옴!"); System.out.println("이메일 인증 이메일 : " +
	 * email); return mailService.reserveMail(email, data);
	 * 
	 * }
	 */
}
