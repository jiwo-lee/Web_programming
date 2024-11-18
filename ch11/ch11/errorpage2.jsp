<%@ page contentType="text/html; charset=utf-8"%>
<%@ page errorPage="isErrorPage2.jsp"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Error</title>
</head>
<body>

	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="display-3">전송 결과</h1>
		</div>
	</div>
	
	<div class="container">
		<%
			request.setCharacterEncoding("UTF-8");
		
			String num1 = request.getParameter("num1");
			String num2 = request.getParameter("num2");
			int num12 = Integer.parseInt(num1);
			int num22 = Integer.parseInt(num2);
		%>
		<p><b> 숫자1: </b><span class="badge text-bg-danger"><%= num12 %></span>
		<p><b> 숫자2: </b><span class="badge text-bg-danger"><%= num22 %></span>
		
		<div class="text-center">
			<hr>
			<a href="welcome.jsp"><button type="button" class="btn btn-outline-primary">홈 돌아가기</button></a>
			<hr>
		</div>
	
	</div>

<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>