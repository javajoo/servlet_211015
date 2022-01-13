<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가</title>
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
.name {
	width: 200px;
}

.url {
	width: 400px;
}
</style>
</head>
<body>
	<div class="container">
		<h1>즐겨찾기 추가</h1>
		<!-- 사이트명, 사이트주소 같은건 post방식으로 해준다. 위에 뜨면 안된다!!! -->
		<!-- name db컬럼명이랑 맞춰주는게 좋다. -->
		<form method="post" action="/db/quiz02_insert">
			<b>사이트명:</b><br> <input type="text" name="name"
				class="name form-control"><br> <b>사이트주소:</b><br> <input
				type="text" name="url" class="url form-control"><br> <input
				type="submit" class="btn btn-success" value="추가">
		</form>
	</div>
</body>
</html>