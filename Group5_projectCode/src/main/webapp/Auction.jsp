<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="group5.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
    
    <%
    	if (session == null || session.getAttribute("username") == null) {
    		response.sendRedirect("LandingPage.jsp");
    	}
    
    	if (request.getParameter("auctionID") == null) {
    		response.sendRedirect("HomePage.jsp");
    	}
    %>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Auction <%out.print(request.getParameter("auctionID"));%>></title>
	</head>
	<body>		
    <% 
		try {
    		//Get the database connection
   			ApplicationDB db = new ApplicationDB();	
   			Connection con = db.getConnection();
			
   			String query = "SELECT * FROM auction JOIN clothes USING (manufacture_id)  WHERE auction_id = ?";

			PreparedStatement ps = con.prepareStatement(query);	
			//prepare the statements
			ps.setInt(1, Integer.valueOf(request.getParameter("auctionID")));
			
			// Execute the querys
			ResultSet rs = ps.executeQuery();
			
			int category = -1;
			
			if (rs.next()) {
				String subcategoryQuery = "SELECT * FROM top WHERE manufacture_id = ?";
				ps = con.prepareStatement(subcategoryQuery);
				ps.setInt(1, rs.getInt("manufacture_id"));
				ResultSet scrs = ps.executeQuery();
				
				if (!scrs.next()) {
					subcategoryQuery = "SELECT * FROM bottoms WHERE manufacture_id = ?";
					ps = con.prepareStatement(subcategoryQuery);
					ps.setInt(1, rs.getInt("manufacture_id"));
					scrs = ps.executeQuery();
					
					if (!scrs.next()) {
						subcategoryQuery = "SELECT * FROM footwear WHERE manufacture_id = ?";
						ps = con.prepareStatement(subcategoryQuery);
						ps.setInt(1, rs.getInt("manufacture_id"));
						scrs = ps.executeQuery();
						
						if (!scrs.next()) {
							response.sendRedirect("HomePage.jsp");
						}
						else {
							category = 3;
						}
					}
					else {
						category = 2;
					}
				}
				else {
					category = 1;
				}					
	%>		
		<table>
				<tr>    
					<td>Seller</td><td><%=rs.getString("seller_username")%></td>
				</tr>
	<%
					if (category == 1) {
	%>
				<tr>
					<td>Category</td><td>Top</td>
				</tr>
				<tr>
					<td>Neck Type</td><td><%=scrs.getString("Neck_type")%></td>
				</tr>
				<tr>
					<td>Size</td><td><%=scrs.getString("size")%></td>
				</tr>
				<tr>
					<td>Sleeve Length</td><td><%=scrs.getString("sleeve_length")%></td>
				</tr>
	<%
					}
					else if (category == 2) {
	%>
				<tr>
					<td>Category</td><td>Bottom</td>
				</tr>
				<tr>
					<td>Type</td><td><%=scrs.getString("type")%></td>
				</tr>
				<tr>
					<td>Waist Length</td><td><%=scrs.getString("waist_length")%></td>
				</tr>
				<tr>
					<td>Rise Type</td><td><%=scrs.getString("rise_type")%></td>
				</tr>
	<%
					}
					else {
	%>
				<tr>
					<td>Category</td><td>Footwear</td>
				</tr>
				<tr>
					<td>Type of Footwear</td><td><%=scrs.getString("type_of_footwear")%></td>
				</tr>
				<tr>
					<td>Size</td><td><%=scrs.getString("size")%></td>
				</tr>
				<tr>
					<td>Lace Color</td><td><%=scrs.getString("lace_color")%></td>
				</tr>
	<%
					}
	%>
				<tr>
					<td>Brand</td><td><%=rs.getString("brand")%></td>
				</tr>
				<tr>
					<td>Gender</td><td><%=rs.getString("gender")%></td>
				</tr>
				<tr>
					<td>Age</td><td><%=rs.getString("age")%></td>
				</tr>
				<tr>
					<td>Start Time</td><td><%=rs.getDate("start_time").toString()%></td>
				</tr>
				<tr>
					<td>End Time</td><td><%=rs.getDate("end_time").toString()%></td>
				</tr>
				<tr>
					<td>Current Price</td><td><%=rs.getDouble("current_price")%></td>
				</tr>
				<tr>
					<td>Minimum Bid Increment</td><td><%=rs.getDouble("minimum_bid_increment")%></td>
				</tr>
		</table>
    <%
			}
			else {
				response.sendRedirect("HomePage.jsp");
			}
		}
		catch (Exception e) {
			out.print(e);
		}
	%>
	</body>
</html>