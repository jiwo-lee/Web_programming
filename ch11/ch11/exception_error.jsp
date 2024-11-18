<%@ page contentType="text/html; charset=utf-8"%>
<%@ page isErrorPage="true"%>

<html>
<head>
<title>Exception</title>
</head>
<body>
오류가 발생하였습니다. 오류가 발생하였습니다.오류가 발생하였습니다.오류가 발생하였습니다.오류가 발생하였습니다.
오류가 발생하였습니다. 오류가 발생하였습니다.오류가 발생하였습니다.오류가 발생하였습니다.오류가 발생하였습니다.
오류가 발생하였습니다. 오류가 발생하였습니다.오류가 발생하였습니다.오류가 발생하였습니다.오류가 발생하였습니다.
오류가 발생하였습니다. 오류가 발생하였습니다.오류가 발생하였습니다.오류가 발생하였습니다.오류가 발생하였습니다.<br>
	<%
		if (response.getStatus() == 500) {
	%>
	오류 발생 : <%=exception.getMessage()%>
	

	<%-- include login page --%>
	<%@ include file="exception.jsp"%>
	<%
		} else {
	%>
	오류 발생 코드 : <%=response.getStatus()%><br> 
	<a href="/exception.jsp">처음 페이지로 이동</a>
	<%
		}
	%>

</body>
</html>