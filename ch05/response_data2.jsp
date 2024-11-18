<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<title>Implicit Objects</title>
</head>
<body>
	<%  
		String check = request.getParameter("check");
		if (check.equals("1"))
       		response.sendRedirect("http://www.google.com");   
		else 
	  		response.sendRedirect("http://www.naver.com");
    %>
</body>
</html>