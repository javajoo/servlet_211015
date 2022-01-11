<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<style>
header {
	height: 100px;
	font-size: 50px;
}

a:hover {
	text-decoration: none;
}

nav {
	height: 70px;
}

.font-link {
	color: black;
	font-weight: bold;
	font-size: 20px;
}

footer {
	height: 100px;
}
</style>
</head>
<body>
	<!-- 검색, 클릭으로 페이지 넘어갈 수 있도록 2가지 방법으로 만들어줘야 한다. -->
	<div id="wrap">
<<<<<<< HEAD
		<jsp:include page="header.jsp" />
=======
		<form method="get" action="/lesson03/quiz02/detail_template.jsp">
			<jsp:include page="header.jsp" />
		</form>
>>>>>>> ff06869a357c635b857e390cb9ac5ae0ab905f8b
		<jsp:include page="nav.jsp" />
		<jsp:include page="list_content.jsp" />
		<jsp:include page="footer.jsp" />

	</div>
</body>
</html>


<<<<<<< HEAD
=======











>>>>>>> ff06869a357c635b857e390cb9ac5ae0ab905f8b
