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
	<table width="100%" border="1" class="table table-bordered">
		<thead class="table-light">
			<tr>
				<th>학번</th>
				<th>패스워드</th>
				<th>학과</th>
				<th>이름</th>
				<th>주소</th>
				<th>연락처</th>
				<th>이메일</th>
			</tr>
		</thead>
		<%
			ResultSet rs = null;			
			PreparedStatement pstmt = null;

			try {
				String sql = "select * from student2";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();

				while (rs.next()) {
					String num = rs.getString("num");
					String passwd = rs.getString("pwd");
					String depart = rs.getString("depart");
					String name = rs.getString("name");
					String address = rs.getString("address");
					String phone = rs.getString("phone");
					String email = rs.getString("email");
		%>
		<tbody>
			<tr>
				<td><%=num%></td>
				<td><%=passwd%></td>
				<td><%=depart%></td>
				<td><%=name%></td>
				<td><%=address%></td>
				<td><%=phone%></td>
				<td><%=email%></td>
			</tr>
		</tbody>
		<%
				}
			} catch (SQLException ex) {
				out.println("Student 테이블 호출이 실패했습니다.<br>");
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
	</table>
	
	<hr>
	<div class="text-center">
		<a href="index.jsp"><button type="button" class="btn btn-outline-primary">홈 돌아가기</button></a>
	</div>
	<hr>
	
</div>
	
<script src="../bootstrap-5.3.3-dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>