package com.grownited.dto;

public class projectTeamDto {
	private Integer projectTeamId;
	private Integer projectId;
	private String title;
	private Integer userId;
	private String firstName;
	
	
	
	public projectTeamDto(Integer projectTeamId, Integer projectId,Integer userId,  String title, String firstName) {
		super();
		this.projectTeamId=projectTeamId;
		this.projectId=projectId;
		this.title=title;
		this.userId=userId;
		this.firstName=firstName;
	}
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	
}
