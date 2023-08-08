<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="group5.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>FAQ Page</title>
</head>
<body>

<%
    String userType = (String) session.getAttribute("user_type");
    if (userType == null) {
        // No user type specified, maybe not logged in
        response.sendRedirect("LandingPage.jsp");
        return; // stop the JSP from processing further
    }

    if(userType.equalsIgnoreCase("END")) {
%>
        <h1>FAQ for End Users</h1>
        
        <!-- Allow asking questions -->
        <form action="SubmitQuestionServlet" method="post">
            <label for="newQuestion">Ask a question:</label><br>
            <input type="text" id="newQuestion" name="newQuestion" required><br>
            <input type="submit" value="Submit">
        </form>
        
        <!-- Display answered questions -->
        <!-- ... (fetch and display answered questions from the database) ... -->

<%  
    } else if(userType.equalsIgnoreCase("ADMIN") || userType.equalsIgnoreCase("CR")) {
%>
        <h1>FAQ for Admins and Customer Representatives</h1>
        
        <!-- Display all questions and allow answering them -->
        <!-- ... (fetch and display all questions from the database and provide an interface for answering) ... -->

<%  
    } else {
        // Handle unknown user type
        out.println("Unknown user type.");
    }
%>

</body>
</html>
