<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Form Processing</title>
</head>
<body>
	<form action="form012_process.jsp" name="form" method="post">
		<p>	이름 : <input type="text" name="name" />
		<p>	주소 : <input type="text" name="address" />
		<p>	이메일 : <input type="text" name="email" />
		<p> 성별 : <input type="radio" name="sex" value="남성" checked>남성
			<input type="radio" name="sex" value="여성">여성
		<p>	<input type="submit" value="전송" />
	</form>
<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>