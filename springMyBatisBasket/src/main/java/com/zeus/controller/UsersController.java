package com.zeus.controller;

import java.util.List;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zeus.domain.Users;
import com.zeus.service.UserService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@MapperScan(basePackages = "com.zeus.mapper")
@RequestMapping("/user")
public class UsersController {

	@Autowired 
	private UserService userService;
	
	@GetMapping("/insertForm")
	public String userForm(Model model) {
		
		return "user/insertForm";
	}
	@PostMapping("/insert")
	public String userInsert(Model model, Users user) {
		int count;
		try {
			count = userService.create(user);
			if(count > 0) {
				model.addAttribute("message","회원가입 성공했습니다.");
				return "user/success";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("message","회원가입 실패했습니다.");
		return "user/failed";
	}
	@GetMapping("/list")
	public String userList(Model model, Users user){
		try {
			List<Users> userList = userService.list();
			model.addAttribute("userList",userList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "user/userList";
	}
	@GetMapping("/detail")
	public String userDetail(Model model, Users u) {
		try {
			Users user = userService.read(u);
			if(user != null) {
				model.addAttribute("user",user);
				model.addAttribute("message","조회가 성공했습니다.");
				return "user/userDetail";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("message","조회가 실패했습니다.");
		return "user/failed";
	}
	@GetMapping("/delete")
	public String userDelete(Model model, Users user) {
		try {
			int count = userService.delete(user);
			if(count > 0) {
				model.addAttribute("message","삭제 성공했습니다");
				return "user/delete";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("message","삭제 실패했습니다.");
		return "user/failed";
	}
	
	@GetMapping("/updateForm")
	public String userUpdateForm(Model model, Users u) {
		try {
			Users user = userService.read(u);
			if(user != null) {
				model.addAttribute("user",user);
				return "user/updateForm";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("message","정보가 없습니다.");
		return "user/filed";
	}
	@PostMapping("/update")
	public String userUpdate(Model model, Users user) {
		try {
			int count = userService.update(user);
			model.addAttribute("message","수정이 완료했습니다.");
			return "user/success";
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("message","수정이 실패했습니다.");
		return "user/failed";
	}
	
}
