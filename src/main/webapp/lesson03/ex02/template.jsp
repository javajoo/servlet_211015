<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>템플릿 구성</title>
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
	height: 50px;
}

.bottom {
	height: 900px;
}

section {
	height: 90%
}

footer {
	height: 10%
}
</style>
</head>
<body>
	<!-- template : 조각조각 나눠서 사용한다. -->
	<!-- 동적방식으로 많이 사용한다. -->
	<div id="wrap">
		<!-- 동적방식 -->
		<!-- 조각으로 나눠도 원래 나왔던 화면이랑 달라지면 안된다!!! -->
		<%-- <jsp:include page=""></jsp:include> 같은뜻--%>
		<jsp:include page="header.jsp" />
		<div class="bottom bg-info d-flex">
			<jsp:include page="menu.jsp" />
			<div class="right bg-primary col-10">
				<%
					String contentName = "content2.jsp";
					// jsp 페이지를 변수에 저장해서 사용할 수 있다.
				%>
				<jsp:include page="<%= contentName %>" />
				<jsp:include page="footer.jsp" />
			</div>
		</div>
	</div>
</body>
</html>








