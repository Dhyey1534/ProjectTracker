package com.grownited.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;

@Controller
public class SessionController {

	@Autowired
	UserRepository repoUser;
	
	@GetMapping(value ={"signup","/"})
	public String signup() {
		return "Signup";
	}
	
	@GetMapping("login")
	public String login() {
		return "Login";
	}
	
	@GetMapping("forgetPassword")
	public String forgetPassword() {
		return "ForgetPassword";
	}
	
	@PostMapping("saveuser")
	public String saveuser(UserEntity user) {
		
		
		user.setCreatedAt(new Date());
		user.setStatus(true);;
		repoUser.save(user);
		return "Login";
	}
	
	
	@PostMapping("sendOTP")
	public String sendOTP() {
		return "UpdatePassword";
	}
	
	
	@PostMapping("updatePassword")
	public String updatePassword() {
		return "Login";
	}
	
}
