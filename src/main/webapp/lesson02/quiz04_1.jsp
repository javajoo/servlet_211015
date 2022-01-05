<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz04</title>
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
	int number1 = Integer.parseInt(request.getParameter("number1"));
	int number2 = Integer.parseInt(request.getParameter("number2"));
	String operator = request.getParameter("operator");

	// int: 0 또는 String: ""로 초기화 해주기!!!
	double result = 0;
	String printOperator = "";

	/* 	if (operator.equals("plus")) {
			result = number1 + number2;
		} else if (operator.equals("min")) {
			result = number1 - number2;
		} else if (operator.equals("multiple")) {
			result = number1 * number2;
		} else if (operator.equals("divide")) {
			result = number1 / number2;
		} */

	switch (operator) {
	case "plus":
		result = number1 + number2;
		printOperator = "+";
		break;

	case "min":
		result = number1 - number2;
		printOperator = "-";
		break;

	case "multiple":
		result = number1 * number2;
		printOperator = "X";
		break;

	case "divide":
		result = number1 / (double) number2;
		// (정수 / 정수) = 정수 이기 때문에 변수하나는 형변환 해야한다.
		printOperator = "/";
		break;

	}
	%>

	<div class="container">
		<h1>계산 결과</h1>
		<div class="display-4">
		<%-- 	
			<%=number1%>
			<%=printOperator%>
			<%=number2%> 
			--%>
			
			<!-- 한번에 출력도 가능하다. -->
			<%
				out.print(number1 + " "+ printOperator + " "+ number2  + "=");			
			%>
			<span class="text-primary"><%=result%></span>
		</div>
	</div>

</body>
</html>
