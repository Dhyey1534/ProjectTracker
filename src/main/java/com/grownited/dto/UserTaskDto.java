package com.grownited.dto;

public class UserTaskDto {

	private Integer userTaskId;
	private Integer userId;
	private Integer taskId;
	private String firstName;
	private String taskTitle;
	
	
	public UserTaskDto(Integer userTaskId, Integer taskId, Integer userId,  String firstName, String taskTitle) {
		super();
		this.userTaskId = userTaskId;
		this.userId = userId;
		this.taskId = taskId;
		this.firstName = firstName;
		this.taskTitle = taskTitle;
	}
	public Integer getUserTaskId() {
		return userTaskId;
	}
	public void setUserTaskId(Integer userTaskId) {
		this.userTaskId = userTaskId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getTaskId() {
		return taskId;
	}
	public void setTaskId(Integer taskId) {
		this.taskId = taskId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getTaskTitle() {
		return taskTitle;
	}
	public void setTaskTitle(String taskTitle) {
		this.taskTitle = taskTitle;
	}
	
	
}
