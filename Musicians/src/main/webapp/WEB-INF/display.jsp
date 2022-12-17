<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${musician.name}</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<link rel="stylesheet" href="/../css/main.css" type="text/css">
</head>
<body id="FullPage">
<%@ include file="nav.jsp"%>
<div class="container">
<br>
<br>
<br>
<br>



  <div class="row">
    <div class="col-sm">
		<img id="DisplayImage" src="${musician.imageUrl }">
      
    </div>
    
    <div class="col-sm">
		<h1>${musician.name}</h1>
		<h3>${musician.genre}</h3>
		<h3>${musician.home}</h3>
      
    </div>
  </div>
</div>
<br>
<br>

<h4 id="transparentbackground" class="container">${musician.about}</h4>







<div class="container">
<table>
	<tr>
		<td>
			<form action="updateView.do" method="GET">
				<input type="hidden" name="id" value="${musician.id}"/>
				<input id="Button" class="btn btn-primary" type="submit" value="Update"/>
			</form>
		</td>

		<td>
			<form action = "delete.do?id=${musician.id}" method="POST">
				<input id="Button"  class="btn btn-primary" type="submit" value="Delete"/>
			</form>
		</td>
	</tr>
</table>
</div>
	
</body>
</html>