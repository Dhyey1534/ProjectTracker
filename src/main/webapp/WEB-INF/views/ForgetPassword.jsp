<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>
</head>
<body>
	<h2>Forget Password</h2>
	<form action="sendOTP" method="post">
	
		Email : <input type="email" placeholder="abc@gmail.com" name="email"><br><br>
	
		<input type="submit" value="Send OTP"><br><br>
	
	</form>
	
	<a href="login">Login</a>
	
	
</body>
</html>