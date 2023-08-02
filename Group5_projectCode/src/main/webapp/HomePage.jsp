<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

    <title>Welcome</title>
</head>
<body>

    <h1>Welcome!</h1>
    <p>You have logged in!</p>
    
    <!-- Header for viewing items -->
	  <h1>View items currently up for auction</h1>
	  <p>Insert item tags (i.e blue, 32, high rise):</p>
	  <input type="text" placeholder="Enter tags...">
	  <button type="button">Search</button>
	
	  <!-- Header for selling a bottom -->
	  <h1>Sell Bottoms!</h1>
	  <form action="AuctionItems.jsp" method="post">
	    <label for="pants_type">Type:</label>
	    <input type="text" id="pants_type" name="type" required><br>
	
	    <label for="waist_length">Waist:</label>
	    <input type="text" id="waist_length" name="waist_length" required><br>
	
	    <label for="rise_type">Rise:</label>
	    <input type="text" id="rise_type" name="rise_type" required><br>
	
	    <label for="pants_price">Price:</label>
	    <input type="number" id="pants_price" name="pants_price" required><br>
	
	    <button type="submit">Place</button>
	  </form>
	  
	  <!-- Header for selling a top -->
	  <h1>Sell Tops!</h1>
	  <form action="AuctionItems.jsp" method="post">
	    <label for="type_of_collar">Collar Type:</label>
	    <input type="text" id="pants_type" name="type" required><br>
	
	    <label for="size">Size:</label>
	    <input type="text" id="size" name="size" required><br>
	
	    <label for="sleeve_length_inches">Rise:</label>
	    <input type="text" id="sleeve_length_inches" name="sleeve_length_inches" required><br>
	
	    <label for="top_price">Price:</label>
	    <input type="number" id="top_price" name="top_price" required><br>
	
	    <button type="submit">Place</button>
	  </form>
	  
	  <!-- Header for selling footwear -->
	  <h1>Sell Footwear!</h1>
	  <form action="AuctionItems.jsp" method="post">
	    <label for="type_of_footwear">Shoe Style:</label>
	    <input type="text" id="type_of_footwear" name="type" required><br>
	
	    <label for="size">Size:</label>
	    <input type="text" id="size" name="size" required><br>
	
	    <label for="lace_color">Lace Color:</label>
	    <input type="text" id="lace_color" name="lace_color" required><br>
	
	    <label for="footwear_price">Price:</label>
	    <input type="number" id="footwear_price" name="footwear_price" required><br>
	
	    <button type="submit">Place</button>
	  </form>
	
	  <!-- Footer buttons -->
		<form action="DeleteAccount.jsp" method="post">
	        <input type="submit" value="Delete Account">
	    </form>
	    
	    <form action="FAQs.jsp" method="post">
	        <input type="submit" value="FAQ's">
	    </form>
	    
	    <form action="Alerts.jsp" method="post">
	        <input type="submit" value="View Alerts">
	    </form>
	    
	    <form action="LandingPage.jsp" method="post">
	        <input type="submit" value="Logout">
	    </form>
	    
	   
</body>
</html>
