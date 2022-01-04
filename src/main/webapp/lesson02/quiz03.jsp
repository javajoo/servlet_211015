<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>체격 조건</title>
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
	<div class="container">
		<h1>체격 조건 입력</h1>
		<!-- 웹에서는 절대경로 폴더위치부터 전부 써주면 된다.-->
		<form method="get" action="/lesson02/quiz03_1.jsp ">
		<!-- d-flex 넣어주면 옆으로 붙게 된다. -->
			<div class="form-group d-flex">
				<input type="text" id="height" name="height" class="form-control col-3 mr-2" 
				placeholder="키를 입력하세요">
				<span class="mt-3"> cm </span>
				<input type="text" id="weight" name="weight" class="form-control col-3 ml-2 mr-2" placeholder="몸무게를 입력하세요">
				<span class="mt-3"> kg </span>
				<button type="submit" class="btn btn-info ml-3">계산</button>
			</div>
		</form>
	</div>

</body>
</html>