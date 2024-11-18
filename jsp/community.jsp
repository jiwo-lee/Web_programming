<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.*" %>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Community</title>
</head>
<body>

<div class="container py-4">	
	
	<div class="text-end">
		<a href="Login.jsp" class="link-underline-light">로그인</a>&nbsp;&nbsp; | &nbsp;&nbsp;<a href="SignUp.jsp" class="link-underline-light">회원가입</a>
	</div>
	
	<div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold text-center">자유 게시판</h1>      
      </div>
    </div>

	<table class="table">
  <thead>
    <tr>
      <th scope="col">번호</th>
      <th scope="col">제목</th>
      <th scope="col">작성자</th>
    </tr>
  </thead>
  <tbody>
    <%
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
			
			String sql = "select id, title, user_name from community order by id desc";
			rs = stmt.executeQuery(sql);
			
		
			while(rs.next()){
				String post_id = rs.getString("id");
				String title = rs.getString("title");
				String user_name = rs.getString("user_name");
				
	%>
		<tr>
      		<th scope="row"><%= post_id %></th>
      		<% out.println("<td><a href=\"post.jsp?id=" + post_id + "\" class=\"link-underline-light\">" + title + "</a></td>"); %>
      		<td><% out.println(user_name); %></td>
    	</tr>
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
  </tbody>
</table>
	<hr>
	<div class="text-end">
	<a href="welcome.jsp"><button type="button" class="btn btn-outline-primary">메인 페이지로 이동</button></a>
	</div>
	
</div>

<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>