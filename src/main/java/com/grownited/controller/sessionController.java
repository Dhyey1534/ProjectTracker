package com.grownited.controller;

import java.util.Date;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.Services.MailService;
import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class SessionController {

	@Autowired
	UserRepository repoUser;
	
	@Autowired
	MailService mailService;
	
	@Autowired
	PasswordEncoder encoder;
	
	@GetMapping("newuser")
	public String signup() {
		return "NewUser";
	}
	
	@GetMapping(value= {"login","/"})
	public String login() {
		return "Login";
	}
	
	@GetMapping("forgetPassword")
	public String forgetPassword() {
		return "ForgetPassword";
	}
	
	@PostMapping("saveuser")
	public String saveuser(UserEntity user) {
		
		String encodedPassword = encoder.encode(user.getPassword());
		
		user.setPassword(encodedPassword);
		
		user.setRole("USER");
		user.setCreatedAt(new Date());
		user.setStatus(true);;
		repoUser.save(user);
		
		mailService.sendWelcomeMail(user.getEmail(),user.getFirstName());
		return "redirect:/admindashboard";
	}
	
	@PostMapping("authenticate")
	public String authenticate(String email, String password, Model model, HttpSession session) {
		Optional<UserEntity> op = repoUser.findByEmail(email);
		
		if(op.isPresent()) {
			UserEntity dbUser=op.get();
			boolean ans= encoder.matches(password, dbUser.getPassword());
			session.setAttribute("user", dbUser);
			if(ans == true) {
				if(dbUser.getRole().equals("ADMIN")) {
					return "redirect:/admindashboard";
				}else if(dbUser.getRole().equals("USER")) {
				return "redirect:/admindashboard";
				}else {
					model.addAttribute("error", "Invalid Credentials");
					return "redirect:/login";
				}
			}
		}
		
		model.addAttribute("error", "Invalid Credential");
		return "Login";
	}
	
	@PostMapping("sendOTP")
	public String sendOTP() {
		return "UpdatePassword";
	}
	
	
	@PostMapping("updatepassword")
	public String updatePassword() {
		return "Login";
	}
	
	@GetMapping("home")
	public String home() {
		return "Home";
	}
	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}
	
}
