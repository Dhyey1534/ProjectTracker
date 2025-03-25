package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ProjectEntity;
import com.grownited.repository.ProjectRepository;

@Controller
public class ProjectController {
	
	@Autowired
	ProjectRepository projectRepository;
	
	@GetMapping("project")
	public String project() {
		return "Project";
	}
	
	
	@PostMapping("saveproject")
	public String saveProject(ProjectEntity project) {
		projectRepository.save(project);
		return "redirect:/projectlist";
	}
	
	@GetMapping("projectlist")
	public String listProject(Model model) {
		List<ProjectEntity> projectList =projectRepository.findAll();
		model.addAttribute("projectList", projectList);
		return "ProjectList";
	}
	

	@GetMapping("viewproject")
	public String viewProject(Integer projectId,Model model) {
		Optional<ProjectEntity> op = projectRepository.findById(projectId);
		
		if(op.isEmpty()) {
			//not found
			model.addAttribute("error", "not found");
		}else {
			ProjectEntity project=op.get();
			model.addAttribute("project", project);
		}
		return "ViewProject";
	}
	
	@GetMapping("deleteproject")
	public String deleteProject(Integer projectId,Model model) {
		projectRepository.deleteById(projectId);
		return "redirect:/projectlist";
	}
}
