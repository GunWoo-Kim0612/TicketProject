package com.gunwoo.myapp.view;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.util.JSONPObject;
import com.gunwoo.myapp.biz.show.ShowVO;

@Controller
public class ViewController {
	
	@RequestMapping("test")
	public String test() {
		
		System.out.println("test.jsp 페이지로이동...");
		
		return "/test";
		
	}

	@RequestMapping("/welcome/welcome")
	public String welcomeView() {
		
		System.out.println("welcome.jsp 페이지로이동...");
		
		return "/welcome/welcome";
		
	}
	
	
//	컨텐츠 통합
	@RequestMapping("/content/index")
	public String View_intro() {
		
		System.out.println("greeting 화면으로 이동");
		
		return "/content/index";
		
	}
	
	
	
	
	
	
	
	////////////////////////김건우
	
	String[][] seats = {
            {"3", "1", "0", "1", "1", "0", "0", "0", "0", "1", "1", "0", "1", "1"},
            {"1", "1", "0", "1", "1", "1", "1", "1", "1", "1", "1", "0", "1", "1"},
            {"1", "1", "0", "1", "1", "1", "1", "1", "1", "1", "1", "0", "1", "1"},
            {"1", "1", "0", "1", "1", "1", "1", "1", "1", "1", "1", "0", "1", "1"},
            {"1", "1", "0", "1", "1", "1", "1", "1", "1", "1", "1", "0", "1", "1"},
            {"1", "1", "0", "1", "1", "1", "1", "1", "1", "1", "1", "0", "1", "1"},
            {"1", "1", "0", "1", "1", "1", "1", "1", "1", "1", "1", "0", "1", "1"},
            {"1", "1", "0", "1", "1", "1", "1", "1", "1", "1", "1", "0", "1", "1"},
            {"1", "1", "0", "1", "1", "1", "1", "1", "1", "1", "1", "0", "1", "1"},
            {"1", "1", "0", "1", "1", "1", "1", "1", "1", "1", "1", "0", "1", "1"},
            {"1", "1", "0", "1", "1", "1", "1", "1", "1", "1", "1", "0", "1", "1"},
            {"1", "1", "0", "1", "1", "1", "1", "1", "1", "1", "1", "0", "1", "1"},
	};	
	
	@RequestMapping(value = "/testPage")
	public String testSeats() {

		System.out.println("test 페이지로이동...");
		
		return "/test";

	}
	
	@RequestMapping(value = "/change")
	public String reserveSeats() {
		
		
		return "/reservation/seats_Test";

	}
	
//	ajax로 데이터만 넘겨줌
	@RequestMapping(value = "/seats", method = RequestMethod.GET)
	@ResponseBody
	public String[][] testView() {

		System.out.println("좌석데이터 전송");
		
		
	
		
		return seats;

	}
//	ajax로 데이터만 넘겨줌
	@RequestMapping(value = "/seats", method = RequestMethod.POST)
	@ResponseBody
	public String[][] changeView(@RequestParam Map<String, Object> map) {
		
		System.out.println((String)map.get("x"));
		System.out.println((String)map.get("y"));
		System.out.println((String)map.get("seat_st"));
		System.out.println(map.get("ticket_cnt"));
		System.out.println(map.get("event_st"));
		
		
		
		if( Integer.valueOf((String)((map.get("event_st")))) == 1) {
			seats[Integer.parseInt((String) map.get("y"))][Integer.parseInt((String) map.get("x"))] = "2";
		} else if( Integer.valueOf((String)((map.get("event_st")))) == 2) {
			seats[Integer.parseInt((String) map.get("y"))][Integer.parseInt((String) map.get("x"))] = "1";
		}
		
		
		return seats;
	}
	
	
	@RequestMapping(value = "/stepsTest")
	public String stepView() {
		
		
		return "/reservation/stepsTest";

	}
	
}
