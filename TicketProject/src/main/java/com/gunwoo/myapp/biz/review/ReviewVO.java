package com.gunwoo.myapp.biz.review;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReviewVO {
	private String id, contents, title;
	private int seq, score;
	private Date regdate;
}
