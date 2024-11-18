<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	
	<div class="text-center">
	<div class="container">
	<%
		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("passwd");
		
		out.println("<hr>");
		if (user_id.equals("admin") && user_pw.equals("admin1234")) {
			session.setAttribute("userID", user_id);
			session.setAttribute("userPW", user_pw);
			
			Date time = new Date();
			time.setTime(session.getCreationTime());
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분 ss초");
			String formatedTime = formatter.format(time);
			
			out.println(formatedTime+"<br>");
			out.println("<span class=\"badge text-bg-success\">"+user_id+"</span> 님 세션 설정이 성공하였습니다.");
			out.println("<hr>");
			out.println("<a href=\"welcome2.jsp\"><button type=\"button\" class=\"btn btn-outline-primary\">다음 페이지로 이동</button></a>");
		}
		else {
			out.println("<span class=\"badge text-bg-danger\">아이디와 비밀번호를 확인해주세요</span>");
			out.println("<hr>");
			out.println("<a href=\"session2.jsp\"><button type=\"button\" class=\"btn btn-outline-primary\">처음으로 이동</button></a>");
		}
	%>
	</div>
	</div>
	
<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>