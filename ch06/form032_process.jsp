<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Implicit Objects</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	
	String phone1 = request.getParameter("phone1");
	String phone2 = request.getParameter("phone2");
	String phone3 = request.getParameter("phone3");

		String message = " ";
		String values[] = request.getParameterValues("FruitGroup");
		if (values != null) {
			for (int i = 0; i < values.length; i++) {
				message = message + values[i] + " ";
			}
		}
		out.print("<div class=\"container\">");
		out.print("<table class=\"table table-bordered\">");
		  out.print("<thead>");
		    out.print("<tr>");
		      out.print("<th scope=\"col\">제목</th>");
		      out.print("<th scope=\"col\">값</th>");
		    out.print("</tr>");
		  out.print("</thead>");
		  out.print("<tbody>");		
	        out.print("<tr>");
	        out.print("<th scope=\"row\">선택한 과일</th>");		  
	        out.print("<td>" + message + "</td>");
	        out.print("</tr>");		
	        out.print("<tr>");
	        out.print("<th scope=\"row\">연락처</th>");		  
	        out.print("<td>" + phone1 + "-" + phone2 + "-" + phone3 + "</td>");
	        out.print("</tr>");	        
	        out.print("</tbody>");
	        out.print("</table>");	
	        out.print("</div>");
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