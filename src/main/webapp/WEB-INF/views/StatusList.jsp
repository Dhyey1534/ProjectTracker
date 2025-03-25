<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Status List</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>Status Id</th>
			<th>Status Name</th>
		</tr>
		<c:forEach items="${statusList}" var="s">
			<tr>
				<td>${s.statusId}</td>
				<td>${s.statusName}</td>
				<td><a href="viewstatus?statusId=${s.statusId}">View</a> | <a href="deletestatus?statusId=${s.statusId}">Delete</a> | Edit</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>