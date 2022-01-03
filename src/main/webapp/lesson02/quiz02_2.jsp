<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	Date now = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("현재 날짜는 yyyy년 MM월 dd일 입니다.");
	String date = sdf.format(now);
	%>

	<h1><%=date%></h1>


</body>
</html>