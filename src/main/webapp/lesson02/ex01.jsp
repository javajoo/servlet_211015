<%@page import="javax.sound.midi.SysexMessage"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>

	<h1>JSP 예제</h1>
	
	<!-- HTML의 주석: 소스보기에서 보인다. -->
	<%--JSP의 주석: 소스보기에서 안보인다.(개발자만 볼 수 있다.) --%>
	
	<%
	// 자바 문법 시작(자바 주석이 가능하다.)
	// 스크립틀릿(Scriptlet)
	
	int sum = 0; 
	for (int i = 1; i <= 10; i++) {
		sum += i;
	}
	%>
	
	<strong>합계:</strong>
	<input type="text" value="<%= sum %>"> <!-- 표현식(Expression) -->
	
	
	<%!
	// 선언문 - 클래스 같은 느낌(필드, 메소드로 구성)
	
	// field
	private int num = 100;
	
	
	// method
	public String getHelloWorld() {
		return "HelloWorld!";
	}
	
	%>
	<br>
	<%= getHelloWorld() %> <!-- 세미콜론은 붙이지 않는다. -->
	
	<br>
	<%= num + 200 %>
	
	
</body>
</html>