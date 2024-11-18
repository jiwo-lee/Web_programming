<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Database SQL</title>
</head>
<body>	

<div class="container">
	<form method="post" action="update_process2.jsp">
		<div class="row mb-3">
    		<label for="before_depart" class="col-sm-2 col-form-label">변경전 학과명</label>
    		<div class="col-sm-5">
      			<input type="text" class="form-control" id="before_depart" name="before_depart">
    		</div>
  		</div>
  		<div class="row mb-3">
    		<label for="after_depart" class="col-sm-2 col-form-label">변경후 학과명</label>
    		<div class="col-sm-5">
      			<input type="text" class="form-control" id="after_depart" name="after_depart">
    		</div>
  		</div>
		<button type="submit" class="btn btn-primary">전송</button>
	</form>
</div>

<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
