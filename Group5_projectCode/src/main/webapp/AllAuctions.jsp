<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="group5.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
    
   
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	</head>
	<body>	
	<center>
   <h1>All Auctions</h1>
<h2> Auctions List:</h2>
     <%
        try {
            // Get the database connection
            ApplicationDB db = new ApplicationDB();    
            Connection con = db.getConnection();

            Statement stmt = con.createStatement();

            // Retrieve all auction records from the database
            String allauctionquery = "SELECT * FROM auction JOIN CLOTHES USING (manufacture_id) ";
            ResultSet rs = stmt.executeQuery(allauctionquery);


            while (rs.next()) {
                String auctionId = rs.getString("auction_id");
                String brand = rs.getString("brand");
                String gender = rs.getString ("gender");
               
                out.print("<p><br><a href='Auction.jsp?auctionID=" + auctionId + "'>" + auctionId + "</a>" + ",&nbsp brand:  " + brand + ",&nbsp gender:  " + gender + "</p>");
            }

            // Close the resources
            rs.close();
            con.close();


        }catch (Exception e) {
			out.print(e);
		}
    %>
    </center>
	</body>
</html>