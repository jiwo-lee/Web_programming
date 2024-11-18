<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Database SQL</title>
</head>
<body>

<div class="container">
<%@ include file="dbconn.jsp" %>
<%
	request.setCharacterEncoding("utf-8");

	String num = request.getParameter("num");
	String passwd = request.getParameter("passwd");
	String depart = request.getParameter("depart");
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	
	PreparedStatement pstmt = null;

	try {
		String sql = "insert into student2(num, pwd, depart, name, address, phone, email) values(?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, Integer.valueOf(num));
		pstmt.setString(2, passwd);
		pstmt.setString(3, depart);
		pstmt.setString(4, name);
		pstmt.setString(5, address);
		pstmt.setString(6, phone);
		pstmt.setString(7, email);
		pstmt.executeUpdate();
		out.println("<div class=\"alert alert-primary text-center\" role=\"alert\">Student2 테이블 삽입이 성공했습니다.</div>");
	} catch (SQLException ex) {
		out.println("<div class=\"alert alert-danger text-center\" role=\"alert\">Student2 테이블 삽입이 실패했습니다.</div>");
		out.println("SQLException: " + ex.getMessage());
	} finally {
		if (pstmt != null)
			pstmt.close();
		if (conn != null)
			conn.close();
	}
%>
	<hr>
	<div class="text-center">
		<a href="index.jsp"><button type="button" class="btn btn-outline-primary">홈 돌아가기</button></a>
	</div>
	<hr>
</div>

<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
