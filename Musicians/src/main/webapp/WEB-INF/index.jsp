<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Musicians</title>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<link rel="stylesheet" href="css/main.css" type="text/css">
</head>

<body id="FullPagePlusImage" >
<%@ include file="nav.jsp"%>
<div class="container">
<br>
<br>
<br>

	<h1 id="center">All your favorites</h1>
	
	<div id="center">
	
	<table id="transparentbackground" class="table .table-sm">
	<c:forEach var = "musician" items = "${musicians}">
	<tr>
	<td><a href = "display.do?id=${musician.id}" > ${musician.name}</a></td>
	<td> ${musician.genre}</td>
	</tr>
	</c:forEach>
	</table>
	
	</div>
	<br>
	
	
</div>
</body>
</html>