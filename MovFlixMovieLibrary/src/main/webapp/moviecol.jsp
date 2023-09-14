<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div align="center" style="background-color:#DBF9FC;">
<table border="1">
<%-- <h2>${msg}</h2> --%>
<form action="getBymoviecol" method="get" name="m">  
<tr>
<td>From : </td>
<td> <input type="text" name="collectionmin"/><br/><br/>  </td>
</tr>
<tr>
<td>To : </td>
<td> <input type="text" name="collectionmax"/><br/><br/>  </td>
</tr>
<tr>
<td>
<input type="submit" value="Search"/> </td></tr>
  <%-- <font color="green">${ msg} </font> --%>
<a href="index"> Home</a> <br>
</form>
</table>
</div>

</body>
</html>