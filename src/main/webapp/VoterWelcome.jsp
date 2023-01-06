<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Voter Welcome</title>
<link rel ="stylesheet" type = "text/css" href = "style.css">
</head>
<%@ include file= "navbar.jsp" %>
<body>
<div class="form-container">
<form action="Vote" method="post">
<h3>Enter Your Voter Card Number</h3>
<label for="VoterNumber">Voter ID</label>
<br>
<input name="VoterNumber" id="VoterNumber" type = "text">
<br>
<label for="partie">Choose your Partie:</label>
<br>
<select name="partie" id="partie">

<option value="Aam Aadmi">Aam Aadmi Party</option>
<option value="BJP">BJP</option>
<option value="BSP">BSP</option>
<option value="congress">Congress</option>
<option value="cpi">CPI</option>

</select>
<br>
<button type="submit">Submit</button>
</form>
</div>
</body>
</html>