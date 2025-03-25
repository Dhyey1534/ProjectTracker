<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project Team List</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>Project Team Id</th>
			<th>Project Id</th>
			<th>User Id</th>
			
		</tr>
		
		<c:forEach items="${projectTeamList}" var="pM">
				<tr>
					<td>${pM.projectTeamId}</td>
					<td>${pM.projectId}</td>
					<td>${pM.userId}</td>
					
				</tr>
		</c:forEach>
</body>
</html>