<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <link rel="stylesheet" href="./CSS/login.css">
</head>
<body>
    <form action="login" method="post">
        <h2>Login</h2>
        <label for="username">Enter the Name:</label>
        <input type="text" id="username" name="username" required>
        <label for="password">Enter the Password:</label>
        <input type="password" id="password" name="password" required>
        <input type="submit" value="Login">
        <a href="signup.jsp">Don't have an account? Sign Up</a>
    </form>
</body>
</html>
