package com.grownited.controller;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.Services.MailService;
import com.grownited.entity.ProjectEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.UserRepository;

@Controller
public class UserController {
	
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
	
	@PostMapping("saveuser")
	public String saveuser(UserEntity user) {
		
		String encodedPassword = encoder.encode(user.getPassword());
		
		user.setPassword(encodedPassword);
		
		user.setRole("developer");
		user.setCreatedAt(new Date());
		user.setStatus(true);;
		repoUser.save(user);
		
		mailService.sendWelcomeMail(user.getEmail(),user.getFirstName());
		return "redirect:/listuser";
	}
	
	@GetMapping("listuser")
	public String ListUser(Model model) {
		List<UserEntity> users=repoUser.findAll();
		model.addAttribute("users", users);
		return "UserList";
	}
	
	@GetMapping("viewuser")
	public String viewProject(Integer userId,Model model) {
		Optional<UserEntity> op = repoUser.findById(userId);
		
		if(op.isEmpty()) {
			//not found
			model.addAttribute("error", "not found");
		}else {
			UserEntity user=op.get();
			model.addAttribute("user", user);
		}
		return "ViewUser";
	}
	
	@GetMapping("deleteuser")
	public String deleteProject(Integer userId,Model model) {
		repoUser.deleteById(userId);
		return "redirect:/listuser";
	}
	
	@GetMapping("edituser")
	public String updateProject(UserEntity userEntity,Model model) {
		Optional<UserEntity> op=repoUser.findById(userEntity.getUserId());
		
		if(op.isEmpty()) {
			return "redirect:/listuser";
		}else {
			UserEntity user=op.get();
			model.addAttribute("user", user);
			
			return "EditUser";
		}
		
	}
	
	@PostMapping("updateuser")
	public String updateUser(UserEntity userEntity) {
		Optional<UserEntity> op=repoUser.findById(userEntity.getUserId());
		
		if(op.isPresent()) {
			UserEntity dbUser=op.get();
			
			dbUser.setFirstName(userEntity.getFirstName());
			dbUser.setLastName(userEntity.getLastName());
			dbUser.setEmail(userEntity.getEmail());
			dbUser.setGender(userEntity.getGender());
			dbUser.setContactNum(userEntity.getContactNum());
			
			repoUser.save(dbUser);
		}
		
		return "redirect:/listuser";
	}
}
