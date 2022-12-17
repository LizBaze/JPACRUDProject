<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${musician.name}</title>
</head>
<body>
<%@ include file="nav.jsp"%>
<br>
<br>
<br>
<br>

<h1>${musician.name}</h1>
<img src="${musician.imageUrl }">
<h3>${musician.genre}</h3>
<h3>${musician.home}</h3>
<p>${musician.about}</p>



<table>
	<tr>
		<td>
			<form action="updateView.do" method="GET">
				<input type="hidden" name="id" value="${musician.id}"/>
				<input type="submit" value="Update"/>
			</form>
		</td>

		<td>
			<form action = "delete.do?id=${musician.id}" method="POST">
				<input type="submit" value="Delete"/>
			</form>
		</td>
	</tr>
</table>
	
	
</body>
</html>