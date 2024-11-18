<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Validation</title>
</head>
<script type="text/javascript">	

	function checkPasswd() {
		var form = document.form;
		
		var id = document.getElementById("id").value;
		var passwd = document.getElementById("passwd").value;	
		var jemok = document.getElementById("jemok").value;

		if (id.length == 0) {
			alert("아이디를 입력해주세요");
			return false;
		}		
		for (i=0; i<id.length; i++){
			var ch = id.charAt(i);
        
			if (!((ch>='a'||ch>='z') || (ch>='A'||ch>='Z'))){
				alert("아이디는 영문자만 입력 가능 합니다!");
				form.id.select();
				return;
			}
		}		
		if (id.length < 5) {
			alert("아이디를 5자 이상 입력해주세요");
			return false;
		}
		if (passwd.length == 0) {
			alert("비밀번호를 입력해주세요");
			return false;
		}		
		if (passwd.indexOf(id) > -1) {
			alert("비밀번호는 ID를 포함할 수 없습니다.");
			return false;
		}
		if (jemok.length == 0) {
			alert("제목을 입력해주세요");
			return false;
		}	
		if (!isNaN(jemok.substr(0, 1))) {
			alert("제목은 숫자로 작성하실 수 없습니다");
			form.jemok.select();
			return false;
		}			
		document.form.submit();
	}
</script>
<body>
<div class="container">
	<form name="form" action="validation_process012.jsp" method="post">
	  <div class="row mb-3">
    	<label class="col-sm-2 col-form-label">아이디</label>
    	<div class="col-sm-10">
      		<input type="text" class="form-control" id="id" name="id">
    	</div>
  	  </div>
	  <div class="row mb-3">
    	<label class="col-sm-2 col-form-label">비밀번호</label>
    	<div class="col-sm-10">
      		<input type="password" class="form-control" id="passwd" name="passwd">
    	</div>
  	  </div>
	  <div class="row mb-3">
    	<label class="col-sm-2 col-form-label">제목</label>
    	<div class="col-sm-10">
      		<input type="text" class="form-control" id="jemok" name="jemok">
    	</div>
  	  </div>
  	  <div class="row mb-3">
    	 	<div class="col-sm-12 text-end">
      			<input type="button" class="btn btn-primary" value="전송" onclick="checkPasswd()">
    		</div>    	
  	  </div>		
	</form>
</div>

<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>