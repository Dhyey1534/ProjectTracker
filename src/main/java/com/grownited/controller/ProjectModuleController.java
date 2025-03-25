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
import com.grownited.repository.ProjectModuleRepository;

@Controller
public class ProjectModuleController {

	@Autowired
	ProjectModuleRepository projectModuleRepository;
	
	@GetMapping("projectmodule")
	public String projectModule() {
		return "ProjectModule";
	}
	
	@PostMapping("saveprojectmodule")
	public String saveProjectModule(ProjectModuleEntity projectModule) {
		projectModuleRepository.save(projectModule);
		return "redirect:/projectmodulelist";
	}
	
	@GetMapping("projectmodulelist")
	public String projectModuleList(Model model) {
		List<ProjectModuleEntity> projectModuleList = projectModuleRepository.findAll();
		model.addAttribute("projectModuleList", projectModuleList);
		return "ProjectModuleList";
	}
	
	@GetMapping("viewprojectmodule")
	public String viewProjectModule(Integer moduleId,Model model) {
		Optional<ProjectModuleEntity> op = projectModuleRepository.findById(moduleId);
		
		if(op.isEmpty()) {
			//not found
			model.addAttribute("error", "not found");
		}else {
			ProjectModuleEntity projectModule=op.get();
			model.addAttribute("projectModule", projectModule);
		}
		return "ViewProjectModule";
	}
	
	@GetMapping("deleteprojectmodule")
	public String deleteProjectModule(Integer moduleId,Model model) {
		projectModuleRepository.deleteById(moduleId);
		return "redirect:/projectmodulelist";
	}
}
