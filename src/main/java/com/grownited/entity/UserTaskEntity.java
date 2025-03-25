package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="userTask")
public class UserTaskEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer userTaskId;
	Integer userId;
	Integer taskId;
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
	
}
