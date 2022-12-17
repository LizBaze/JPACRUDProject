<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create</title>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<link rel="stylesheet" href="/../css/main.css" type="text/css">
</head>


<body id="FullPage">
<%@ include file="nav.jsp"%>
<br>
<br>
<br>
<br>

<div class="container">

<h1>Add a new fave</h1>

<form action="create.do" method="POST">
	<label for="name">Name</label>
	<input type="text" name="name" required/>

	<label for="genre">Genre</label>
	<input type="text" name="genre"/>

	<label for="home">From</label>
	<input type="text" name="home"/>
	
	<br><br>
	
	<label for="imageurl">Image URL</label>
	<textarea rows="1" name="imageUrl">${musician.imageUrl}</textarea>
	
	<br><br>
	
	<label for="about">About</label>
	<br>
	<textarea rows="5" name="about"></textarea>
	
	<br>
	
	<input type="radio" id="true" name="active" value="true" checked="checked"/>
	<label for="true">Active</label>
	
	<br>
	
	<input type = "radio" id="false" name = "active" value="false"/>
	<label for="false">Inactive</label>
	
	<br><br>

	
	
	<br><br>
	
	<input id="Button" class="btn btn-primary" type="submit" value="Submit"/>
</form>
</div>

</body>
</html>