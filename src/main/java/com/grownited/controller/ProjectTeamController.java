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
import com.grownited.repository.ProjectRepository;
import com.grownited.repository.ProjectTeamRepository;

@Controller
public class ProjectTeamController {
	
	@Autowired
	ProjectTeamRepository projectTeamRepository;
	
	@Autowired
	ProjectRepository projectRepository;
	
	@GetMapping("projectteam")
	public String projectTeam(Model model) {
		List<ProjectEntity> allProject=projectRepository.findAll();
		model.addAttribute("allProject", allProject);
		return "ProjectTeam";
	}
	
	@PostMapping("saveprojectteam")
	public String saveProjectTeam(ProjectTeamEntity projectTeam) {
		
		projectTeamRepository.save(projectTeam);
		return "redirect:/projectteamlist";
	}
	
	@GetMapping("projectteamlist")
	public String projectTeamList(Model model) {
		List<ProjectTeamEntity> projectTeamList= projectTeamRepository.findAll();
		model.addAttribute("projectTeamList", projectTeamList);
		return "ProjectTeamList";
	}
	
	@GetMapping("viewprojectteam")
	public String viewProjectTeam(Integer projectId,Model model) {
		Optional<ProjectTeamEntity> op=projectTeamRepository.findById(projectId);
		if(op.isEmpty()) {
			model.addAttribute("error", "not found");
		}else {
			ProjectTeamEntity projectTeam=op.get();
			model.addAttribute("projectTeam", projectTeam);
		}
		return "ViewProjectTeam";
	}
}
