package com.gunwoo.myapp.view;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.gunwoo.myapp.biz.member.MemberService;
import com.gunwoo.myapp.biz.member.MemberVO;

@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;

	@RequestMapping("/member/login")
	public String loginView() {

		System.out.println("login  화면으로 이동");

		return "/member/login";

	}

	@RequestMapping("/member/login.do")
	public String login(MemberVO vo, HttpSession session) {

		System.out.println("login 시도");

		try {

			MemberVO login_member = memberService.login(vo);

			session.setAttribute("login", login_member.getId());
			session.setAttribute("username", login_member.getName());
			session.setAttribute("usermail", login_member.getEmail());
			session.setAttribute("userphone", login_member.getPhone());

			return "redirect:/";

		} catch (Exception e) {

			e.printStackTrace();
			return "/member/login";

		}
	}

	@RequestMapping("/member/findUserId")
	public String findIdView() {

		System.out.println("findId 화면으로 이동");

		return "/member/findUserId";

	}

	@RequestMapping("/member/findId.do")
	public String findId(MemberVO vo, Model model) {

		System.out.println("findId");

		MemberVO result = memberService.findId(vo);

		if (vo.getEmail().equals(result.getEmail()) && vo.getName().equals(result.getName())) {
			model.addAttribute("id", "아이디는 " + result.getId() + " 입니다!");
		} else {
			model.addAttribute("id", "입력하신 정보를 다시 확인해주세요!");
		}
		return "/member/findUserId";
	}

	@RequestMapping("/member/findPw")
	public String findPwView() {

		System.out.println("findPw 화면으로 이동");

		return "/member/findPw";
	}

	@RequestMapping("/member/findPw.do")
	public String findPw(MemberVO vo, Model model) {

		System.out.println("findPw");

		MemberVO result = memberService.findPw(vo);

		if (vo.getId().equals(result.getId()) && vo.getEmail().equals(result.getEmail())
				&& vo.getName().equals(result.getName())) {
			model.addAttribute("pw", "비밀 번호는 " + result.getPw() + " 입니다!");
		} else {
			model.addAttribute("pw", "입력하신 정보를 다시 확인해주세요!");
		}

		return "/member/findPw";

	}

	@RequestMapping("/member/logout.do")
	public String LogoutView(HttpSession session) {

		session.invalidate();

		System.out.println("로그아웃기능 수행");

		return "redirect:/";

	}

	// 약관동의 페이지 추가할것
	@RequestMapping("/member/join_check")
	public String join_checkView() {

		System.out.println("join_check  화면으로 이동");

		return "/member/join_check";

	}

	@RequestMapping("/member/join")
	public String joinView() {

		System.out.println("join  화면으로 이동");

		return "/member/join";

	}

	@RequestMapping("/member/insertMember.do")
	public String insertMember(MemberVO vo) {

		System.out.println("회원가입 완료");

		memberService.insertMember(vo);

		return "/member/login";

	}

	@RequestMapping("/member/deleteMember.do")
	public String deleteMember(MemberVO vo, HttpSession session) {

		System.out.println("회원탈퇴 페이지 이동");

		memberService.deleteMember(vo);

		session.invalidate();

		return "redirect:/";

	}
	
	

	// 마이페이지 회원탈퇴 page
	@GetMapping("/mypage/resign")
	public String reSign(HttpSession sess, MemberVO vo) {

		System.out.println("[PATH] >>>  /mypage/resign");

		return "/mypage/resign";
	}

	// 회원탈퇴
	@PostMapping("/resign.do")
	public String resignMember(HttpSession sess, MemberVO vo) {
		sess.getAttribute("login");
		String user_id = (String) sess.getAttribute("login");
		vo.setId(user_id);

		memberService.deleteMember(vo);

		sess.invalidate();

		System.out.println("회원탈퇴");

		return "redirect:/";
	}

	// 개인정보관리 page
	@GetMapping("/mypage/myinfoEnter")
	public String myinfoEnter(HttpSession sess) {
		sess.getAttribute("login");

		System.out.println("[PATH] >>>  /mypage/myinfoEnter");

		return "/mypage/myinfoEnter";

	}

	// 개인정보관리 비밀번호 확인
	@PostMapping("/mypage/myinfoEnter.do")
	public String myinfoEnter(HttpSession sess, MemberVO vo, HttpServletRequest req, Model md) {
		String sess_id = (String) sess.getAttribute("login");
		vo.setId(sess_id);

		MemberVO db_pw = memberService.chkPw(vo);
		System.out.println(db_pw);

		String user_pw = req.getParameter("user_pw");

		if (db_pw.getPw().equals(user_pw)) {
			
			return "redirect:/mypage/myinfoEdit";

		} else {
			
			md.addAttribute("msg", "비밀번호가 맞지 않습니다. 다시 입력해주세요.");

			return "/mypage/myinfoEnter";
		}

	}

	// 개인정보관리 => 회원정보수정 Page
	@GetMapping("/mypage/myinfoEdit")
	public String myinfoEdit(HttpSession sess, MemberVO vo, Model md) {
		String sess_id = (String) sess.getAttribute("login");
		vo.setId(sess_id);

		md.addAttribute("edit", memberService.getMember(vo));
		System.out.println(memberService.getMember(vo));

		return "/mypage/myinfoEdit";
	}

	// 회원정보수정
	@PostMapping("/updateMember.do")
	public String updateMember(MemberVO vo) {

		System.out.println("회원정보 수정");

		memberService.updateMember(vo);

		return "redirect:/";

	}
	
	
	@ResponseBody
	@RequestMapping("/checkId.do")
	public HashMap<String, String> checkId(MemberVO vo, @RequestBody String id) {
		
		System.out.println("아이디 중복체크");
		
		id = id.substring(0,id.indexOf("="));
		
		vo.setId(id);
		
		System.out.println(id);
		
		MemberVO chk = memberService.getMember(vo);
		
		System.out.println("MemberVO = " + chk);
		
		HashMap<String, String> result = new HashMap<String, String>();
		
		if(chk == null) {
			System.out.println("아이디 생성 가능");
			result.put("result", "1");
		}else {
			System.out.println("중복 되는 아이디 있음");
			result.put("result", "-1");
		}
		
		return result;

	}

}
