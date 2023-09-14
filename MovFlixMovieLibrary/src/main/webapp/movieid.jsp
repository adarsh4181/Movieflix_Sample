<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie ID</title>
</head>
<body>
<div align="center" style="background-color:#DBF9FC;">
<table border="1">
<tr>
<h2>searching Movie based on ID</h2>
</tr>
<form action="getBymovieid" method="get" name="m">  
<tr>
<td>Enter the Movie Id : </td>
<td><input type="text" name="MovieID"/><br/><br/> </td></tr>
 <tr>
 <td>
<input type="submit" value="Search"/></td> </tr>
  <%-- <font color="green">${ msg} </font> --%>
<a href="index"> Home</a> <br>
</form>
</table>
</div>
</body>
</html>