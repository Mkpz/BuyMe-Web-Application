<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="group5.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>This is the list of all current bids</title>
</head>



	<div id="remove-bid container" >
		<h2>Enter the requested information to remove a bid!</h2>
		
		<form action="RemoveBids.jsp" method = "post">
		<label for="username">User name:</label>
		<input type="text" id="username" name="username">
		
		<br>
		
		<label for="bid_id">Bid ID:</label>
		<input type="text" id="bid_id" name="bid_id">
		
		<label for="auction_id">Auction ID:</label>
		<input type="text" id="auction_id" name="auction_id">
		
		<br>
		
		<input type="submit" value="Login">
		
		
		</form>
	 </div>
<body>

</body>
</html>