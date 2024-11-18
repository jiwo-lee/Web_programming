<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Action Tag</title>
</head>
<body>
	<%@ page import="java.util.Date" %>
	<%@ page import="java.text.SimpleDateFormat" %>
	<%
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
		
		for (int i = 1; i <= 9; i++) {
				out.println(num1 +" * "+ i + " = " + num1*i + "&nbsp; &nbsp;" + "<strong><u>" + num2 + " * " + i + " = " + num2*i + "</u></strong><br>");		
				out.println("---------------------------------<br>"); }
	%>
	오늘의 날짜 및 시간<br><br>
	<%
		Date day = new java.util.Date();
		String ampm;
		int hour = day.getHours();
		int min = day.getMinutes();
		int sec = day.getSeconds();
		
		if (hour < 12) ampm = "오전";
		else {
			ampm = "오후";
			if (hour != 12) hour = hour - 12;
		}
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy. MM. dd.");
		String formatedNow = formatter.format(day);
		out.println(formatedNow);
		out.println("  " + ampm + "  " + hour + ":" + min + ":" + sec);
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