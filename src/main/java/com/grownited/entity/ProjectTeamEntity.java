package com.grownited.entity;

import org.springframework.stereotype.Controller;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="projectTeam")
public class ProjectTeamEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer projectTeamId;
	Integer projectId;
	Integer userId;
	public Integer getProjectTeamId() {
		return projectTeamId;
	}
	public void setProjectTeamId(Integer projectTeamId) {
		this.projectTeamId = projectTeamId;
	}
	public Integer getProjectId() {
		return projectId;
	}
	public void setProjectId(Integer projectId) {
		this.projectId = projectId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	
	
}
