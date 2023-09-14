<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<%@ page isELIgnored="false" %>
<meta charset="ISO-8859-1">
<title>Movie Details</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
<body>
<div align="center" style="background-color:#DBF9FC;">
<h2 colspan="2" align="center">Movie Details</h2>
<%-- <h2>${msg}</h2> --%>
<c:set var = "message" value = "${msg}"/>
<c:set var = "type" value = "${searchtype}"/>
<c:choose>
<c:when test="${type=='id'}">
<c:choose>
<c:when test="${message}">
<table border="1">
    			<tr>
                    <td>Movie Id:  </td>
                    <td>${m.movieID}</td>
                </tr>
                <tr>
                    <td>Movie Name:</td>
                    <td>${m.movieName}</td>
                </tr>
                <tr>
                    <td>Collections: </td>
                    <td>${m.collection}</td>
                </tr>
                
                </table>
                <a href="index"> Home</a> <br>
                </div>
                
</c:when>
<c:otherwise>
<h2 style="background-color:red;">
<c:out value = "${'Movie ID Not Present'}"/></h2>
<a href="index"> Home</a> <br>
</c:otherwise>
</c:choose>
</c:when>
<c:when test="${type=='name'}">
<c:choose>
<c:when test="${message}">
<c:forEach items="${m}" var="m">
<table border="1">
    			<tr>
                    <td>Movie Id:  </td>
                    <td>${m.movieID}</td>
                </tr>
                <tr>
                    <td>Movie Name:</td>
                    <td>${m.movieName}</td>
                </tr>
                <tr>
                    <td>Collections: </td>
                    <td>${m.collection}</td>
                </tr>
                
                </table>
                  </c:forEach>   
                <a href="index"> Home</a> <br>
                </div>
           
</c:when>
<c:otherwise>
<h2 style="background-color:red">
<c:out value = "${'Movie Name Not Present'}"/></h2>
<a href="index"> Home</a> <br>
</c:otherwise>
</c:choose>
</c:when>
<c:when test="${type=='collections'}">
<c:choose>
<c:when test="${message}">
<c:forEach items="${m}" var="m">
<table border="1">
    			<tr>
                    <td>Movie Id:  </td>
                    <td>${m.movieID}</td>
                </tr>
                <tr>
                    <td>Movie Name:</td>
                    <td>${m.movieName}</td>
                </tr>
                <tr>
                    <td>Collections: </td>
                    <td>${m.collection}</td>
                </tr>
                
                </table>
                  </c:forEach>   
                <a href="index"> Home</a> <br>
                </div>
           
</c:when>
<c:otherwise>
<h2 style="background-color:red;">
<c:out value = "${'Movie Collections Not Present'}"/></h2>
<a href="index"> Home</a> <br>
</c:otherwise>
</c:choose>
</c:when>
</c:choose>
    
</body>
</html>