<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Musicians</title>
</head>
<body>
<%@ include file="nav.jsp"%>
<br>
<br>
	<h1>All your favorites</h1>

	<table>
	<c:forEach var = "musician" items = "${musicians}">
	<tr>
	<td><a href = "display.do?id=${musician.id}" > ${musician.name}</a></td>
	<td> ${musician.genre}</td>
	</tr>
	</c:forEach>
	</table>
	
	<form action="createView.do">
	<input type="submit" id="create" value="Add New Fave!"/>
	</form>
	
	
</body>
</html>