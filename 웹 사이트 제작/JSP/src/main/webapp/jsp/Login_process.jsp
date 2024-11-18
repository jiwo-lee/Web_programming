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
		
			String id = request.getParameter("id");
			String passwd = request.getParameter("passwd");
			
			String url="jdbc:mysql://localhost:3306/webdb";
			String user = "root";
			String password = "1234";
			
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			String sql = "select id, name from member where id = ? and passwd = ?";
			
			try {
				Class.forName("com.mysql.jdbc.Driver");
				
				conn = DriverManager.getConnection(url, user, password);
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.setString(2, passwd);
				
				rs = pstmt.executeQuery();
				
				if(rs.next()){
					id = rs.getString("id");
					String name = rs.getString("name");
				
					session.setAttribute("user_id", id);
					session.setAttribute("user_name", name);
					session.setMaxInactiveInterval(0);
					
					response.sendRedirect("login_welcome.jsp");
					
				} else{ 
					out.println("<span class=\"badge text-bg-danger\">로그인 실패했습니다 다시 시도해주세요</span>");
					out.println("<hr>");
					out.println("<button onclick=\"history.back()\" class=\"btn btn-outline-primary\">돌아가기</button>");
				}
				
			}
			catch (SQLException ex) {
				out.println("<span class=\"badge text-bg-danger\">오류가 발생했습니다 다시 시도해주세요</span>");
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