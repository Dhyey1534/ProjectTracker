package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.dto.TaskDto;
import com.grownited.entity.TaskEntity;

@Repository
public interface TaskRepository extends JpaRepository<TaskEntity, Integer>{
	
	@Query(nativeQuery = true,value="select t.*, p.title, pm.module_name, s.status_name from task t, project p, project_module pm, status s where t.project_id=p.project_id AND t.module_id=pm.module_id AND t.status_id=s.status_id")
	List<TaskDto> getAll();
}
