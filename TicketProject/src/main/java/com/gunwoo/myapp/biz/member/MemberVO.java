package com.gunwoo.myapp.biz.member;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberVO {
	private String id, pw, name, email, phone;
	private int grade;
}
