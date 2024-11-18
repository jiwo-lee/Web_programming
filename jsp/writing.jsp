<%@ page contentType="text/html; charset=utf-8"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>wrighting</title>
</head>
<body>

	<div class="container">
	
		<form action="writing_process.jsp" method="POST">
		
			<div class="row mb-3">
    			<input class="form-control form-control-lg" type="text" placeholder="제목을 입력해주세요" aria-label=".form-control-lg example" id = "title" name="title">
    		</div>
    		
    		<div class="row mb-3">
    			<textarea class="form-control" placeholder="내용을 입력해주세요" id="post" name="post" rows="30"></textarea>
    		</div>
    		
			<button type="submit" class="btn btn-primary">게시글 등록</button>
		</form>
		
	</div>
	
<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>