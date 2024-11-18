<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Scripting Tag</title>
</head>
<body>
	<h5 class="display-4 text-center">선언문 예제</h5>
	<%!
	int two = 2;
	int seven = 7;
	
	public int PlusMethod() {		
		return two + seven;
	}
	
	String msg = "메시지";
	int three = 3;
	%>
	<div class="container text-start">
  		<div class="row">
    		<div class="col-sm-4">두 수의 덧셈의 합은 ?</div>
    		<div class="col-sm-4"><%=PlusMethod()%></div>
  	    </div>
 		<div class="row">
    		<div class="col-sm-4">msg의 값은 ?</div>
    		<div class="col-sm-4"><%=msg%></div>
  		</div>
  		<div class="row">
    		<div class="col-sm-4">three의 값은 ?</div>
    		<div class="col-sm-4"><%=three%></div>
  		</div>
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