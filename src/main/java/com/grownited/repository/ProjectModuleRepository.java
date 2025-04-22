package com.grownited.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.dto.ProjectModuleDto;
import com.grownited.entity.ProjectModuleEntity;

@Repository
public interface ProjectModuleRepository extends JpaRepository<ProjectModuleEntity, Integer> {

	@Query(nativeQuery = true, value="select pm.*,p.title from project_module pm, project p where pm.project_id=p.project_id")
	List<ProjectModuleDto> getall();
	
	
}
