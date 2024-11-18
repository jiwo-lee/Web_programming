<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*" %>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>log in</title>
</head>
<body>
	<div class="container">
	<div class="text-center">
		<%
			request.setCharacterEncoding("utf-8");
		
			String title = request.getParameter("title");
			String post = request.getParameter("post");
			String user_name = (String)session.getAttribute("user_name");
			
			String url="jdbc:mysql://localhost:3306/webdb";
			String user = "root";
			String password = "1234";
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String sql = "insert into community (title, post, user_name) values (?, ?, ?);";
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				
				conn = DriverManager.getConnection(url, user, password);
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, title);
				pstmt.setString(2, post);
				pstmt.setString(3, user_name);
				
				pstmt.executeUpdate();
				
				out.println("<span class=\"badge text-bg-success\">게시글이 등록되었습니다.</span>");
				out.println("<hr>");
				out.println("<a href=\"login_community.jsp\"><button type=\"button\" class=\"btn btn-outline-primary\">게시판으로 이동</button></a>");
			}
			catch (SQLException ex) {
				out.println("<span class=\"badge text-bg-danger\">게시글 등록에 실패했습니다 다시 시도해주세요</span>");
				out.println("<br>오류: " + ex.getMessage());
				out.println("<hr>");
				out.println("<button onclick=\"history.back()\" class=\"btn btn-outline-primary\">돌아가기</button>");
			} 
		%>
	</div>
	</div>
<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>