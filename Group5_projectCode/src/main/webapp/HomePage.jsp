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
	
	  <!-- Header for selling a top -->
	  <h1>Sell Tops!</h1>
	  <form action="CreateAuction.jsp" method="post">
	    
	    
	    <label for="gender">Gender:</label>
		<select name="attr4" id="gender">
		<option value="M">M</option>
  		<option value="F">F</option>
		</select>
	   <br>
	
	  <label for="age">Age:</label>
		<select name="attr5" id="age">
		<option value="Infants">Infants</option>
  		<option value="Kids">Kids</option>
		<option value="Teenagers">Teenagers</option>
		<option value="Young Adults">Young Adults</option>
		<option value="30-50">30-50</option>
		<option value="60+">60+</option>
		
		</select>
	   <br>
	   
	   
	  <label for="brand">Brand:</label>
		<select name="attr6" id="brand">
		<option value="Adidas">Adidas</option>
  		<option value="Levis">Levis</option>
		<option value="Calvin Klein">Calvin Klein</option>
		<option value="Nike">Nike</option>
		<option value="Barbour">Barbour</option>
		<option value="Birkenstock">Birkenstock</option>
		<option value="Birkenstock">Boden</option>
		 
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
	    <button type="submit">Place</button>
	  </form>
	  
	  <!-- Header for selling a bottom -->
	  <h1>Sell Bottoms!</h1>
	  <form action="CreateAuction.jsp" method="post">
	  
	   <label for="gender">Gender:</label>
		<select name="attr4" id="gender">
		<option value="M">M</option>
  		<option value="F">F</option>
		</select>
	   <br>
	
	  <label for="age">Age:</label>
		<select name="attr5" id="age">
		<option value="Infants">Infants</option>
  		<option value="Kids">Kids</option>
		<option value="Teenagers">Teenagers</option>
		<option value="Young Adults">Young Adults</option>
		<option value="30-50">30-50</option>
		<option value="60+">60+</option>
		
		</select>
	   <br>
	   
	   
	  <label for="brand">Brand:</label>
		<select name="attr6" id="brand">
		<option value="Adidas">Adidas</option>
  		<option value="Levis">Levis</option>
		<option value="Calvin Klein">Calvin Klein</option>
		<option value="Nike">Nike</option>
		<option value="Barbour">Barbour</option>
		<option value="Birkenstock">Birkenstock</option>
		<option value="Birkenstock">Boden</option>
		 
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
	    <button type="submit">Place</button>
	  </form>
	  
	  <!-- Header for selling footwear -->
	  <h1>Sell Footwear!</h1>
	  <form action="CreateAuction.jsp" method="post">
	  
	    <label for="gender">Gender:</label>
		<select name="attr4" id="gender">
		<option value="M">M</option>
  		<option value="F">F</option>
		</select>
	   <br>
	
	  <label for="age">Age:</label>
		<select name="attr5" id="age">
		<option value="Infants">Infants</option>
  		<option value="Kids">Kids</option>
		<option value="Teenagers">Teenagers</option>
		<option value="Young Adults">Young Adults</option>
		<option value="30-50">30-50</option>
		<option value="60+">60+</option>
		
		</select>
	   <br>
	   
	   
	  <label for="brand">Brand:</label>
		<select name="attr6" id="brand">
		<option value="Adidas">Adidas</option>
  		<option value="Levis">Levis</option>
		<option value="Calvin Klein">Calvin Klein</option>
		<option value="Nike">Nike</option>
		<option value="Barbour">Barbour</option>
		<option value="Birkenstock">Birkenstock</option>
		<option value="Birkenstock">Boden</option>
		 
		</select>
	   <br>
	   <br>
	   
	   
	    <label for="type_of_footwear">Shoe Style:</label>
		<select name="attr1" id="type_of_footwear">
		<option value="Athletic shoes">Athletic shoes</option>
  		<option value="Boots">Boots</option>
		<option value="Sneakers">Sneakers</option>
		<option value="Flats">Flats</option>
		</select>
	   <br>
	
	
	    <label for="size">Size:</label>
		<select name="attr2" id="size">
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
	    <button type="submit">Place</button>
	  </form>
	<br>
	<br>
	  <!-- Footer buttons -->
		<form action="DeleteAccount.jsp" method="post">
	        <input type="submit" value="Delete Account">
	    </form>
	    <br>
	    <form action="FAQs.jsp" method="post">
	        <input type="submit" value="FAQ's">
	    </form>
	    <br>
	    <form action="Alerts.jsp" method="post">
	        <input type="submit" value="View Alerts">
	    </form>
	    <br>
	    <form action="LandingPage.jsp" method="post">
	        <input type="submit" value="Logout">
	    </form>
	    
	   
</body>
</html>
