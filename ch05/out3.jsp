<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<body>
	<h1>Out 내장 객체</h1>
	<p><strong>현재 페이지의 Buffer 상태</strong></p>
	
	<% 
		int bufferSize = out.getBufferSize();
		int remaining = out.getRemaining();
		int useBuffer = bufferSize - remaining;
	%>
	
	<ul>
      <li>출력 Buffer의 전체 크기 : <% out.println(bufferSize); %></li>
      <li>남은 Buffer의 크기 : <% out.println(remaining); %></li>
      <li>현재 Buffer의 사용량 : <% out.println(useBuffer); %></li>
    </ul>
    
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