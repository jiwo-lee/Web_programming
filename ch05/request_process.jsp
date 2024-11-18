<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.net.URLDecoder"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>	
	<%		
		String value = URLDecoder.decode(request.getQueryString(), "UTF-8");
		out.println("전송된 요청 파라미터 : " + value);
		
	%>
	
</body>
</html>