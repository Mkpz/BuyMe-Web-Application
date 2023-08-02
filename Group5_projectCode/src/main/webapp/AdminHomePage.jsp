<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="group5.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Administrative Accounts</title>
</head>
<body>
		<h1>Welcome Admin!</h1>
	    <p>You have logged in!</p>
	    
	    <!-- Header for viewing items -->
		  <h3>Add a Customer Representative Account!</h3>
		  <br>
		 <form method="post" action="RegisterRedirect.jsp">
		 <table>
		 <tr>    
		 <td>Name:</td><td><input type="text" name="name"></td>
		 </tr>
		 <tr>
		 <td>Phone number:</td><td><input type="text" name="phonenumber"></td>
		 </tr>
		 <tr>
		 <td>Username:</td><td><input type="text" name="username"></td>
		 </tr>
		
		 <tr>
		 <td>Password:</td><td><input type="password" name="password"></td>
		 </tr>
		
		
		</table>
		<input type="submit" value="Register">
		</form>
	<br>
		  
		  
		  <!-- Header Deleting an Account -->
	 	 <h3>Generate Sales Report!</h3>
	 	 <form action="SalesReport.jsp" method="post">
	        <input type="submit" value="Sales Report">
	     </form>
	     
	     
	   


</body>
</html>