<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Project</title>
</head>
<body>
		<form action="saveproject" method="post">
			Title : <input type="text" name="title"><br><br>
			Description : <input type="text" name="description"><br><br>
			Technology : <input type="text" name="technology"><br><br>
			Estimated Hours : <input type="text" name="estimatedHours"><br><br>
			Start Date : <input type="text" name="startDate"><br><br>
			Completion Date : <input type="text" name="completionDate"><br><br>
			<input type="submit" value="Add Project">
		</form>
</body>
</html>

