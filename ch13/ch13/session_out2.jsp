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
<hr>
<h4>세션 삭제하기 전</h4>
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


		session.invalidate();
	%>
	<br><h4>세션 삭제한 후</h4>

<%		
		if (request.isRequestedSessionIdValid() == true) {
			out.print("세션이 유효합니다.");
		}else {
			out.println("<span class=\"badge text-bg-primary\">세션이 유효하지 않습니다.</span> <hr>");
		}
	%>
	<div class="container">
		<div class="text-center">
				<a href="session2.jsp"><button type="button" class="btn btn-outline-primary">홈 돌아가기</button></a>
		</div>
	</div>
	<hr>
	
	</div>
<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>	
</body>
</html>