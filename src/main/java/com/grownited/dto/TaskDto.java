package com.grownited.dto;

public class TaskDto {

	private Integer taskId;
	private Integer moduleId;
	private Integer projectId;
	private String taskTitle;
	private String priority;
	private String description;
	private Integer statusId;
	private Integer totalMinutes;
	private String title;
	private	String moduleName;
	private String statusName;
	
	
	
	
	public TaskDto(Integer taskId, String description, Integer moduleId, String priority, Integer projectId, Integer statusId,  String taskTitle ,Integer totalMinutes, String title, String moduleName, String statusName) {
		super();
		this.taskId=taskId;
		this.moduleId=moduleId;
		this.projectId=projectId;
		this.taskTitle=taskTitle;
		this.priority=priority;
		this.statusId=statusId;
		this.totalMinutes=totalMinutes;
		this.title=title;
		this.moduleName=moduleName;
		this.statusName=statusName;
	}
	public Integer getTaskId() {
		return taskId;
	}
	public void setTaskId(Integer taskId) {
		this.taskId = taskId;
	}
	public Integer getModuleId() {
		return moduleId;
	}
	public void setModuleId(Integer moduleId) {
		this.moduleId = moduleId;
	}
	public Integer getProjectId() {
		return projectId;
	}
	public void setProjectId(Integer projectId) {
		this.projectId = projectId;
	}
	public String getTaskTitle() {
		return taskTitle;
	}
	public void setTaskTitle(String taskTitle) {
		this.taskTitle = taskTitle;
	}
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority = priority;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Integer getStatusId() {
		return statusId;
	}
	public void setStatusId(Integer statusId) {
		this.statusId = statusId;
	}
	public Integer getTotalMinutes() {
		return totalMinutes;
	}
	public void setTotalMinutes(Integer totalMinutes) {
		this.totalMinutes = totalMinutes;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getModuleName() {
		return moduleName;
	}
	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}
	public String getStatusName() {
		return statusName;
	}
	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}
	
	
}
