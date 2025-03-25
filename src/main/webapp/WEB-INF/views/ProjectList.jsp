<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project List</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>Project Id</th>
			<th>Title</th>
			<th>Description</th>
			<th>Technology</th>
			<th>Estimated Hours</th>
			<th>Start Date</th>
			<th>Completion Date</th>
			<th>Action</th>
		</tr>
		
		<c:forEach items="${projectList}" var="p">
				<tr>
					<td>${p.projectId}</td>
					<td>${p.title}</td>
					<td>${p.description}</td>
					<td>${p.technology}</td>
					<td>${p.estimatedHours}</td>
					<td>${p.startDate}</td>
					<td>${p.completionDate}</td>
					<td><a href="viewproject?projectId=${p.projectId}">View</a> | <a href="deleteproject?projectId=${p.projectId}">Delete</a> | Edit</td>
				</tr>
		</c:forEach>
		

	</table>
</body>
</html>