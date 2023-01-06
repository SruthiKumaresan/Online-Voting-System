<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Voting System</title>
<link rel ="stylesheet" type = "text/css" href = "style.css">
</head>
<%@ include file= "navbar.jsp" %>
<body>
<div class="form-container">
<form action="VoterLogin" method="post">
<h3>Enter Your Voter Card Number</h3>
<label for="VoterNumber">Voter ID</label>
<br>
<input name="VoterNumber" id="VoterNumber" type = "text">
<br>
<button type="submit">Login</button>
<br>
<a href="Admin.jsp">Admin</a>
</form>
</div>
</body>
</html>