<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*" %>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Post</title>
</head>
<body>

<div class="container py-4">	
	
	<%
		int post_id = Integer.parseInt(request.getParameter("id"));
	
    	String url="jdbc:mysql://localhost:3306/webdb";
		String user = "root";
		String password = "1234";
	
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
	
		
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			
			stmt = conn.createStatement();
			
			String sql = "select id, title, post, user_name from community where id = '" + post_id + "'";
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				String title = rs.getString("title");
				String user_name = rs.getString("user_name");
				String post = rs.getString("post");	
	%>
	
	<h3> <b><%= post_id %></b>&nbsp;&nbsp; | &nbsp;&nbsp;<%= title %></h3>
	<div class="text-end"> <%= user_name %></div>
	<hr>
	<%= post %>
	
	<%
			}
		}
		catch (SQLException ex) {
			out.println("<span class=\"badge text-bg-danger\">오류가 발생했습니다</span>");
			out.println("<br>오류: " + ex.getMessage());
			out.println("<hr>");
			out.println("<a href=\"welcome.jsp\"><button type=\"button\" class=\"btn btn-outline-primary\">처음 페이지로 이동</button></a>");
		} 
    %>
<hr>
<div class="text-end">
	<button onclick="history.back()" class="btn btn-outline-primary">이전으로 돌아가기</button>
</div>
	
</div>

<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>