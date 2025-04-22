package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.dto.UserTaskDto;
import com.grownited.entity.TaskEntity;
import com.grownited.entity.UserEntity;
import com.grownited.entity.UserTaskEntity;
import com.grownited.repository.TaskRepository;
import com.grownited.repository.UserRepository;
import com.grownited.repository.UserTaskRepository;

@Controller
public class UserTaskController {
	
	@Autowired
	UserTaskRepository userTaskRepository;
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	TaskRepository taskRepository;
	
	@GetMapping("usertask")
	public String userTask(Model model) {
		List<UserEntity> users=userRepository.findAll();
		model.addAttribute("users", users);
		List<TaskEntity> task=taskRepository.findAll();
		model.addAttribute("task", task);
		return "UserTask";
	}
	
	@PostMapping("saveusertask")
	public String saveUserTask(UserTaskEntity userTask) {
		userTaskRepository.save(userTask);
		return "redirect:/usertasklist";
	}
	
	@GetMapping("usertasklist")
	public String userTaskList(Model model) {
		List<UserTaskDto> userTaskList = userTaskRepository.getAll();
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
			Optional<UserEntity> user=userRepository.findById(userTask.getUserId());
			if(user.isPresent()) {
				model.addAttribute("user", user.get());
			}
			Optional<TaskEntity> task=taskRepository.findById(userTask.getTaskId());
			if(task.isPresent()) {
				model.addAttribute("task", task.get());
			}
			model.addAttribute("userTask", userTask);
		}
		return "ViewUserTask";
	}
	
	@GetMapping("deleteusertask")
	public String deleteUserTask(Integer userTaskId,Model model) {
		userTaskRepository.deleteById(userTaskId);
		return "redirect:/usertasklist";
	}
	

	@GetMapping("editusertask")
	public String editusertask(Integer userTaskId,Model model) {
		Optional<UserTaskEntity> op= userTaskRepository.findById(userTaskId);
		if(op.isEmpty()) {
			return "redirect:/usertasklist";
		}else {
			List<UserEntity> users=userRepository.findAll();
			model.addAttribute("users", users);
			List<TaskEntity> task=taskRepository.findAll();
			model.addAttribute("task", task);
			
			model.addAttribute("userTask", op.get());
			return "EditUserTask";
		}
		
	}
	
	@PostMapping("updateusertask")
	public String updateUserTask(UserTaskEntity userTask) {
		Optional<UserTaskEntity> op=userTaskRepository.findById(userTask.getUserTaskId());
		if(op.isPresent()) {
			UserTaskEntity dbUserTask=op.get();
			dbUserTask.setUserId(userTask.getUserId());
			dbUserTask.setTaskId(userTask.getTaskId());
			
			userTaskRepository.save(dbUserTask);
		}
		return "redirect:/usertasklist";

		
	}
}
