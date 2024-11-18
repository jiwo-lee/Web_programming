<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../bootstrap-5.3.3-dist/css/bootstrap.min.css">
<title>Database SQL</title>
</head>
<body>

<%@ include file="dbconn.jsp" %>

<div class="container">
	<%
		request.setCharacterEncoding("utf-8");

		String before = request.getParameter("before_depart");
		String after = request.getParameter("after_depart");
		
		ResultSet rs = null;
		PreparedStatement pstmt = null;		

		try {
			String sql = "select * from student2 where depart = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, before);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				String depart = rs.getString("depart");				

				if (before.equals(depart)) {
					sql = "update student2 set depart = ? where depart = ?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, after);
					pstmt.setString(2, depart);
					pstmt.executeUpdate();
					out.println("<div class=\"alert alert-primary text-center\" role=\"alert\">Student2 테이블을 수정했습니다.</div>");
				} else
					out.println("<div class=\"alert alert-danger text-center\" role=\"alert\">Student2 테이블을 수정하지 못했습니다.</div>");
			} else
				out.println("<div class=\"alert alert-danger text-center\" role=\"alert\">Student2 테이블에 일치하는 학과가 없습니다.</div>");
		} catch (SQLException ex) {
			out.println("SQLException: " + ex.getMessage());
		} finally {
			if (rs != null)
				rs.close();
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