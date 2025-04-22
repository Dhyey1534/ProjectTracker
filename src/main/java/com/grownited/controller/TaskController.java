package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ProjectEntity;
import com.grownited.entity.ProjectModuleEntity;
import com.grownited.entity.StatusEntity;
import com.grownited.entity.TaskEntity;
import com.grownited.repository.ProjectModuleRepository;
import com.grownited.repository.ProjectRepository;
import com.grownited.repository.StatusRepository;
import com.grownited.repository.TaskRepository;

@Controller
public class TaskController {
	
	@Autowired
	TaskRepository taskRepository;
	
	@Autowired
	ProjectRepository projectRepository;
	
	@Autowired
	ProjectModuleRepository projectModuleRepository;
	
	@Autowired
	StatusRepository statusRepository;
	
	@GetMapping("task")
	public String task(Model model) {
		List<ProjectEntity> project=projectRepository.findAll();
		model.addAttribute("project", project);
		
		List<ProjectModuleEntity> projectModule=projectModuleRepository.findAll();
		model.addAttribute("projectModule", projectModule);
		
		
		List<StatusEntity> status= statusRepository.findAll();
		model.addAttribute("status", status);
		return "Task";
	}
	
	@PostMapping("savetask")
	public String saveTask(TaskEntity task) {
		taskRepository.save(task);
		return "redirect:/tasklist";
	}
	
	
	@GetMapping("tasklist")
	public String tasklist(Model model) {
		
		model.addAttribute("taskList", taskRepository.getAll());
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
			Optional<ProjectEntity> project=projectRepository.findById(task.getProjectId());
			Optional<ProjectModuleEntity> projectModule=projectModuleRepository.findById(task.getModuleId());
			Optional<StatusEntity> status=statusRepository.findById(task.getStatusId());
			if(project.isPresent()) {
				model.addAttribute("project", project.get());
			}
			if(status.isPresent()) {
				model.addAttribute("status", status.get());
			}
			if(projectModule.isPresent()) {
				model.addAttribute("projectModule", projectModule.get());
			}
			model.addAttribute("task", task);
		}
		return "ViewTask";
	}
	
	@GetMapping("deletetask")
	public String deleteTask(Integer taskId,Model model) {
		taskRepository.deleteById(taskId);
		return "redirect:/tasklist";
	}
	
	@GetMapping("edittask")
	public String editTask(Integer taskId,Model model) {
		
		Optional<TaskEntity> op=taskRepository.findById(taskId);
		if(op.isEmpty()) {
			return "redirect:/tasklist";
		}else {
			model.addAttribute("task", op.get());
			return "EditTask";
		}
		
	}
	
	@PostMapping("updatetask")
	public String updatetask(TaskEntity task) {
		Optional<TaskEntity> op=taskRepository.findById(task.getTaskId());
		if(op.isPresent()) {
			TaskEntity dbTask=op.get();
			
			dbTask.setProjectId(task.getProjectId());
			dbTask.setModuleId(task.getModuleId());
			dbTask.setPriority(task.getPriority());
			dbTask.setDescription(task.getDescription());
			dbTask.setStatusId(task.getStatusId());
			dbTask.setTotalMinutes(task.getTotalMinutes());
			dbTask.setTaskTitle(task.getTaskTitle());
			
			
			taskRepository.save(dbTask);
		}
		
		return "redirect:/tasklist";
	}
	
	
}
