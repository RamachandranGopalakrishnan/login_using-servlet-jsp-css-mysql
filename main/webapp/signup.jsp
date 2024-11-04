<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Signup Page</title>
    <link rel="stylesheet" href="./CSS/signup.css"> 
</head>
<body>
    <form action="signup" method="post">
        <h2>Sign Up</h2>
        <label for="username">Enter the Name:</label>
        <input type="text" id="username" name="username" required>
        <label for="password">Enter the Password:</label>
        <input type="password" id="password" name="password" required>
        <label for="repassword">Re-Enter the Password:</label>
        <input type="password" id="repassword" name="repassword" required>
        <input type="submit" value="Sign Up">
        <a href="login.jsp">Already have an account? Login</a>
    </form>
</body>
</html>
