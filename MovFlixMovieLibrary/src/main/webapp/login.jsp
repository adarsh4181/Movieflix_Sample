<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body >
<div align="center" style="background-color:#DBF9FC;">
<table border="1">
<tr>

<h2>Admin Login</h2>
</tr>
 <form action="checklogin" method="post">  
 <tr>
 <td>Email:</td>
<td><input type="text" name="email"/><br/><br/> </td>
</tr>
<tr>
<td>
Password:</td>
<td><input type="password" name="password"/><br/><br/>  </td>
</tr>
<tr>
<td>
<input type="submit" value="login"/> </td> </tr>
</form> 
</div>
</table>
</body>
</html>