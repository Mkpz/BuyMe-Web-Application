<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="group5.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*,java.text.SimpleDateFormat"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
    
    <%
    	if (session == null || session.getAttribute("username") == null) {
    		response.sendRedirect("LandingPage.jsp");
    	}
    %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <h1>Auction Winner</h1>

    <%
        try {
        	//Get the database connection
   			ApplicationDB db = new ApplicationDB();	
   			Connection con = db.getConnection();;

   		
            con.close();

       
            }catch (Exception e) {
    			e.printStackTrace();
    		}
    %>

    <a href="HomePage.jsp">Back to Home</a>
</body>
</html>