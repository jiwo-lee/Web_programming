<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.io.*,java.util.*"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Implicit Objects</title>
</head>
<body>
	<%
		response.setIntHeader("Refresh", 5);

		Calendar calendar = new GregorianCalendar();

		String am_pm;
		int hour = calendar.get(Calendar.HOUR);
		int minute = calendar.get(Calendar.MINUTE);
		int second = calendar.get(Calendar.SECOND);

		if (calendar.get(Calendar.AM_PM) == 0)
			am_pm = "AM";
		else
			am_pm = "PM";
		String CT = hour + ":" + minute + ":" + second + " " + am_pm;
		out.println("현재 시간은 " + CT + "\n");
	%>
	
	<p><a href="response_data2.jsp?check=1">Google 홈페이지로 이동하기 </a>
	<p><a href="response_data2.jsp?check=2">Naver 홈페이지로 이동하기 </a>
	
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