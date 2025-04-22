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
	
	
	
	@GetMapping(value= {"login","/"})
	public String login() {
		return "Login";
	}
	
	@GetMapping("forgetPassword")
	public String forgetPassword() {
		return "ForgetPassword";
	}
	
	
	
	@PostMapping("authenticate")
	public String authenticate(String email, String password, Model model, HttpSession session) {
		Optional<UserEntity> op = repoUser.findByEmail(email);
		
		if(op.isPresent()) {
			UserEntity dbUser=op.get();
			boolean ans= encoder.matches(password, dbUser.getPassword());
			session.setAttribute("user", dbUser);
			if(ans == true) {
				if(dbUser.getRole().equals("Admin")) {
					return "redirect:/admindashboard";
				}else if(dbUser.getRole().equalsIgnoreCase("DEVELOPER")) {
				return "redirect:/devdashboard";
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
	public String sendOTP(String email,Model model) {
		Optional<UserEntity> op=repoUser.findByEmail(email);
		if(op.isEmpty()) {
			model.addAttribute("error", "User Not Found");
			
			return "ForgetPassword";
		}else {
			String otp="";
			otp=(int) ( Math.random() * 1000000) +"";
			
			UserEntity user=op.get();
			user.setOtp(otp);
			repoUser.save(user);
			mailService.sendOtp(email, user.getFirstName(), otp);
			return "UpdatePassword";
		}
		
	}
	
	
	@PostMapping("updatepassword")
	public String updatePassword(String email, String otp, String password, Model model) {
		Optional<UserEntity> op=repoUser.findByEmail(email);
		if(op.isEmpty()) {
			model.addAttribute("error", "Email not found");
			return "UpdatePassword";
		}else {
			UserEntity user= op.get();
			if(user.getOtp().equals(otp)) {
				String encodedPass=encoder.encode(password);
				user.setPassword(encodedPass);
				user.setOtp("");
				repoUser.save(user);
			}else {
				model.addAttribute("error", "Invalid Data");
				return "UpdatePassword";
			}
		}
		model.addAttribute("msg", "Password Updated");
		return "Login";
	}
	
	
	@GetMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/login";
	}
	
	@GetMapping("ex")
	public String logout() {
		
		return "EX";
	}
	
}
