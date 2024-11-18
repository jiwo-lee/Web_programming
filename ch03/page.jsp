<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Directives Tag</title>
</head>
<body>
	<%@ page import="java.util.Date, java.lang.Math" %>
	현재 날짜 :  <%=new Date()%><br>
	5의 제곱 : <%= Math.pow(5,2) %>
</body>
</html>