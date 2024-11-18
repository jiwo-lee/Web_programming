<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Enumeration"  %>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Form Processing</title>
</head>
<body>
	<%  
		
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String email = request.getParameter("email");
	String sex = request.getParameter("sex");
	
	
	StringBuffer buffer = new StringBuffer(); 
	
	buffer.append("<table class=\"table\">");
 	buffer.append("<thead>");
    buffer.append("<tr>");
    buffer.append("<th scope=\"col\">제목</th>");
    buffer.append("<th scope=\"col\">값</th>");
    buffer.append("</tr>");
  	buffer.append("</thead>");
  	buffer.append("<tbody>");
    buffer.append("<tr>");
    buffer.append("<th scope=\"row\">이름</th>");
    buffer.append("<td>" + name + "</td>");
    buffer.append("</tr>");
    buffer.append("<tr>");
    buffer.append("<th scope=\"row\">주소</th>");
    buffer.append("<td>" + address + "</td>");
  	buffer.append("</tr>");
  	buffer.append("<tr>");
  	buffer.append("<th scope=\"row\">이메일</th>");
  	buffer.append("<td>" + email + "</td>");
	buffer.append("</tr>");
    buffer.append("<tr>");
    buffer.append("<th scope=\"row\">성별</th>");
    buffer.append("<td>" + sex + "</td>");
  	buffer.append("</tr>");
  	buffer.append("</tbody>");
	buffer.append("</table>");

%>
     
<%= buffer.toString() %> 


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