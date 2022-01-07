<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!-- 첨부되는 페이지에는 맨 위에 임포트만 놔두고 다 삭제한다. -->

	<!-- http://localhost:8080/lesson03/ex01/date.jsp 로 들어가야 한다. -->
	<!-- calendar -> date 객체로 변환 -->
    <p>
    현재 시간: <%= Calendar.getInstance().getTime() %>
    <!-- Fri Jan 07 16:09:25 KST 2022  : 알아두는 게 좋다.-->
    <!-- 시간 다루는 일이 많다. -->
    </p>