<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Registration</title>
<link rel ="stylesheet" type = "text/css" href = "style.css">
</head>
<%@ include file= "navbar.jsp" %>
<body>
<div class="form-container">
<form action ="Register" method="post">
<h4> Please fill the required details: </h4>
<label for="uName">Name:</label>
<input name="uName" id="uName" type = "text">
<br>

<label for="pNumber">Phone Number:</label>
<input name="pNumber" id="pNumber" type = "number">
<br>

<label for="email">Email:</label>
<input name="email" id="email" type = "email">
<br>

<label for="cardNumber">Voter Number:</label>
<input  name="cardNumber" id="cardNumber" type="text">
<br>
<label for="address">Address:</label>
<textarea  name="address" id="address" rows="4" cols="8"></textarea>
<br>
<label for="dob">Date Of Brith:</label>
<input name="dob" id="dob" type = "date">
<br>
<button type="submit">Register</button>
<br>

</form>
</div>
</body>
</html>