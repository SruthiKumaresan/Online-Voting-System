<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Admin </title>
<link rel ="stylesheet" type = "text/css" href = "style.css">
<%@ include file="navbar.jsp" %>>
</head>
<body>
<div class="form-container">
<form action="AdminLogin" method="post">
<h3>Admin LogIn</h3>
<label for="aName">Name:</label>
<input name="aName" id="aName" type = "text">
<br>
<label for="pWord">Password:</label>
<input name="pWord" id="pWord" type = "password">
<br>
<button type="submit">Login</button>
</form>
</div>
</body>
</html>