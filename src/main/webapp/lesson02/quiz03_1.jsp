<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI계산</title>

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
	
	int weight = Integer.parseInt(request.getParameter("weight"));
	int height = Integer.parseInt(request.getParameter("height"));
	
	double BMI = weight / ((height / 100.0) * (height / 100.0));
	String result; // 밖에서 변수 초기화를 해야 밖에서 불러올 수 있다.
	if (BMI <= 20) {
		result = "저체중";
	} else if (BMI <= 25) {
		result = "정상";
	} else if (BMI <= 30) {
		result = "과체중";
	} else {
		result = "비만";
	}
	
	
	%>
	
	<div class="container">
		<h1>BMI 측정 결과</h1>
		<div class="display-1">
		당신은<span class="text-info"><%=  result  %></span>입니다.</div>
		<div>BMI 수치 : <%=  BMI  %></div>
	</div>


</body>
</html>