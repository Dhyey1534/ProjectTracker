<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
</head>
<body>
	<h1>signup</h1>
	
	<form action="saveuser" method="post">
	
		First Name : <input type=text placeholder="Dhyey"><br><br>
		
		Last Name : <input type="text" placeholder="Patel"><br><br>
		
		Email : <input type="email" placeholder="abc@gmail.com"><br><br>
		
		Password : <input type="password" placeholder="password"><br><br>
		
		Confirm Password : <input type="password" placeholder="comfirm password"><br><br>
		
		Gender : <label for="gender"></label>
				 <select id="gender" name="gender">
    				<option value="male">Male</option>
    				<option value="female">Female</option>
				 </select><br><br>
				 
		Mobile No. : <input type="text" placeholder="1234567890"><br><br>
		
		<input type="submit" value="Signup">
		
	</form><br><br>
	
	Already Have an Account ? <a href="login">Login</a>
	
</body>
</html>