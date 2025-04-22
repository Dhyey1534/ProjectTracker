package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ProjectEntity;
import com.grownited.entity.StatusEntity;
import com.grownited.repository.StatusRepository;

@Controller
public class StatusController {
	
	@Autowired
	StatusRepository statusRepository;
	
	@GetMapping("status")
	public String status() {
		return "Status";
	}
	
	@PostMapping("savestatus")
	public String saveStatus(StatusEntity status) {
		statusRepository.save(status);
		return "redirect:/statuslist";
	}
	
	@GetMapping("statuslist")
	public String statusList(Model model) {
		List<StatusEntity> statusList =statusRepository.findAll();
		model.addAttribute("statusList", statusList);
		return "StatusList";
	}
	
	@GetMapping("viewstatus")
	public String viewStatus(Integer statusId,Model model) {
		Optional<StatusEntity> op = statusRepository.findById(statusId);
		
		if(op.isEmpty()) {
			//not found
			model.addAttribute("error", "not found");
		}else {
			StatusEntity status=op.get();
			model.addAttribute("status", status);
		}
		return "ViewStatus";
	}
	
	@GetMapping("deletestatus")
	public String deleteStatus(Integer statusId,Model model) {
		statusRepository.deleteById(statusId);
		return "redirect:/statuslist";
	}
	
	@GetMapping("editstatus")
	public String editStatus(Integer statusId,Model model) {
		Optional<StatusEntity> op=statusRepository.findById(statusId);
		if(op.isEmpty()) {
			return "redirect:/statuslist";
		}else {
			model.addAttribute("status", op.get());
			return "EditStatus";
		}
		
	}
	
	@PostMapping("updatestatus")
	public String updateStatus(StatusEntity status) {
		Optional<StatusEntity> op=statusRepository.findById(status.getStatusId());
		if(op.isPresent()) {
			StatusEntity dbStatus=op.get();
			
			dbStatus.setStatusName(status.getStatusName());
			
			statusRepository.save(dbStatus);
		}
		
		return "redirect:/statuslist";
	}
}
