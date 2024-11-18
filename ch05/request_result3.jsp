<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
</head>
<body>	
<%
		request.setCharacterEncoding("utf-8");

		String name = request.getParameter("name");
		String studentNum = request.getParameter("studentNum");
		String gender = request.getParameter("gender");
		String major = request.getParameter("major");

		if(gender.equals("man")){
			gender = "남자";
		}else{
			gender = "여자";
		}
%>
<h1 class="display-4">Request 내장 객체 결과값</h1>
<H4><span class="badge rounded-pill text-bg-warning">성명 : <%=name%></span></H4>
<H4><span class="badge rounded-pill text-bg-warning">학번 : <%=studentNum%></span></H4>
<H4><span class="badge rounded-pill text-bg-warning">학과 : <%=major%></span></H4>
<H4><span class="badge rounded-pill text-bg-warning">성별 : <%=gender%></span></H4>

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