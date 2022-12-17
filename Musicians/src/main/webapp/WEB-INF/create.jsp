<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="nav.jsp"%>


<h1>Add a new fave</h1>

<form action="create.do" method="POST">
	<label for="name">Name</label>
	<input type="text" name="name"/>

	<label for="genre">Genre</label>
	<input type="text" name="genre"/>

	<label for="home">From</label>
	<input type="text" name="home"/>
	
	<br>
	
	<input type="radio" id="true" name="active" value="true"/>
	<label for="true">Active</label>
	<br>
	
	<input type = "radio" id="false" name = "active" value="false"/>
	<label for="false">Inactive</label>
	
	<br><br>

	<label for="about">About</label>
	<textarea rows="5" cols="50" name="about"></textarea>
	
	<br><br>
	
	<input type="submit" value="Submit"/>
</form>


</body>
</html>