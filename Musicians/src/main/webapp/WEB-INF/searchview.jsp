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


<body id="FullPagePlusImage" >
<%@ include file="nav.jsp"%>

<br>
<br>
<br>
<br>
<br>

<div class="container" id="center">


<c:choose>
	<c:when test="${type == 'keyword'}">
		<h2>Search By Keyword</h2>
		
		<form action="search.do" >
	
		<input type="text" name="keyword">
	
		<input id="Button" class="btn btn-primary" type="submit" value="Submit"/>
	
		</form>
	</c:when>
	<c:otherwise>
		<h2>Search By Genre</h2>
		<form action="genre.do" >
	
		<input type="text" name="input">
	
		<input id="Button" class="btn btn-primary" type="submit" value="Submit"/>
	
		</form>
		
	</c:otherwise>
</c:choose>	
	
</div>
</body>
</html>