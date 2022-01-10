<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<nav class="bg-danger d-flex align-items-center">
	<!-- ul태그 통채를 nav에 d-flex 줘야 한다. -->
	<!-- nav-fill과 w-100 같이 써야 가로만큼 퍼진다. -->
	<ul class="nav nav-fill font-weight-bold w-100">
		<li class="nav-item"><a
			href="/lesson03/quiz01/template.jsp"
			class="nav-link nav-font">전체</a></li>
		<li class="nav-item"><a
			href="/lesson03/quiz01/template.jsp?category=지상파"
			class="nav-link nav-font">지상파</a></li>
		<li class="nav-item"><a
			href="/lesson03/quiz01/template.jsp?category=드라마"
			class="nav-link nav-font">드라마</a></li>
		<li class="nav-item"><a
			href="/lesson03/quiz01/template.jsp?category=예능"
			class="nav-link nav-font">예능</a></li>
		<li class="nav-item"><a
			href="/lesson03/quiz01/template.jsp?category=영화"
			class="nav-link nav-font">영화</a></li>
		<li class="nav-item"><a
			href="/lesson03/quiz01/template.jsp?category=스포츠"
			class="nav-link nav-font">스포츠</a></li>
	</ul>
</nav>


