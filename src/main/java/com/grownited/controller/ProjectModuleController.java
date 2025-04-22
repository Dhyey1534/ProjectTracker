package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.dto.ProjectModuleDto;
import com.grownited.entity.ProjectEntity;
import com.grownited.entity.ProjectModuleEntity;
import com.grownited.repository.ProjectModuleRepository;
import com.grownited.repository.ProjectRepository;

@Controller
public class ProjectModuleController {

	@Autowired
	ProjectModuleRepository projectModuleRepository;
	
	@Autowired
	ProjectRepository projectRepository;
	
	@GetMapping("projectmodule")
	public String projectModule(Model model) {
		List<ProjectEntity> allProject=projectRepository.findAll();
		model.addAttribute("allProject", allProject);
		return "ProjectModule";
	}
	
	@PostMapping("saveprojectmodule")
	public String saveProjectModule(ProjectModuleEntity projectModule) {
		projectModuleRepository.save(projectModule);
		return "redirect:/projectmodulelist";
	}
	
	@GetMapping("projectmodulelist")
	public String projectModuleList(Model model) {
		
		model.addAttribute("projectModuleList", projectModuleRepository.getall());
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
			Optional<ProjectEntity> project=projectRepository.findById(projectModule.getProjectId());
			if(project.isPresent()) {
				model.addAttribute("project", project.get());
			}
			model.addAttribute("projectModule", projectModule);
		}
		return "ViewProjectModule";
	}
	
	@GetMapping("deleteprojectmodule")
	public String deleteProjectModule(Integer moduleId,Model model) {
		projectModuleRepository.deleteById(moduleId);
		return "redirect:/projectmodulelist";
	}
	
	@GetMapping("editprojectmodule")
	public String editProjectModule(Integer moduleId,Model model) {
		Optional<ProjectModuleEntity> op=projectModuleRepository.findById(moduleId);
		if(op.isEmpty()) {
			return "redirect:/projectmodulelist";
		}else {
			List<ProjectEntity> allProject=projectRepository.findAll();
			model.addAttribute("allProject", allProject);
			
			ProjectModuleEntity projectModule=op.get();
			model.addAttribute("projectModule", projectModule);
			return "EditProjectModule";
		}
		
	}
	
	@PostMapping("updateprojectmodule")
	public String updateProjectModule(ProjectModuleEntity projectModuleEntity) {
		Optional<ProjectModuleEntity> op=projectModuleRepository.findById(projectModuleEntity.getModuleId());
		if(op.isPresent()) {
			ProjectModuleEntity dbProjectModule=op.get();
			dbProjectModule.setModuleName(projectModuleEntity.getModuleName());
			dbProjectModule.setDescription(projectModuleEntity.getDescription());
			dbProjectModule.setEstimatedHours(projectModuleEntity.getEstimatedHours());
			dbProjectModule.setDescription(projectModuleEntity.getDescription());
			dbProjectModule.setStartDate(projectModuleEntity.getStartDate());
			dbProjectModule.setStatus(projectModuleEntity.getStatus());
			dbProjectModule.setProjectId(projectModuleEntity.getProjectId());
			
			projectModuleRepository.save(dbProjectModule);
		}
		return "redirect:/projectmodulelist";
	}
}
