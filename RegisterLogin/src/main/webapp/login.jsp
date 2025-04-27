<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="loginForm" method="post" style="border: 1px solid #ccc; padding: 20px; width: 300px; margin: 50px auto; border-radius: 10px;">
    <h2 style="text-align: center;">Login</h2>
    
    <label>Email:</label><br/>
    <input type="text" name="email1" style="width: 100%; padding: 8px; margin-bottom: 15px;" /> <br/>

    <label>Password:</label><br/>
    <input type="password" name="pass1" style="width: 100%; padding: 8px; margin-bottom: 20px;" /> <br/>

    <input type="submit" value="Login" style="width: 100%; padding: 10px; background-color: #4CAF50; color: white; border: none; cursor: pointer;" />
</form>

</body>
</html>