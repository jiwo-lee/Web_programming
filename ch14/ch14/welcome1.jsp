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
		Cookie[] cookies = request.getCookies();
		
		if(request.getCookies() == null) {
			response.sendRedirect("cookie_out.jsp");
		}
		for(int i=0; i < cookies.length; i++) {
			if (cookies[i].getName().equals("userID")){
				out.println(cookies[0].getValue() + "님 반갑습니다.");
				out.println("<br><br><a href=\"cookie_out.jsp\"> 로그아웃 </a>");
				break;
			}
		}
	%>

</body>
</html>