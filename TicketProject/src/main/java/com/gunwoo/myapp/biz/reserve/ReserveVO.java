package com.gunwoo.myapp.biz.reserve;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReserveVO {
	private int seq;
	private String id;
	private String date;
	private String seat_num;
}
