<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="savetask" method="post">
		Title : <input type="text" name="title"> <br><br>
		Priority : <input type="text" name="priority"> <br><br>
		Description : <input type="text" name="description"> <br><br>
		Total Minutes : <input type="text" name="totalMinutes"> <br><br>
		<input type="submit" value="Save task">
	</form>
</body>
</html>