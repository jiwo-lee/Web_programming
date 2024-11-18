<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Action Tag</title>
</head>
<body>
	<h4>구구단 출력하기</h4>	
	<jsp:forward page="forward_date2.jsp" >	
		<jsp:param name="num1" value="5" />
		<jsp:param name="num2" value="6" />
	</jsp:forward>	
<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>