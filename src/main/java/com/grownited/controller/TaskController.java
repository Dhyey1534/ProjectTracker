package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.StatusEntity;
import com.grownited.entity.TaskEntity;
import com.grownited.repository.TaskRepository;

@Controller
public class TaskController {
	
	@Autowired
	TaskRepository taskRepository;
	
	@GetMapping("task")
	public String task() {
		return "Task";
	}
	
	@PostMapping("savetask")
	public String saveTask(TaskEntity task) {
		taskRepository.save(task);
		return "redirect:/tasklist";
	}
	
	
	@GetMapping("tasklist")
	public String tasklist(Model model) {
		List<TaskEntity> taskList = taskRepository.findAll();
		model.addAttribute("taskList", taskList);
		return "TaskList";
	}
	
	@GetMapping("viewtask")
	public String viewTask(Integer taskId,Model model) {
		Optional<TaskEntity> op = taskRepository.findById(taskId);
		
		if(op.isEmpty()) {
			//not found
			model.addAttribute("error", "not found");
		}else {
			TaskEntity task=op.get();
			model.addAttribute("task", task);
		}
		return "ViewTask";
	}
	
	@GetMapping("deletetask")
	public String deleteTask(Integer taskId,Model model) {
		taskRepository.deleteById(taskId);
		return "redirect:/tasklist";
	}
}
