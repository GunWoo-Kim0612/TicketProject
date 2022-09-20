package com.gunwoo.myapp.biz.show;

import org.springframework.web.multipart.MultipartFile;

//import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class ShowVO {
	private int seq;
	private String regdate;
	private String start_date;
	private String end_date;
	private String runtime;
	private String price;
	private String title;
	private String contents;
	private String img;
	private MultipartFile upload;
	private int seats;
}