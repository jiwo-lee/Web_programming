<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Directives Tag</title>
</head>
<body>
	<h1> include 디렉티브 예제 </h1>
	
	<%@ include file="includeTop3.jsp" %>  
	
	<div class="text-center"> include 지시자의 Body 부분입니다. </div>
	
	<%@ include file="includeBottom3.jsp" %>  
	
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