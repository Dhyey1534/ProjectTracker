package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ProjectEntity;
import com.grownited.entity.ProjectTeamEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.ProjectRepository;
import com.grownited.repository.ProjectTeamRepository;
import com.grownited.repository.UserRepository;

@Controller
public class ProjectTeamController {
	
	@Autowired
	ProjectTeamRepository projectTeamRepository;
	
	@Autowired
	ProjectRepository projectRepository;
	
	@Autowired
	UserRepository userRepository;
	
	@GetMapping("projectteam")
	public String projectTeam(Model model) {
		List<ProjectEntity> allProject=projectRepository.findAll();
		model.addAttribute("allProject", allProject);
		
		List<UserEntity> users= userRepository.findAll();
		model.addAttribute("users", users);
		return "ProjectTeam";
	}
	
	@PostMapping("saveprojectteam")
	public String saveProjectTeam(ProjectTeamEntity projectTeam) {
		
		projectTeamRepository.save(projectTeam);
		return "redirect:/projectteamlist";
	}
	
	@GetMapping("projectteamlist")
	public String projectTeamList(Model model) {
		
		model.addAttribute("projectTeamList", projectTeamRepository.getall());
		return "ProjectTeamList";
	}
	
	@GetMapping("viewprojectteam")
	public String viewProjectTeam(Integer projectTeamId,Model model) {
		Optional<ProjectTeamEntity> op=projectTeamRepository.findById(projectTeamId);
		if(op.isEmpty()) {
			model.addAttribute("error", "not found");
		}else {
			ProjectTeamEntity projectTeam=op.get();
			Optional<ProjectEntity> project=projectRepository.findById(projectTeam.getProjectId());
			if(project.isPresent()) {
				model.addAttribute("project", project.get());
			}
			Optional<UserEntity> user=userRepository.findById(projectTeam.getUserId());
			if(user.isPresent()) {
				model.addAttribute("user", user.get());
			}
			model.addAttribute("projectTeam", projectTeam);
		}
		return "ViewProjectTeam";
	}
	
	@GetMapping("deleteprojectteam")
	public String deleteProjectTeam(Integer projectTeamId) {
		projectTeamRepository.deleteById(projectTeamId);
		return "redirect:/projectteamlist";
	}
	
	@GetMapping("editprojectteam")
	public String editProjectTeam(Integer projectTeamId,Model model) {
		Optional<ProjectTeamEntity> op=projectTeamRepository.findById(projectTeamId);
		
		if(op.isEmpty()) {
			return "redirect:/projectteamlist";
		}else {
			List<ProjectEntity> allProject=projectRepository.findAll();
			model.addAttribute("allProject", allProject);
			
			List<UserEntity> users= userRepository.findAll();
			model.addAttribute("users", users);
			
			ProjectTeamEntity projectTeam=op.get();
			model.addAttribute("projectTeam", projectTeam);
			
			return "EditProjectTeam";
		}
		
		
	}
	
	@PostMapping("updateprojectteam")
	public String updateProjectTeam(ProjectTeamEntity projectTeam) {
		Optional<ProjectTeamEntity> op=projectTeamRepository.findById(projectTeam.getProjectTeamId());
		
		if(op.isPresent()) {
			ProjectTeamEntity dbProjectTeam=op.get();
			
			dbProjectTeam.setProjectId(projectTeam.getProjectId());
			dbProjectTeam.setUserId(projectTeam.getUserId());
			
			projectTeamRepository.save(dbProjectTeam);
		}
		return "redirect:/projectteamlist";
	}
	
}
