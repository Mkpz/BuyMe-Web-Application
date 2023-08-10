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
	    response.sendRedirect("LandingPage.jsp");
	    return;
	}
	
	
	
	if(userType.equalsIgnoreCase("END")) {
	%>
	    <h1>FAQ for End Users</h1>
	    
	    <%     

		// Handle newQuestion insertion for END users
	
		    try {
		    	
		    	ApplicationDB db = new ApplicationDB();
				Connection con = db.getConnection();

		    	Statement stmt = con.createStatement();
				//Make a SELECT query from the table specified by the 'command' parameter at the index.jsp
				String str = "SELECT answer, question FROM faqs";
				//Run the query against the database.
				ResultSet result = stmt.executeQuery(str);
				
				out.print("<style>");
			    out.print("table { border-collapse: collapse; width: 100%; }");
			    out.print("th, td { border: 1px solid black; padding: 8px; text-align: left; }");
			    out.print("</style>");
	
			    out.print("<table>");
			    
			    // Create header row with column names
			    out.print("<tr>");
			    out.print("<th>Answer</th>");
			    out.print("<th>Question</th>");
			    out.print("</tr>");
	
			    // Parse and display the results
			    while (result.next()) {
			        out.print("<tr>");
			        out.print("<td>" + result.getString("answer") + "</td>");
			        out.print("<td>" + result.getString("question") + "</td>");
			        out.print("</tr>");
			    }
	
			    out.print("</table>");
			    
			    String insertQuery = "INSERT INTO faqs (question) VALUES (?)";
		        PreparedStatement insertStatement = con.prepareStatement(insertQuery);
		        String newQuestion = request.getParameter("newQuestion");
		        insertStatement.setString(1, newQuestion);
		        
		        
		        if(newQuestion != null) {
		        	
		        	insertStatement.executeUpdate();
		        	out.println("Question submitted successfully!");
		        	
			        insertStatement.close();
			        response.sendRedirect("FAQs.jsp");
		        }
		        
		    	
		    } catch (Exception e) {
		        out.print("Ask a question below");
		    }
	%>
	
	<!-- Allow asking questions -->
	    <form action="FAQs.jsp" method="post">
	        <label for="newQuestion">Ask a question:</label><br>
	        <textarea id="newQuestion" name="newQuestion" rows="4" cols="50" required></textarea><br><br>
	        <input type="submit" value="Submit">
	    </form>
	    
	    <br><br>
        <form action="HomePage.jsp" method = "post">
		<input type="submit" value="Home Page">
		</form>


<%  
    } else if(userType.equalsIgnoreCase("ADMIN") || userType.equalsIgnoreCase("CR")) {
%>
        <h1>FAQ for Admins and Customer Representatives</h1>
        <h2> This is the list of all questions</h2>
        
        <%
        
        try {
			
        	ApplicationDB db = new ApplicationDB();
    		Connection con = db.getConnection();
			//Create a SQL statement
			Statement stmt = con.createStatement();
			//Make a SELECT query from the table specified by the 'command' parameter at the index.jsp
			String str = "SELECT answer, question, qid FROM faqs";
			//Run the query against the database.
			ResultSet result = stmt.executeQuery(str);
			
			out.print("<style>");
		    out.print("table { border-collapse: collapse; width: 100%; }");
		    out.print("th, td { border: 1px solid black; padding: 8px; text-align: left; }");
		    out.print("</style>");

		    out.print("<table>");
		    
		    // Create header row with column names
		    out.print("<tr>");
		    out.print("<th>Answer</th>");
		    out.print("<th>Question</th>");
		    out.print("<th>QID</th>");
		    out.print("</tr>");

		    // Parse and display the results
		    while (result.next()) {
		        out.print("<tr>");
		        out.print("<td>" + result.getString("answer") + "</td>");
		        out.print("<td>" + result.getString("question") + "</td>");
		        out.print("<td>" + result.getString("qid") + "</td>");
		        out.print("</tr>");
		    }

		    out.print("</table>");
		    
		    
		 // Update Table
	        String answer = request.getParameter("answer"); 
	        String qid = request.getParameter("qid");

	        if (answer != null && qid != null) {

	        	String updateQuery = "UPDATE faqs set answer = ? where qid = ?";
	            PreparedStatement updateStatement = con.prepareStatement(updateQuery);
	            
	            int qidValue = Integer.valueOf(qid);
	       		updateStatement.setString(1, answer);
	       		updateStatement.setInt(2, qidValue);
	       		
	       		updateStatement.executeUpdate();

				response.sendRedirect("FAQs.jsp");
	        } 

			//close the connection.
			db.closeConnection(con);
		} catch (Exception e) {
			out.print("Invalid Entry");
			out.print("To answer or edit an Answer all fields must be filled in");
		}	
        
        
        %>
		
		<h2> To change a response or initiate a response enter the question id with your answer</h2>
		<form action="FAQs.jsp" method="post">
            <label for="answer">Answer a Question:</label><br>
    		<textarea id="answer" name="answer" rows="4" cols="50" required></textarea><br>
            <br>
            <label for="qid">Question ID:</label><br>
            <input type="text" id="qid" name="qid" required><br>
            <input type="submit" value="Submit">
        </form>
        <br><br>
        <form action="CustomerRepHomePage.jsp" method = "post">
		<input type="submit" value="Home Page">
		</form>
<%  
    } else {
        // Handle unknown user type
        out.println("Unknown user type.");
    }
%>

</body>
</html>
