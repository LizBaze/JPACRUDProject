<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Results</title>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<link rel="stylesheet" href="/../css/main.css" type="text/css">
</head>


<body id="FullPage">
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