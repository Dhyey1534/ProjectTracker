package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.TaskEntity;
import com.grownited.entity.UserTaskEntity;
import com.grownited.repository.UserTaskRepository;

@Controller
public class UserTaskController {
	
	@Autowired
	UserTaskRepository userTaskRepository;
	
	@GetMapping("usertask")
	public String userTask() {
		return "UserTask";
	}
	
	@PostMapping("saveusertask")
	public String saveUserTask(UserTaskEntity userTask) {
		userTaskRepository.save(userTask);
		return "redirect:/usertasklist";
	}
	
	@GetMapping("usertasklist")
	public String userTaskList(Model model) {
		List<UserTaskEntity> userTaskList = userTaskRepository.findAll();
		model.addAttribute("userTaskList", userTaskList);
		return "UserTaskList";
	}
	
	@GetMapping("viewusertask")
	public String viewUserTask(Integer userTaskId,Model model) {
		Optional<UserTaskEntity> op = userTaskRepository.findById(userTaskId);
		
		if(op.isEmpty()) {
			//not found
			model.addAttribute("error", "not found");
		}else {
			UserTaskEntity userTask=op.get();
			model.addAttribute("userTask", userTask);
		}
		return "ViewUserTask";
	}
	
	@GetMapping("deleteusertask")
	public String deleteUserTask(Integer userTaskId,Model model) {
		userTaskRepository.deleteById(userTaskId);
		return "redirect:/usertasklist";
	}
}
