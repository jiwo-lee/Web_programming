<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String user_id = (String) session.getAttribute("userID");
		
		if (user_id == null) {
			response.sendRedirect("session_out.jsp");
		}
		else {
			out.println("<b>"+user_id+"님 반갑습니다.</b><br><br>");
			out.println("<a href=\"session_out.jsp\">로그아웃</a>");
		}
	%>
	
	

</body>
</html>