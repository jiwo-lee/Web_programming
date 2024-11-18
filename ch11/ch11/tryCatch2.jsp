<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Exception</title>
</head>
<body>
<div class="container">
<div class="text-center">
	<hr>
	<%
		request.setCharacterEncoding("UTF-8");
	
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		int num12 = Integer.parseInt(num1);
		int num22 = Integer.parseInt(num2);
		
         try {
            int i = num12 / num22;
            out.println("나눗셈 결과 : " + i);
         }
         catch (Exception e) {
            out.println("오류 발생 : " + e.getMessage());
         }
      %>
      <hr>
      <a href="welcome.jsp"><button type="button" class="btn btn-outline-primary">홈 돌아가기</button></a>
      <hr>
</div>
</div>

<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>