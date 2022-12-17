<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Results</title>
</head>
<body>
<br>
<br>
<br>
<%@ include file="nav.jsp"%>


<h1>Search Results</h1>
	<table>
	<c:forEach var = "musician" items = "${musicians}">
	<tr>
	<td><a href = "display.do?id=${musician.id}" > ${musician.name}</a></td>
	<td> ${musician.genre}</td>
	</tr>
	</c:forEach>
	</table>


</body>
</html>