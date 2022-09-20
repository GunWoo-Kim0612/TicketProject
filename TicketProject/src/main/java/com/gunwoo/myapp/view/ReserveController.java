package com.gunwoo.myapp.view;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.gunwoo.myapp.biz.common.MailSendService;
import com.gunwoo.myapp.biz.reserve.ReserveService;
import com.gunwoo.myapp.biz.reserve.ReserveVO;
import com.gunwoo.myapp.biz.show.ShowService;
import com.gunwoo.myapp.biz.show.ShowVO;
@Controller
public class ReserveController {
	
	
	@Autowired
	private ShowService showService;

	@Autowired
	private ReserveService reserveService;

	@Autowired
	private MailSendService mailService;

	@RequestMapping("/book")
	public ModelAndView viewBook(ShowVO vo, ModelAndView mav) {
		
		
		
		System.out.println(vo.getSeq() +  " getShow 기능처리");
		mav.addObject("show", showService.getShow(vo));
		mav.setViewName("/reservation/stepsTest");
		
		System.out.println("예매 팝업창 ");
		return mav;
	}
	@RequestMapping(value = "/pay" ,method = RequestMethod.POST)
	public void paymentController(@RequestParam Map<String, Object> map, ShowVO svo, ReserveVO rvo) {

		System.out.println(map.get("seat_num"));
		System.out.println(map.get("show_title"));
		System.out.println(map.get("userid"));
		System.out.println(map.get("seq"));
		System.out.println(map.get("ticket_price_sum"));
		System.out.println(map.get("ticket_date"));
		System.out.println(map.get("useremail"));
		System.out.println(map.get("username"));

		rvo.setSeat_num((String) map.get("seat_num"));
		rvo.setSeq((Integer.parseInt( (String) map.get("seq"))));
		rvo.setId((String) map.get("userid"));
		System.out.println("rvo.getId"+rvo.getId());
		System.out.println("rvo.getsetnum"+rvo.getSeat_num());
		System.out.println("rvo.getseq"+rvo.getSeq());

		String email = (String) map.get("useremail");
		System.out.println("컨트롤러 email : " + email);
		reserveService.insertReserve(rvo);
		mailService.reserveMail(email, map);
		System.out.println("결제완료");
	}
	
	// 마이페이지-티켓예매내역 이동
	@RequestMapping("/mypage/myticket")
	public String myTicket(ShowVO svo, ReserveVO rvo, Model md) {
		System.out.println("티켓예매내역 이동");
		
		md.addAttribute("reserveList", reserveService.getReserveList(rvo));
		md.addAttribute("showList", showService.getShowList(svo));
		
		
		return "/mypage/myticket";
	}
	
	// 마이페이지-티켓예매내역 삭제
	@RequestMapping("/deleteMyticket.do")
	public String deleteMyticket(ReserveVO vo) {
		reserveService.deleteReserve(vo);
		
		return "redirect:/mypage/myticket";
	}
	
	

}