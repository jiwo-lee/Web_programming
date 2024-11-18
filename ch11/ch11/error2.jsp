<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Error</title>
</head>
<body>

	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
		<div class="container-fluid py-5">
			<h1 class="display3">Error 검사</h1>
		</div>
	</div>
	
	<div class="container py-4">
	<form name="errorCheck" action="errorpage2.jsp" method="post">
		<div class="mb-3 row">
			<label class="col-sm-2">숫자1</label>
			<div class="col-sm-3">
				<input type="text" id="num1" name="num1" class="form-control">
			</div>
		</div>
		<div class="mb-3 row">
			<label class="col-sm-2">숫자2</label>
			<div class="col-sm-3">
				<input type="text" id="num2" name="num2" class="form-control">
			</div>
		</div>
		<div class="mb-3 row">
			<div class="col-sm-offset-2 col-sm-10">
				<input type="submit" class="btn btn-primary" value="전송">
			</div>
		</div>
	</form>
	</div>


<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>