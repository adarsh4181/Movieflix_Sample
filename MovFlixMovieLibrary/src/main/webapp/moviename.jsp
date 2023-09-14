<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Movie By Name</title>
</head>
<body>
<div align="center" style="background-color:#DBF9FC;">
<%-- <h2>${msg}</h2> --%>
<table border="1">
<form action="getBymoviename" method="get" name="m">  
<tr>
<td>Enter the Movie Name : </td>
<td><input type="text" name="movieName"/><br/><br/> </td>
 </tr>
 
 <td>
<input type="submit" value="Search"/> </td>
  <%-- <font color="green">${ msg} </font>--%>
  <a href="index"> Home</a> <br>
</form>
</table>
</div>
</body>
</html>