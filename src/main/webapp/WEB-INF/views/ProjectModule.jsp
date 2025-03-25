<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project Module</title>
</head>
<body>
	<h2>Project Module</h2>
	<form action="saveprojectmodule" method="post">
		Module Name : <input type="text" name="moduleName"><br><br>
		Description : <input type="text" name="description"><br><br>
		Estimated Hours : <input type="text" name="estimatedHours"><br><br>
		Status : <input type="text" name="status"><br><br>
		Start Date : <input type="text" name="startDate"><br><br>
		<input type="submit" value="Add Project Module">
	</form>
</body>
</html>