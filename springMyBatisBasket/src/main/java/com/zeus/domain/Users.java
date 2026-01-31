package com.zeus.domain;

import java.util.List;

import lombok.Data;

@Data
public class Users {

	
	private int no;
	private String id;
	private String password;
	private String name;
	private String email;
	private String phone;
	private List<Users> userList;
}
