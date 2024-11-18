<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Form Processing</title>
</head>
<body>
<div class="container">
	<form action="form022_process.jsp" name="form" method="post">
	  <div class="row mb-3">
    	<label class="col-sm-2 col-form-label">이름</label>
    	<div class="col-sm-8">
      		<input type="text" class="form-control" name="name">
    	</div>
  	  </div>
  	  <div class="row mb-3">
    	<label class="col-sm-2 col-form-label">주소</label>
    	<div class="col-sm-8">
      		<input type="text" class="form-control" name="address">
    	</div>
  	  </div>
  	  <div class="row mb-3">
    	<label class="col-sm-2 col-form-label">이메일</label>
    	<div class="col-sm-8">
      		<input type="text" class="form-control" name="email">
    	</div>
  	  </div>
  	  <div class="row mb-3">
    	<label class="col-sm-2 col-form-label">성별</label>
    	<div class="col-sm-8  form-check-inline">
      		<input type="radio" class="form-check-input" name="sex" value="남성" checked>남성 &nbsp;
      		<input type="radio" class="form-check-input" name="sex" value="여성">여성
    	</div>
  	  </div>
  	  <div class="row mb-3">
    	<div class="col-sm-8">
      		<input type="submit" class="btn btn-primary" value="전송">
    	</div>
  	  </div>
  	</form>
 </div>

<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>