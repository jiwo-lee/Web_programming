<%@ page contentType="text/html; charset=utf-8"%>
  <%@ page import="java.util.Enumeration"  %> 
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Form Processing</title>
</head>
<body>
     
     <table class="table table-striped">
 	 	<thead>
    		<tr>
      		<th scope="col">제목</th>
      		<th scope="col">값</th>
   		 	</tr>
  		</thead>
  		<tbody>
  		<%  
	  		request.setCharacterEncoding("UTF-8");
	
      		Enumeration<String> paramEnumeration= request.getParameterNames();  
      		while(paramEnumeration.hasMoreElements()) {         
        		String paramName= paramEnumeration.nextElement();        
        		String paramValue =request.getParameter(paramName);
        		
        		out.print("<tr>");
        		out.print("<th scope=\"row\">"+ paramName +"</th>");
        		out.print("<td>" + paramValue + "</td>");
        		out.print("</tr>");
      		}     
     	%>
  	 	</tbody>
	 </table>
     
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