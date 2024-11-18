<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Enumeration"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Session</title>
</head>
<body>
	<div class="container">
	<%  
    if (session.getAttribute("userID") == null) {
        response.sendRedirect("session_out2.jsp");
    }
	%>
	<hr>
	<%
		String name;
		String value;

		Enumeration en = session.getAttributeNames();
		int i = 0;

		while (en.hasMoreElements()) {
			i++;
			name = en.nextElement().toString();
			value = session.getAttribute(name).toString();
			out.println("설정된 세션의 속성이름 [ " + i + " ] : " + "<span class=\"badge text-bg-primary\">" + name + "</span>"+ "<br>");
			out.println("설정된 세션의 속성값 [ " + i + " ] : " + "<span class=\"badge text-bg-success\">" + value + "</span>" + "<br>");
		}

		out.println("<h4><br><span class=\"badge text-bg-primary\">" + session.getAttribute("userID") + "</span>"+ "님 반갑습니다.</h4>");
	%>
  <hr>
  <a href="session_out2.jsp"><button type="button" class="btn btn-outline-primary">로그아웃</button></a>
	</div>
<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>	
</body>
</html>