package com.grownited.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.dto.projectTeamDto;
import com.grownited.entity.ProjectTeamEntity;

@Repository
public interface ProjectTeamRepository extends JpaRepository<ProjectTeamEntity, Integer> {
	@Query(nativeQuery = true,value="select pt.*,p.title,u.first_name from project_team pt, project p, users u where pt.project_id=p.project_id AND pt.user_id=u.user_id")
	List<projectTeamDto> getall();
}
