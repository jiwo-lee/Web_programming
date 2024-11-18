<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Implicit Objects</title>
</head>
<body>

<div class="container">
	<form action="form032_process.jsp" method="post">
  		<div class="row mb-3">
    		<label class="col-sm-2 col-form-label">좋아하는 과일</label>
    			<div class="col-sm-8">
    				<div class="form-check-inline">
    					<label class="form-check-label" for="inlineCheckbox1">오렌지</label>
  						<input class="form-check-input" type="checkbox" name="FruitGroup" value="오렌지">
					</div>
					<div class="form-check-inline">
    					<label class="form-check-label" for="inlineCheckbox1">사과</label>
  						<input class="form-check-input" type="checkbox" name="FruitGroup" value="사과">
					</div>
					<div class="form-check-inline">
    					<label class="form-check-label" for="inlineCheckbox1">바나나</label>
  						<input class="form-check-input" type="checkbox" name="FruitGroup" value="바나나">
					</div>
      			</div>
  	  	</div>
  		<div class="row mb-3">
    		<label for="inputPassword3" class="col-sm-2 col-form-label">연락처</label>
    			<div class="col-sm-3">
      				<select class="form-select" aria-label="Default select example" name = "phone1">
  						<option value="010">010</option>
  						<option value="011">011</option>
  						<option value="016">016</option>
  						<option value="019">019</option>
					</select>
				</div>
				-
				<div class="col-sm-3">
					<input type="text" class="form-control" name="phone2">
				</div>
				-
				<div class="col-sm-3">
					<input type="text" class="form-control" name="phone3">
    			</div>
  		</div>
  		<button type="submit" class="btn btn-primary">전송</button>
	</form>
</div>

<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>