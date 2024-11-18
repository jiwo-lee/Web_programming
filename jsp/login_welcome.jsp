<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>

<div class="container py-4">	

	<div class="text-end">
		<%
			String id = (String)session.getAttribute("user_id");
			String name = (String)session.getAttribute("user_name");
		%>
		<%=id %>(<%=name %>)님 안녕하세요&nbsp;&nbsp; | &nbsp;&nbsp;<a href="LogOut.jsp" class="link-underline-light">로그아웃</a>
	</div>
	
    <div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold text-center">사이트 메인</h1>      
      </div>
    </div>

	<div class="text-center">
		<h3>
			<a href="login_community.jsp" class="link-underline-light">자유 게시판</a>
		</h3>
		<hr>
	</div>
</div>

<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>