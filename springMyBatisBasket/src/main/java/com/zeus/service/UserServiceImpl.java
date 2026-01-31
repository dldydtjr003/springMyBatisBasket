package com.zeus.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zeus.domain.Users;
import com.zeus.mapper.UserMapper;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;
	@Override
	@Transactional
	public int create(Users user) throws Exception {
		int count = userMapper.create(user);
		return count;
		
	}

	@Override
	public List<Users> list() throws Exception {
		List<Users> userList = userMapper.list();
		return userList;
	}

	@Override
	public Users read(Users u) throws Exception {
		Users user = userMapper.read(u);
		return user;
	}

	@Override
	@Transactional
	public int update(Users user) throws Exception {
		int count = userMapper.update(user);
		return count;
	}

	@Override
	@Transactional
	public int delete(Users user) throws Exception {
		int count = userMapper.delete(user);
		return count;
	}

}
