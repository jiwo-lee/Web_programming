<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Cookie</title>
</head>
<body>
<div class="container">
<div class="text-center">
	<hr>
	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");

		if (user_id.equals("admin") && user_pw.equals("admin1234")) {
			Cookie cookie_id = new Cookie("userID", user_id);
			Cookie cookie_pw = new Cookie("userPW", user_pw);
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);
			
			Date now = new Date();
			SimpleDateFormat formatter = new SimpleDateFormat("오늘은 yyyy-MM-dd일 입니다.");
			String formatedTime = formatter.format(now);
			out.println(formatedTime+"<br>");
			formatter = new SimpleDateFormat("현재시각은 HH:mm 분 입니다.");
			formatedTime = formatter.format(now);
			out.println(formatedTime+"<br>");
			
			out.println("<span class=\"badge text-bg-success\">"+user_id+"</span> 님 쿠키 설정이 성공하였습니다.");
			out.println("<hr>");
			out.println("<a href=\"welcome2.jsp\"><button type=\"button\" class=\"btn btn-outline-primary\">다음 페이지로 이동</button></a>");
		} else {
			out.println("<span class=\"badge text-bg-danger\">아이디와 비밀번호를 확인해주세요</span>");
			out.println("<hr>");
			out.println("<a href=\"cookie2.jsp\"><button type=\"button\" class=\"btn btn-outline-primary\">처음으로 이동</button></a>");
		}
		
		
	%>
</div>
</div>
<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>