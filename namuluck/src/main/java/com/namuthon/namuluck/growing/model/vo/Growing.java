package com.namuthon.namuluck.growing.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Setter
@Getter
@ToString
public class Growing {
	private int userNo;
	private String userId;
	private String userPwd;
	private String userName;
	private String nickName;
	private String email;
	private String gender;
	private String phone;
	private String sumPoint;
	private int water;
	private String address;
}
