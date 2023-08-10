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
    <h1>Search Results</h1>
		
		<!-- Header for all clothes -->
	  <h1>Search All Clothes!</h1>
	  <form action="SearchResults.jsp" method="post">
	    
	  <label for="gender">Gender:</label>
		<select name="gender" id="gender">
		<option value="1">M</option>
  		<option value="2">F</option>
		</select>
	   <br>
	
	  <label for="age">Age:</label>
		<select name="age" id="age">
		<option value="1">Infants</option>
  		<option value="2">Kids</option>
		<option value="3">Teenagers</option>
		<option value="4">Young Adults</option>
		<option value="5">30-50</option>
		<option value="6">60+</option>
		
		</select>
	   <br>
	   
	   
	  <label for="brand">Brand:</label>
		<select name="brand" id="brand">
		<option value="1">Adidas</option>
		<option value="2">Calvin Klein</option>
		<option value="3">Nike</option>
  		<option value="4">Levis</option>
		<option value="5">Barbour</option>
		<option value="6">Birkenstock</option>
		<option value="7">Boden</option>
		 
		</select>
	   <br>
	   <br>
	   <input type="hidden" name="type" value="all">
	    <button type="submit">Submit</button>
	    </form>
	    
	   <!-- Header for tops-->
	  <h1>Search Top!</h1>
	  <form action="SearchResults.jsp" method="post">
	   
	  <label for="gender">Gender:</label>
		<select name="gender" id="gender">
		<option value="M">M</option>
  		<option value="F">F</option>
		</select>
	   <br>
	
	  <label for="age">Age:</label>
		<select name="age" id="age">
		<option value="Infants">Infants</option>
  		<option value="Kids">Kids</option>
		<option value="Teenagers">Teenagers</option>
		<option value="Young Adults">Young Adults</option>
		<option value="30-50">30-50</option>
		<option value="60+">60+</option>
		
		</select>
	   <br>
	   
	   
	  <label for="brand">Brand:</label>
		<select name="brand" id="brand">
		<option value="Adidas">Adidas</option>
		<option value="Calvin Klein">Calvin Klein</option>
		<option value="Nike">Nike</option>
  		<option value="Levis">Levis</option>
		<option value="Barbour">Barbour</option>
		<option value="Birkenstock">Birkenstock</option>
		<option value="Boden">Boden</option>
		 
		</select>
	   <br>
	   <br>
	   	   
	   	<label for="neck_type">Neck Type:</label>
		<select name="attr1" id="neck_type">
  		<option value="High">High</option>
  		<option value="Boat">Boat</option>
		<option value="Collared">Collared</option>
		</select>
	   <br>
	   
	    <label for="top_size">Size:</label>
	    <select name="attr2" id="top_size">
  		<option value="XS">XS</option>
  		<option value="S">S</option>
		<option value="M">M</option>
		<option value="L">L</option>
		<option value="XL">XL</option>
		</select>
	   <br>
	    
	    <label for="sleeve_length">Rise:</label>
		<select name="attr3" id="sleeve_length">
		<option value="none">none</option>
  		<option value="short">short</option>
		<option value="long">long</option>
		<option value="3/4">3/4</option>
		</select>
	   <br>
	    	<br>    
		<input type="hidden" name="type" value="top">
	    <button type="submit">Submit</button>
	  </form>
	  
	  <!-- Header for bottom -->
	  <h1>Search Bottoms!</h1>
	  <form action="SearchResults.jsp" method="post">
	  
	  <label for="gender">Gender:</label>
		<select name="gender" id="gender">
		<option value="M">M</option>
  		<option value="F">F</option>
		</select>
	   <br>
	
	  <label for="age">Age:</label>
		<select name="age" id="age">
		<option value="Infants">Infants</option>
  		<option value="Kids">Kids</option>
		<option value="Teenagers">Teenagers</option>
		<option value="Young Adults">Young Adults</option>
		<option value="30-50">30-50</option>
		<option value="60+">60+</option>
		
		</select>
	   <br>
	   
	   
	  <label for="brand">Brand:</label>
		<select name="brand" id="brand">
		<option value="Adidas">Adidas</option>
		<option value="Calvin Klein">Calvin Klein</option>
		<option value="Nike">Nike</option>
  		<option value="Levis">Levis</option>
		<option value="Barbour">Barbour</option>
		<option value="Birkenstock">Birkenstock</option>
		<option value="Boden">Boden</option>
		 
		</select>
	   <br>
	   <br>
	  
	    <label for="pants_type">Type:</label>
		<select name="attr1" id="pants_type">
		<option value="Activewear">Activewear</option>
  		<option value="Sweatpants">Sweatpants</option>
		<option value="Jeans">Jeans</option>
		
		</select>
	   <br>
	   
	    <label for="waist_length">Waist:</label>
		<select name="attr2" id="waist_length">
		<option value="XS">XS</option>
  		<option value="S">S</option>
		<option value="M">M</option>
		<option value="L">L</option>
		<option value="XL">XL</option>
		</select>
	   <br>
	   
	    <label for="rise_type">Rise:</label>
		<select name="attr3" id="rise_type">
		<option value="High">High</option>
  		<option value="Mid">Mid</option>
		<option value="Low">Low</option>
	
		</select>
	   <br>
	    	    
		<input type="hidden" name="type" value="bottoms">
	    <button type="submit">Submit</button>
	  </form>
	  
	  <!-- Header for footwear -->
	  <h1>Search Footwear!</h1>
	  <form action="SearchResults.jsp" method="post">
	  
	   <label for="gender">Gender:</label>
		<select name="gender" id="gender">
		<option value="M">M</option>
  		<option value="F">F</option>
		</select>
	   <br>
	
	  <label for="age">Age:</label>
		<select name="age" id="age">
		<option value="Infants">Infants</option>
  		<option value="Kids">Kids</option>
		<option value="Teenagers">Teenagers</option>
		<option value="Young Adults">Young Adults</option>
		<option value="30-50">30-50</option>
		<option value="60+">60+</option>
		
		</select>
	   <br>
	   
	   
	  <label for="brand">Brand:</label>
		<select name="brand" id="brand">
		<option value="Adidas">Adidas</option>
		<option value="Calvin Klein">Calvin Klein</option>
		<option value="Nike">Nike</option>
  		<option value="Levis">Levis</option>
		<option value="Barbour">Barbour</option>
		<option value="Birkenstock">Birkenstock</option>
		<option value="Boden">Boden</option>
		 
		</select>
	   <br>
	   <br>
	   
	   
	    <label for="type_of_footwear">Shoe Style:</label>
		<select name="attr1" id="type_of_footwear">
		<option value="Athletic Shoes">Athletic shoes</option>
  		<option value="Boots">Boots</option>
		<option value="Sneakers">Sneakers</option>
		<option value="Flats">Flats</option>
		</select>
	   <br>
	
	
	    <label for="size">Size:</label>
		<select name="attr2" id="size">
		<option value="1">1</option>
  		<option value="2">2</option>
		<option value="3">3</option>
		<option value="4">4</option>
  		<option value="5">5</option>
		<option value="6">6</option>
		<option value="7">7</option>
		<option value="8">8</option>		
		<option value="9">9</option>		
		<option value="10">10</option>		
		<option value="11">11</option>
		
		</select>
	   <br>
	   
	    <label for="lace_color">Lace Color:</label>
		<select name="attr3" id="lace_color">
		<option value="Black">Black</option>
  		<option value="Blue">Blue</option>
		<option value="Brown">Brown</option>
		<option value="Beige">Beige</option>
		<option value="Green">Green</option>
		<option value="Red">Red</option>

		</select>
	   <br>
	    	    
		<input type="hidden" name="type" value="footwear">
	    <button type="submit">Submit</button>
	  </form>
	<br>
	<br>
	    <form action="LandingPage.jsp" method="post">
	        <input type="submit" value="Logout">
	    </form>
	    
	   
        
  <%
  String type = request.getParameter("type") == null ? "all" : request.getParameter("type");
  String gender = request.getParameter("gender") == null ? "%" : request.getParameter("gender");
  String age = request.getParameter("age") == null ? "%" : request.getParameter("age");
  String brand = request.getParameter("brand") == null ? "%" : request.getParameter("brand");
  String attr1 = request.getParameter("attr1") == null ? "%" : request.getParameter("attr1");
  String attr2 = request.getParameter("attr2") == null ? "%" : request.getParameter("attr2");
  String attr3 = request.getParameter("attr3") == null ? "%" : request.getParameter("attr3");
  
   try {
      ApplicationDB db = new ApplicationDB();
      Connection con = db.getConnection();

      String query = "SELECT auction_id, current_price, end_time FROM clothes JOIN auction USING (manufacture_id)";

      if (!"all".equals(type)) {
    	  query += "JOIN " + type + " USING (manufacture_id) ";
    	  if ("top".equals(type)) {
              query += "WHERE AND Neck_type LIKE ? AND size LIKE ? AND sleeve_length LIKE ? ";
    	  }
    	  else if ("bottoms".equals(type)) {
    		  query += "WHERE type LIKE ? AND waist_length LIKE ? AND rise_type LIKE ? ";
    	  }
    	  else if ("footwear".equals(type)) {
    		  query += "WHERE type_of_footwear LIKE ? AND size LIKE ? AND lace_color LIKE ? ";
    	  }
          
      } 
      else {
    	  query += "WHERE ";
      }
   
   	  query += "brand LIKE ? AND gender LIKE ? AND age LIKE ?";

      PreparedStatement ps = con.prepareStatement(query);

      if (!"all".equals(type)) {
          ps.setString(1, attr1);
          ps.setString(2, attr2);
          ps.setString(3, attr3);
          ps.setString(4, brand);
          ps.setString(5, gender);
          ps.setString(6, age);
      }
      else {
    	  ps.setString(1, brand);
          ps.setString(2, gender);
          ps.setString(3, age);
      }

      ResultSet rs = ps.executeQuery();
	%>
      <table>
		<tr>    
			<td>Auction ID</td>
			<td>Current Price</td>
			<td>End Time</td>
		</tr>
			<%
			while (rs.next()) {
				out.print("<tr>");    
					out.print("<td><a href='Auction.jsp?auctionID=" + rs.getString("auction_id") + "'>" + rs.getString("auction_id") + "</a></td>");
					out.print("<td>$ " + rs.getString("current_price") + "</td>");
					out.print("<td>$ " + rs.getString("end_time") + "</td>");
				out.print("</tr>");
			}
			%>
	 </table>
	<%
      rs.close();
      ps.close();
      con.close();
      
	}catch (Exception e) {
	out.print(e);
	}
   
	%>
</body>
</html>