<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
</head>
<body>

<h1 class="display-4">Request 내장 객체</h1>

<form action="request_result3.jsp" method="post">

	<div class="mb-3 row">
		<label class="col-sm-1 col-form-label">성명 :</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="name">
		</div>
  	</div>
  	
  	<div class="mb-3 row">
		<label class="col-sm-1 col-form-label">학번 :</label>
		<div class="col-sm-4">
			<input type="text" class="form-control" name="studentNum">
		</div>
  	</div>
  	
  	<div class="mb-3 row">
		<label class="col-sm-1 col-form-label">학과 :</label>
		<div class="col-sm-4">
			<select class="form-select" name="major">
				<option selected value="국문학과">국문학과</option>
				<option value="영문학과">영문학과</option>
				<option value="수학과">수학과</option>
				<option value="정치학과">정치학과</option>
				<option value="체육학과">체육학과</option>
			</select>
		</div>
  	</div>
  	
  	<div class="mb-3 row">
		<label class="col-sm-1 col-form-label">성별 :</label>
		<div class="col-sm-4">
			남자 <input class="form-check-input" type="radio" name="gender"  value="man" checked>
          	여자 <input class="form-check-input" type="radio" name="gender" value="woman">
		</div>
  	</div>
  	
  	<button type="submit" class="btn btn-primary mb-2">보내기</button>
</form>

<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>



