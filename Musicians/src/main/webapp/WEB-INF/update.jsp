<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update</title>
</head>
<body>
<%@ include file="nav.jsp"%>

<h1>Update</h1>

<form action="update.do" method="POST">
	<input type="hidden" value="${musician.id}" name="id"/>
	
	<label for="name">Name</label>
	<input type="text" name="name" value="${musician.name}"/>

	<label for="genre">Genre</label>
	<input type="text" name="genre"  value="${musician.genre}"/>

	<label for="home">From</label>
	<input type="text" name="home" value="${musician.home}"/>
	
	<br>
	
	<c:choose>
	<c:when test="${musician.active}">
	
		<input type="radio" id="true" name="active" value="true" checked="checked"/>
		<label for="true">Active</label>
		<br>
	
		<input type = "radio" id="false" name = "active" value="false"/>
		<label for="false">Inactive</label>
	</c:when>
	<c:otherwise>
		<input type="radio" id="true" name="active" value="true"/>
		<label for="true">Active</label>
		<br>
	
		<input type = "radio" id="false" name = "active" value="false"  checked="checked"/>
		<label for="false">Inactive</label>
	</c:otherwise>
	</c:choose>
	
	
	<br><br>

	<label for="about">About</label>
	<textarea rows="5" cols="50" name="about">${musician.about}</textarea>
	
	<br><br>
	
	<input type="submit" value="Submit"/>
	</form>

</body>
</html>