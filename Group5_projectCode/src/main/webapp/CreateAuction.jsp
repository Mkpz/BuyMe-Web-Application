<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="group5.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Create an Auction</title>
	</head>
	<body>

	<% 
		try {
			
    		//Get the database connection
   			ApplicationDB db = new ApplicationDB();	
   			Connection con = db.getConnection();
			
   			String clothesQuery = "INSERT INTO clothes (brand, gender, age) VALUES (" + request.getParameter("brand") + ", " + request.getParameter("gender") + ", " + request.getParameter("age") + ")";
   			String subcategoryQuery = "INSERT INTO " + request.getParameter("type") + " VALUES (?, " + request.getParameter("attr1") + ", " + request.getParameter("attr2") + ", " + request.getParameter("attr3") + ")";
			String password = request.getParameter("password");
			
   	    	Statement ps = con.prepareStatement(clothesQuery, Statement.RETURN_GENERATED_KEYS);	
			//prepare the statements
			ps.setString(1, username);
			ps.setString(2, password);
			
			// Execute the querys
			ResultSet rs = ps.executeQuery();
	%>		
    <h1>Create a Auction!</h1>
    <form method="post" action="createAuctionInsert.jsp">
        <!-- Input fields for auction details: item name, description, reserve price, closing date/time, etc. -->
        <label for="itemName">Item Name:</label>
        <input type="text" name="itemName" required><br>
        <!-- Add more input fields as needed for other characteristics of the item -->
        <label for="Price">Price:</label>
        <input type="number" name="Price" step="0.01" required><br>
        <label for="closingDateTime">Closing Date and Time:</label>
        <input type="datetime-local" name="closingDateTime" required><br>
        <input type="submit" value="Create Auction">
    </form>
</body>
</html>