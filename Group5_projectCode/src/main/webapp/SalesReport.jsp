<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="group5.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Previously Selected Sales Report Shown Below:</title>
</head>
<body>

<%
	try {
		
			//Get the database connection
			ApplicationDB db = new ApplicationDB();	
			Connection con = db.getConnection();
		
			//these will turn into the appropriate queries
			String totalEarnings;
			String earningsPerItem;
			String earningsPerItemType;
			String earningsPerEndUser;
			String bestSellingItems;
			String bestBuyers;
			
			int reportType = Integer.valueOf(request.getParameter("reportStyle"));
			System.out.println(reportType);
			
	}
	catch (Exception e) {
		out.print(e);
	}





%>


		<br><br>
				<form action="AdminHomePage.jsp">
					<input type="submit" style="font-size:20px;height:30px;width:150px" value="Main Menu">
				</form>
		<br><br>

</body>
</html>