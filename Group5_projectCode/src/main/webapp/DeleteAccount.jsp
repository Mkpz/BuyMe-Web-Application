<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="group5.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Delete Accounts</title>
</head>
<body>
		<h1>You are about to delete account!</h1>
	    
	    <!-- Header for delete account -->
		  <h3>Delete an Account!</h3>
		  <br>
		 <form method="post" action="DeleteRedirect.jsp">
		 <table>
		 <tr>
		 <td>Username:</td><td><input type="text" name="username"></td>
		 </tr>
		
		 <tr>
		 <td>Password:</td><td><input type="password" name="password"></td>
		 </tr>
		
		
		</table>
		<input type="submit" value="Delete Account">
		
		<br><br>

		</form>
		
		<form action="HomePage.jsp" method = "post">
		<input type="submit" value="Home Page">
		</form>
	<br>

</body>
</html>