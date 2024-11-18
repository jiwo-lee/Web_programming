<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Directives Tag</title>
</head>
<body>
	<%@ include file="header2.jsp" %>  
  
	현재 시간 :  <%= java.util.Calendar.getInstance().getTime() %>  
	<div class="text-center">
			<% int year = java.util.Calendar.getInstance().get(java.util.Calendar.YEAR);
			int month = java.util.Calendar.getInstance().get(java.util.Calendar.MONTH)+1;
			int day = java.util.Calendar.getInstance().get(java.util.Calendar.DATE); %>
			<p class="text-success"> 현재 날짜 : <% out.println(year + "년 " + month + "월 " + day + "일"); %> </p>
		<div class="container">
			<hr>
				<a href="welcome.jsp"><button type="button" class="btn btn-outline-primary">홈 돌아가기</button></a>
			<hr>
		</div>
	</div>
<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>