<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService"%>
<%@ page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<!-- bootstrap  -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
</head>
<body>

	<%
	// db 생성
	MysqlService mysql = MysqlService.getInstance();
	mysql.connection();
	String query = "select * from `site` order by `id` desc";
	ResultSet result = mysql.select(query);
	%>

	<table class="table border=1 text-center">
		<thead>
			<tr>
				<th>사이트</th>
				<th>사이트 주소</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>

			<%
			while (result.next()) {
			%>

			<tr>
				<td><%=result.getString("name")%></td>
				<td><a href="<%=result.getString("url")%>"><%=result.getString("url")%></a></td>
				<td><a
					href="/db/quiz02_delete?id=<%=result.getString("id")%>">삭제</a></td>
			</tr>

			<%
			}
			%>

		</tbody>
	</table>


	<%
	// db 해제
	mysql.disconnection();
	%>
</body>
</html>