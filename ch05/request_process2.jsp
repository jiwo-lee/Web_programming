<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Enumeration"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Implicit Objects</title>
</head>
<body>	
	<%
		request.setCharacterEncoding("utf-8");
		String userid = request.getParameter("id");
		String password = request.getParameter("passwd");
		String username = request.getParameter("name");
		String usernum = request.getParameter("num");
		
		out.println("아이디 : " + userid + "<br>");
		out.println("비밀번호 : " + password + "<br>");
		out.println("이름 : " + username + "<br>");
		out.println("학번 : " + usernum + "<br>");
	%>
	-------------------------------------------------------------------------------- <br>
	<%		
		Enumeration paramNames = request.getParameterNames();
		while (paramNames.hasMoreElements()) {
			String parameterName = (String) paramNames.nextElement();
			String paramValue = request.getParameter(parameterName);
			out.println(parameterName + " = " + paramValue);
			if (paramNames.hasMoreElements()) {
				out.println(", ");
			}
		}
	%>
	<br>
	<div class="container">
		<div class="text-center">
			<hr>
			<a href="welcome.jsp"><button type="button" class="btn btn-outline-primary">홈 돌아가기</button></a>
			<hr>
		</div>
	</div>
<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html></html>