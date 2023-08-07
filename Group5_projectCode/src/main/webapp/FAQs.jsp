<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ Page</title>
</head>
<body>

<h1>Welcome To Frequently Asked Questions</h1>

<form action="SubmitQuestionServlet" method="post">
    <label for="newQuestion">Ask a question:</label><br>
    <input type="text" id="newQuestion" name="newQuestion" required><br>
    <input type="submit" value="Submit">
</form>

<!-- hello -->


</body>
</html>
