<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body>
<!--  <h2>${b}</h2>-->
<div align="center" style="background-color:#DBF9FC;">
<form method="post">
<c:set var = "message" value = "${b}"/>
<c:choose>
<c:when test="${message}">
<div  align ="center">
<table border="1">
<tr>
<h2> Movie Admin Page</h2>
</tr>
<tr>
<td>
<a href="add"> Add Movie</a> </td>
<td>
<a href="modify"> Modify Movie</a></td>
</tr>
</table>
</div>
</c:when>
<c:otherwise>
<h2 style="background-color:red;">
<c:out value = "${'Please Check The Credentials'}"/></h2>
<a href="login"> Home</a> <br>
</c:otherwise>
</c:choose>
</form>
</div>
</body>
</html>