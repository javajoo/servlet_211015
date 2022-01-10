<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>노래 리스트</title>
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
a {
	font-weight: bold;
}

/* .box {
	border-color: green;
	width: 800px;
	border-style: solid;
	height: 200px;
	padding: 10px;
}
 */
.nav-font {
	color: #000;
}

a:hover {
	color: #000;
	text-decoration: none;
}

header {
	height: 100px;
	font-size: 30px;
	
}
search-bar {width  : 450px;}

nav {
	height: 50px;
}

.content1 {
	height: 200px;
}

.content2 {
	height: 400px;
}
/* section {height: 600px;} */
footer {
	height: 100px;
}
</style>
</head>
<body>

	<div id="wrap">
		<form method="get" action="/lesson03/quiz02/template.jsp">
			<!-- /> 공백있으면 안된다!! 에러 뜬다. -->
			<jsp:include page="header.jsp" />
			<jsp:include page="nav.jsp" />
			
			<jsp:include page="list_content.jsp" />
			<jsp:include page="footer.jsp" />
		</form>
	</div>
</body>
</html>




