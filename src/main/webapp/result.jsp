<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.sql.DriverManager"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Statement"%>
    <%@page import="java.sql.Connection"%>
    <%@page import="java.sql.PreparedStatement"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
<link rel ="stylesheet" type = "text/css" href = "style.css">

<%
   String a[] = new String[100];
   Class.forName("com.mysql.cj.jdbc.Driver");
   java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinedb","root","Sudhi@4048");
   PreparedStatement st = con.prepareStatement("select partie,count(partie) as c from vote group by partie");
   ResultSet rs = ((java.sql.Statement)st).executeQuery("select partie,count(partie) as c from vote group by partie");
   
   int i=0;
   while(rs.next()){
	   a[i] = rs.getString("c");
	   i++;
   }
%>
</head>
<%@ include file="AdminNavbar.jsp" %>
<body>
<div class="check-Table">

<table>
<tr>
<th>
Parties
</th>
<th>
Names
</th>
<th>
Votes
</th>
</tr>

<tr>
<td>
<img src="images/Aap.jpg" alt="Aam Aadmi">
</td>
<td>Aam Aadmi Party</td>
<td><%=a[0]==null?0:a[0]%></td>
</tr>

<tr>
<td>
<img src="images/bjp.jpg" alt="bjp">
</td>
<td>BJP</td>
<td><%=a[1]==null?0:a[1]%></td>
</tr>

<tr>
<td>
<img src="images/bsp.jpg" alt="bsp">
</td>
<td>BSP</td>
<td><%=a[2]==null?0:a[2]%></td>
</tr>

<tr>
<td>
<img src="images/congress.png" alt="congress">
</td>
<td>Congress</td>
<td><%=a[3]==null?0:a[3]%></td>
</tr>

<tr>
<td>
<img src="https://www.fotw.info/images/i/in%7Dcpi!2.gif" alt="CPI-banner">
</td>
<td>CPI</td>
<td><%=a[4]==null?0:a[4]%></td>
</tr>

</table>

</div>
</body>
</html>