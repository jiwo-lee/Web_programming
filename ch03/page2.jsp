<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Directives Tag</title>
</head>
<body>
	<%@ page import="java.util.Date, java.lang.Math" %>
	<ol>
	<li><p class="fw-bold"> 현재 날짜 : <%=new Date()%> </p></li>
	<li><p class="fst-normal">5의 제곱 : <%= Math.pow(5,2) %></p></li>
	<li><p class="fw-light"> sin(30) 값 : <%= Math.sin(Math.PI/6) %> </p></li>
	<li><p class="fst-normal"> cos(0) 값 : <%= Math.cos(0) %> </p></li>
	<li><p class="fst-italic"> 절대값(-5) : <%= Math.abs(-5) %> </p></li>
	</ol>
	<br>
	<div class="container">
		<div class="text-center">
			<hr>
				<a href="welcome.jsp"><button type="button" class="btn btn-outline-primary">홈 돌아가기</button></a>
			<hr>
		</div>
	</div>
<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>