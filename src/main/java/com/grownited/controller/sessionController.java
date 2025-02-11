package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SessionController {

	
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
	public String saveuser() {
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
