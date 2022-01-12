<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 추가</title>
</head>
<body>
	<%-- 
	1) 유저 추가 : ex02.jsp(폼화면) -> DatabaseEx02Insert.java (서블릿: DB insert) => 리다이렉트 ex02_1.jsp(유저목록)
	 --%>
	<!-- 회원정보가 넘어가야 하기 때문에 정보 노출되면 안되기 때문에 post로 해준다. -->
	<!-- submit 누르면 다른 페이지로 넘어간다. -->
	<form method="post" action="/db/ex02_insert"> 
		<p>
			<b>이름</b>
			<!-- form태그 넘길때는 꼭 name 정보 넣어줘야 한다. -->
			<input type="text" name="name">
		</p>

		<p>
			<b>생년월일</b>
			<input type="text" name="yyyymmdd">
		</p>

		<p>
			<b>자기소개</b><br>
			<!-- textarea 사이에는 공백 넣으면 안된다! -->
			<textarea name="introduce" rows="5" cols="50"></textarea>
		</p>

		<p>
			<b>이메일</b> <input type="text" name="email">
		</p>

		<p>
			<input type="submit" value="추가">
		</p>
	</form>
</body>
</html>