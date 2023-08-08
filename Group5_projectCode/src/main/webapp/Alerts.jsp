<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="group5.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*,java.text.SimpleDateFormat"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Alerts</title>
</head>
<body>

<center>
<h1 style="font-size:35px"><strong> Alert List</strong></h1>

<h2 style="font-size:25px"><strong> Set Item Alert</strong></h2>
<h3 style="font-size:18px"><strong> Set an alert for a clothing item you are interested in (Select One)!</strong></h3>
<form action="AlertConfirmation.jsp">
	<table>
	<tr>    
		<td><input type="checkbox" id="checkBox" name="checkBox" value="1" checked></td><td><label> Tops</label></td>
	</tr>

	<tr>
		<td><input type="checkbox" id="checkBox" name="checkBox" value="2"></td><td><label> Bottoms</label></td>
	</tr>

	<tr>
		<td> <input type="checkbox" id="checkBox" name="checkBox" value="3"></td><td><label> Footwear</label></td>
	</tr>
	</table>
	<br>
  <input type="submit" style="font-size:20px;height:30px;width:150px" value="Place Alert">
</form>
<br></br>


	<h1>Your Alerts!</h1>
        <%
	    	try {
	    		
	    		
	    		ApplicationDB db = new ApplicationDB();
	    		Connection con = db.getConnection();
	    		
	    		//create SQL statement
	    		Statement stmt = con.createStatement();
	    		//select query
	    		String alertQuery = "SELECT DISTINCT a.username, a.alert_id FROM alerts a JOIN auction ON a.alert_id = auction.manufacture_id";
	    		//execute the created query
	    		ResultSet result = stmt.executeQuery(alertQuery);
	    		//gets username of active session
	    		String username = (String)session.getAttribute("username");
	    		
	    		//Make an HTML table to show the results in:
				out.print("<table>");

				//make a row
				out.print("<tr>");
				//make a column
				out.print("<td>");
				//print out column header
				out.print("<center>");
				out.print("Your Current Alerts:");
				out.print("</center>");
				
				out.print("</td>");
				//make a column
				out.print("<td>");
				
				out.print("</td>");
				out.print("</tr>");
	    		
	    		while(result.next()) {
	    			//only print necessary results
		    		//make a row
					out.print("<tr>");
					//make a column
					out.print("<td>");
	    			String match = result.getString(1);
	    			int type = result.getInt(2);
	    			if(match.equals(username)){
	    				if(type == 1){
	    					out.print("You have an alert for tops, there are currently available tops in the auction!");
	    				}else if(type == 2){
	    					out.print("You have an alert for bottoms, there are currently available items of this sort in the auction");
	    				}else if(type == 3){
	    					out.print("You have an alert for footwear, footwear items are currenlty available in the auction");
	    				}
	    				
	    			//will need to add logic for winning auctions and being outbid
	    			}
	    			
	    		}
	    		
	    		out.print("</table>");

		    	db.closeConnection(con);				
	    	} catch(Exception e) {
	    		out.print(e);
	    	}
	    
	    %>

<br><br>
	<form action="HomePage.jsp">
		<input type="submit" style="font-size:20px;height:30px;width:150px" value="Main Menu">
	</form>
<br><br>

<br></br>
</center>
</body>


</html>