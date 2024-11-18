<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Validation</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
<div class="container">
<table class="table table-bordered">
  <tbody>
    <tr>
      <th scope="row">아이디</th>
      <td><%=request.getParameter("id")%></td>
    </tr>
    <tr>
      <th scope="row">비밀번호</th>
      <td><%=request.getParameter("passwd")%></td>
    </tr>
    <tr>
      <th scope="row">제목</th>
      <td><%=request.getParameter("jemok")%></td>
    </tr>        
  </tbody>
</table>    
</div>

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