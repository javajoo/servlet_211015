<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 시간</title>
</head>
<body>
	<!-- 정적 첨부 방식  -->
 	현재 시간은?<br>
 	<!-- 상대경로로 해준다.(같은폴더 안에 있는 경우) date.jsp -->
 	<!-- 절대경로 : /lesson03/ex01/date.jsp-->
 	<%@ include file="/lesson03/ex01/date.jsp"%>
</body>
</html>