<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<table border="1">
		<tr>
			<th>Module Id</th>
			<th>Project Id</th>
			<th>Module Name</th>
			<th>Description</th>
			<th>Estimated Hours</th>
			<th>Status</th>
			<th>Start Date</th>
		</tr>
		
		<c:forEach items="${projectModuleList}" var="pM">
				<tr>
					<td>${pM.moduleId}</td>
					<td>${pM.projectId}</td>
					<td>${pM.moduleName}</td>
					<td>${pM.description}</td>
					<td>${pM.estimatedHours}</td>
					<td>${pM.status}</td>
					<td>${pM.startDate}</td>
					<td><a href="viewprojectmodule?moduleId=${pM.moduleId}">View</a> | <a href="deleteprojectmodule?moduleId=${pM.moduleId}">Delete</a> | Edit</td>
				</tr>
		</c:forEach>
		
		</table>
		
</body>
</html>