<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Form</title>
</head>
<body>

    <form action="regForm" method="post" style="border: 1px solid #ccc; padding: 20px; width: 350px; margin: 50px auto; border-radius: 10px;">
        
        <h2 style="text-align: center;">Register</h2>
        
        Name : <br/>
        <input type="text" name="name1" style="width: 100%; padding: 8px; margin-bottom: 10px;" /> <br/>
        
        Email : <br/>
        <input type="text" name="email1" style="width: 100%; padding: 8px; margin-bottom: 10px;" /> <br/>
        
        Password : <br/>
        <input type="password" name="pass1" style="width: 100%; padding: 8px; margin-bottom: 10px;" /> <br/>
        
        Gender : <br/>
        <input type="radio" name="gender1" value="male" /> Male 
        <input type="radio" name="gender1" value="female" /> Female 
        <br/><br/>
        
        City : <br/>
        <select name="city1" style="width: 100%; padding: 8px; margin-bottom: 20px;">
            <option value="">Select City</option>
            <option value="Mumbai">Mumbai</option>
            <option value="Banglore">Banglore</option>
            <option value="Pune">Pune</option>
            <option value="Delhi">Delhi</option>
        </select> 
        <br/>
        
        <input type="submit" value="Register" style="width: 100%; padding: 10px; background-color: #4CAF50; color: white; border: none; cursor: pointer;" />
    </form>

</body>
</html>
