<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Action Tag</title>
</head>
<body>
	<%
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
	%>
	
	<div class = "Text-center">
	<%	
		for (int i = 1; i <= 9; i++) 			
				out.println(num2 +" * "+ i + " = " + num2*i + "<br><br>");	
	%>
	</div>
	
	<%
		out.println("-------------------------------------------------------------------------------------------<br>");
		for (int j = 1; j <= 9; j++) 			
			out.println(num1 +" * "+ j + " = " + num1*j + "<br>");
	%>
	
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