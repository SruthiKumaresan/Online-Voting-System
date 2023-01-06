<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
<link rel ="stylesheet" type = "text/css" href = "style.css">
</head>
<%@ include file="navbar.jsp" %>>
<body>
<div class="form-container">
<form action="ContactUs" method="post">
<h3>Please fill the required details: </h3>
<label for="uName">Name:</label>
<input name="uName" id="uName" type = "text">
<br>

<label for="pNumber">Phone Number:</label>
<input name="pNumber" id="pNumber" type = "number">
<br>

<label for="email">Email:</label>
<input name="email" id="email" type = "email">
<br>

<label for="comment">Comment:</label>
<textarea  name="comment" id="comment" rows="4" cols="8"></textarea>
<br>

<button type="submit">Submit</button>
<br>

</form>
</div>
</body>
</html>