<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*" %>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>sign up</title>
</head>
<body>
<div class="container">
<div class="text-center">
	<%
		request.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");
		String user_name = request.getParameter("username");
		String passwd = request.getParameter("passwd");
		String passwdchk = request.getParameter("passwdchk");
		
		if (!passwd.equals(passwdchk) || "".equals(passwd) || passwd.equals(null)) {
			out.println("<span class=\"badge text-bg-danger\">비밀번호를 확인해주세요</span>");
			out.println("<hr>");
			out.println("<button onclick=\"history.back()\" class=\"btn btn-outline-primary\">돌아가기</button>");
		}
		else if(id.equals(null) || "".equals(id)) {
			out.println("<span class=\"badge text-bg-danger\">아이디를 입력해주세요</span>");
			out.println("<hr>");
			out.println("<button onclick=\"history.back()\" class=\"btn btn-outline-primary\">돌아가기</button>");
		}
		else if(user_name.equals(null) || "".equals(user_name)) {
			out.println("<span class=\"badge text-bg-danger\">닉네임을 입력해주세요</span>");
			out.println("<hr>");
			out.println("<button onclick=\"history.back()\" class=\"btn btn-outline-primary\">돌아가기</button>");
		}
		else {
			Connection conn = null;
			try {
				String url="jdbc:mysql://localhost:3306/webdb";
				String user = "root";
				String password = "1234";
				
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection(url, user, password);
				
				Statement stmt = conn.createStatement();
				
				String sql = "insert into member(id, name, passwd) values('" + id + "','" + user_name + "','" + passwd + "')";
					
				stmt.executeUpdate(sql);
				
				out.println("<span class=\"badge text-bg-success\">회원가입이 완료되었습니다</span>");
				out.println("<hr>");
				out.println("<a href=\"Login.jsp\"><button type=\"button\" class=\"btn btn-outline-primary\">로그인하기</button></a>");
				
			}
			catch (SQLException ex) {
				out.println("<span class=\"badge text-bg-danger\">오류가 발생했습니다 다시 시도해주세요</span>");
				out.println("<br>오류: " + ex.getMessage());
				out.println("<hr>");
				out.println("<button onclick=\"history.back()\" class=\"btn btn-outline-primary\">돌아가기</button>");
			} 
			
		}
	%>
</div>
</div>
<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>