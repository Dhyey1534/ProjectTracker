<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Password</title>
</head>
<body>
	<h2>Update Password</h2>
	
	<form action="updatePassword" method="post">
	
		Email : <input type="email" placeholder="abc@gmail.com" name="email"><br><br>
		
		OTP : <input type="text" placeholder="1234" name="otp"><br><br>
		
		Password : <input type="password" placeholder="password" name="password"><br><br>
		
		Confirm Password : <input type="password" placeholder="confirmPassword" name="confirmPassword"><br><br>
		
		<input type="submit" value="Update Password"><br><br>
		
	</form>
</body>
</html>