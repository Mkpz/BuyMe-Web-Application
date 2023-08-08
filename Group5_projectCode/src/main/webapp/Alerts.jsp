<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
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

<br><br>
	<form action="HomePage.jsp">
		<input type="submit" style="font-size:20px;height:30px;width:150px" value="Main Menu">
	</form>
<br><br>

<br></br>
</center>
</body>


</html>