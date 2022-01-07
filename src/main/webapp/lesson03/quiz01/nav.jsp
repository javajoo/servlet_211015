<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="bg-danger">
	<ul class="nav nav-fill font-weight-bold text-center">
		<li class="nav-item"><a
			href="/lesson03/quiz01/template_1.jsp?category="
			전체" class="nav-link nav-font" value="전체">전체</a></li>
		<li class="nav-item"><a href="/lesson03/quiz01/content1.jsp?category=<%= %>" class="nav-link nav-font"
			id="broad">지상파</a></li>
		<li class="nav-item"><a href="#" class="nav-link nav-font"
			id="drama">드라마</a></li>
		<li class="nav-item"><a href="#" class="nav-link nav-font"
			id="fun">예능</a></li>
		<li class="nav-item"><a href="#" class="nav-link nav-font"
			id="movie">영화</a></li>
		<li class="nav-item"><a href="#" class="nav-link nav-font"
			id="sports">스포츠</a></li>
	</ul>
</nav>