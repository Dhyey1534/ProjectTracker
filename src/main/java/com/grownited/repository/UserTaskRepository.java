package com.grownited.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.dto.UserTaskDto;
import com.grownited.entity.UserTaskEntity;

@Repository
public interface UserTaskRepository extends JpaRepository<UserTaskEntity, Integer>{
	List<UserTaskEntity> findByUserId(Integer userId);

	@Query(nativeQuery = true,value ="select ut.*, u.first_name, t.task_title from user_task ut, users u, task t where ut.user_id=u.user_id and ut.task_id=t.task_id")
	List<UserTaskDto> getAll();
}
