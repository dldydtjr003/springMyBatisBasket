package com.zeus.service;

import java.util.List;

import com.zeus.domain.Users;

public interface UserService {

	public int create(Users user) throws Exception;
	public List<Users> list() throws Exception;
	public Users read(Users user) throws Exception;
	public int update (Users user) throws Exception;
	public int delete(Users user) throws Exception;
}
