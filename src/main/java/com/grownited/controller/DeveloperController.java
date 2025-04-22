package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.dto.UserTaskDto;
import com.grownited.entity.ProjectEntity;
import com.grownited.entity.ProjectModuleEntity;
import com.grownited.entity.StatusEntity;
import com.grownited.entity.TaskEntity;
import com.grownited.entity.UserEntity;
import com.grownited.entity.UserTaskEntity;
import com.grownited.repository.ProjectModuleRepository;
import com.grownited.repository.ProjectRepository;
import com.grownited.repository.StatusRepository;
import com.grownited.repository.TaskRepository;
import com.grownited.repository.UserRepository;
import com.grownited.repository.UserTaskRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class DeveloperController {

	@Autowired
	ProjectRepository projectRepository;
	
	@Autowired
	ProjectModuleRepository projectModuleRepository;
	
	@Autowired
	TaskRepository taskRepository;
	
	@Autowired
	StatusRepository statusRepository;
	
	@Autowired
	UserTaskRepository userTaskRepository;
	
	@Autowired
	UserRepository userRepository;
	
	@GetMapping("devdashboard")
	public String pmDashboard() {
		return "DevDashboard";
	}
	
	@GetMapping("devprojectlist")
	public String listProject(Model model) {
		List<ProjectEntity> projectList =projectRepository.findAll();
		model.addAttribute("projectList", projectList);
		return "DevProjectList";
	}
	
	@GetMapping("viewdevproject")
	public String viewProject(Integer projectId,Model model) {
		Optional<ProjectEntity> op = projectRepository.findById(projectId);
		
		if(op.isEmpty()) {
			//not found
			model.addAttribute("error", "not found");
		}else {
			ProjectEntity project=op.get();
			model.addAttribute("project", project);
		}
		return "ViewDevProject";
	}
	
	@GetMapping("devprojectmodulelist")
	public String projectModuleList(Model model) {
		
		model.addAttribute("projectModuleList", projectModuleRepository.getall());
		return "DevProjectModuleList";
	}
	
	@GetMapping("viewdevprojectmodule")
	public String viewProjectModule(Integer moduleId,Model model) {
		Optional<ProjectModuleEntity> op = projectModuleRepository.findById(moduleId);
		
		if(op.isEmpty()) {
			//not found
			model.addAttribute("error", "not found");
		}else {
			ProjectModuleEntity projectModule=op.get();
			Optional<ProjectEntity> project=projectRepository.findById(projectModule.getProjectId());
			if(project.isPresent()) {
				model.addAttribute("project", project.get());
			}
			model.addAttribute("projectModule", projectModule);
		}
		return "ViewDevProjectModule";
	}
	
	@GetMapping("devtasklist")
	public String tasklist(Model model) {
		
		model.addAttribute("taskList", taskRepository.getAll());
		return "DevTaskList";
	}
	
	@GetMapping("viewdevtask")
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
		return "ViewDevTask";
	}
	
	@GetMapping("devusertasklist")
	public String userTaskList(Model model) {
		
		
		
		
		
		List<UserTaskDto> userTaskList = userTaskRepository.getAll();
		model.addAttribute("userTaskList", userTaskList);
		return "DevUserTaskList";
	}
	
	@GetMapping("viewdevusertask")
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
		return "ViewDevUserTask";
	}
	
	@GetMapping("editdevusertask")
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
			return "EditDevUserTask";
		}
		
	}
	
	@PostMapping("updatedevusertask")
	public String updateUserTask(UserTaskEntity userTask) {
		Optional<UserTaskEntity> op=userTaskRepository.findById(userTask.getUserTaskId());
		if(op.isPresent()) {
			UserTaskEntity dbUserTask=op.get();
			dbUserTask.setUserId(userTask.getUserId());
			dbUserTask.setTaskId(userTask.getTaskId());
			
			userTaskRepository.save(dbUserTask);
		}
		return "redirect:/devusertasklist";

		
	}
	
	
}
