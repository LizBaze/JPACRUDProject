<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<link rel="stylesheet" href="css/main.css" type="text/css">
</head>
<body>

<nav id="Nav" class="navbar navbar-expand-lg navbar-light fixed-top">
    <div class="container-fluid">
      <button
        class="navbar-toggler"
        type="button"
        data-mdb-toggle="collapse"
        data-mdb-target="#navbarExample01"
        aria-controls="navbarExample01"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarExample01">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item active">
            <a class="nav-link" aria-current="page" href="index.do">Home</a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" aria-current="page" href="createView.do">Add Artist</a>
          </li>
         
          <li class="nav-item active">
            <a class="nav-link" aria-current="page" href="searchView.do?type=genre">Search By Genre</a>
          </li>
         
          <li class="nav-item active">
            <a class="nav-link" aria-current="page" href="searchView.do?type=keyword">Search By Keyword</a>
          </li>
        </ul>
         <div id="hidden">Thanks for visiting!</div>
      </div>
    </div>
  </nav>

</body>
</html>