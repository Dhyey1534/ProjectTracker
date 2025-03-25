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
			<th>Task Id</th>
			<th>Module Id</th>
			<th>Title</th>
			<th>Priority</th>
			<th>Description</th>
			<th>Status Id</th>
			<th>Total Minutes</th>
		</tr>
		
		<c:forEach items="${taskList}" var="t">
				<tr>
					<td>${t.taskId}</td>
					<td>${t.moduleId}</td>
					<td>${t.title}</td>
					<td>${t.priority}</td>
					<td>${t.description}</td>
					<td>${t.statusId}</td>
					<td>${t.totalMinutes}</td>
					<td><a href="viewtask?tasktId=${t.taskId}">View</a> | <a href="deletetask?tasktId=${t.taskId}">Delete</a> | Edit</td>
				</tr>
		</c:forEach>
		

	</table>
</body>
</html>