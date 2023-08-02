<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="group5.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RegisterAfter</title>
</head>
<body>

		<%
			try {
			
    		//Get the database connection
   			ApplicationDB db = new ApplicationDB();	
   			Connection con = db.getConnection();
			
   			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String name = request.getParameter("name");
			String phonenumber = request.getParameter("phonenumber");
			
			
   	    	// Query to check if the username and password match
			String insert = "INSERT INTO users(user_type, username, password)"
				+ "VALUES ('END', ?, ?)";
			PreparedStatement ps = con.prepareStatement(insert);
			ps.setString(1, username);
			ps.setString(2, password);
			
			
			if (username != null && password != null && name != null && phonenumber != null) {
				// Valid login, redirect to another JSP page (e.g., home.jsp)
				// Execute the query
				ps.executeUpdate();
				response.sendRedirect("LandingPage.jsp");
				out.print("Please use your new information to log in");
				
				//session.setAttribute("usertype", rs.getString("usertype")//	
			}
			else {
				// Invalid login, redirect back to the login page
				out.print("Please fill in all required fields to register account");
				response.sendRedirect("LandingPage.jsp");
			}
			
			ps.close();
			con.close();
			
		} catch (Exception e) {
			out.print(e);
			// Handle any exceptions that may occur during the login process
		}
		
		
		
		%>


</body>
</html>