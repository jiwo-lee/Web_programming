<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>sign up</title>
</head>
<body>

	<div class="container">
	
		<form action="signup_process.jsp" method="POST">
		
			<div class="row mb-3">
    			<label for="username" class="col-sm-2 col-form-label">닉네임</label>
    				<div class="col-sm-3">
      					<input type="text" class="form-control" id="username" name="username">
    				</div>
    		</div>
		
			<div class="row mb-3">
    			<label for="id" class="col-sm-2 col-form-label">아이디</label>
    				<div class="col-sm-3">
      					<input type="text" class="form-control" id="id" name="id">
    				</div>
    		</div>
    		
    		<div class="row mb-3">
    			<label for="passwd" class="col-sm-2 col-form-label">비밀번호</label>
    				<div class="col-sm-3">
      					<input type="password" class="form-control" id="passwd" name="passwd">
    				</div>
    		</div>
    		
    		<div class="row mb-3">
    			<label for="passwdchk" class="col-sm-2 col-form-label">비밀번호 확인</label>
    				<div class="col-sm-3">
      					<input type="password" class="form-control" id="passwdchk" name="passwdchk">
    				</div>
    		</div>
    		
			<button type="submit" class="btn btn-primary">회원가입</button> &nbsp;&nbsp; <button onclick="history.back()" type="button" class="btn btn-primary">돌아가기</button>
		</form>
		
	</div>
	

<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>