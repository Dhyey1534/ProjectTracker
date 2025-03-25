<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project Team</title>
</head>
<body>
	<form action="saveprojectteam" method="post">
		Project : <select name="projectId">
					<option>Select Project</option>
					<c:forEach items="${allProject}" var="a">
						<option value="${a.projectId}">${a.title}</option>
					</c:forEach>
				</select><br><br>
				<input type="submit" value="Save Project Team">
	</form>
</body>
</html>