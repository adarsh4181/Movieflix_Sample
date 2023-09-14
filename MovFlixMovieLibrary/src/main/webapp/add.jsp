<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<%@ page isELIgnored="false" %>
<meta charset="ISO-8859-1">
<title>Add Page</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

</head>
<body>
<c:set var = "message" value = "${msg}"/>

<div align="center" style="background-color:#DBF9FC;">
        <form action="success" method="post">
            <table border="1">
                <tr>
                    <td colspan="2" align="center"><h2>Adding New Movies</h2></td>
                </tr>
                
                <tr>
                    <td> Movie ID: </td>
                    <td><input type="text" name="MovieID" /></td>
                </tr>
                <tr>
                    <td>Movie Name: </td>
                    <td><input type="text" name="MovieName" /></td>
                </tr>
                <tr>
                    <td> Collection: </td>
                    <td><input type="text" name="collection" /></td>
                </tr>
                
                
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Add" /></td>
                </tr>
             
                
			<a href="admin.jsp"> Home</a> <br>
            </table>
        </form>
    </div>
 <%-- <c:choose>
<c:when test="${message=='Movie Added'}">
<h2>
<c:out value = "${'Movie Added Successfully'}"/></h2>
<a href="admin.jsp"> Home</a> <br>

</c:when>
</c:choose> --%>
</body>
</html>