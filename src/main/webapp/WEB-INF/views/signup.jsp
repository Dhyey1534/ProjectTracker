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
	
		First Name : <input type=text placeholder="Dhyey" name="firstName"><br><br>
		
		Last Name : <input type="text" placeholder="Patel" name="lastName"><br><br>
		
		Email : <input type="email" placeholder="abc@gmail.com" name="email"><br><br>
		
		Password : <input type="password" placeholder="password" name="password"><br><br>
		
		Confirm Password : <input type="password" placeholder="comfirm password" name="confirmPassword"><br><br>

		Gender : <input type="radio" value="male" name="male"> Male
			     <input type="radio" value="female" name="female"> Female <br><br>
				 
		Contact No. : <input type="text" placeholder="1234567890" name="contactNum"><br><br>
		
		Role :  <label for="role"></label>
				 <select id="role" name="role">
    				<option value="Admin">Admin</option>
    				<option value="teamMember">teamMember</option>
    				<option value="teamLeader">teamLeader</option>
				 </select><br><br>
		
		<input type="submit" value="Signup">
		
	</form><br><br>
	
	Already Have an Account ? <a href="login">Login</a>

	
</body>
</html>