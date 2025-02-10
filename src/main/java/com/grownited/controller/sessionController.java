package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class sessionController {

	
	@GetMapping(value ={"signup","/"})
	public String signup() {
		return "signup";
	}
	
	@GetMapping("login")
	public String login() {
		return "login";
	}
	
	@GetMapping("forgotPassword")
	public String forgotPassword() {
		return "forgotPassword";
	}
	
	@PostMapping("saveuser")
	public String saveuser() {
		return "login";
	}
}
