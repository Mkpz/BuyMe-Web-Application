<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome to BuyMe!</title>
</head>
<body>
	Welcome to BuyMe, an online auction site that specializes in clothes!
	<div id="login-container" >
		<h2>Login Here!</h2>
		
		<form action="login.php" method = "post">
		<label for="username">User name:</label>
		<input type="text" id="username" name="username">
		
		<br>
		
		<label for="password">Password:</label>
		<input type="password" id="password" name="password">
		
		<br>
		
		<input type="submit" value="Login">
		
		
		</form>
	 </div>
</body>
</html> 
