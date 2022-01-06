<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배탈의 민족</title>
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
		<h1 class="text-center">검색 결과</h1>
		<!-- 테이블 안에 들어있는 내용 가운데 정렬이 가능하다. -->
		<table class="table text-center">
			<!-- 제목이 상단에 있을경우 thead와 tbody로 나눈다. 제목:<th> -->
			<thead>
				<tr>
					<th>메뉴</th>
					<th>상호</th>
					<th>평점</th>
				</tr>
			</thead>

			<%
			// Object : value가 다양한 형태로 되어있을 때 모든 클래스의 부모인 Object로 선언할 수 있다.
			// 실제 값을 꺼냇을때 다운캐스팅을 해줘야 한다.

			// 메뉴 데이터
			List<Map<String, Object>> list = new ArrayList<>();
			Map<String, Object> map = new HashMap<String, Object>() {
				{
					put("name", "버거킹");
					put("menu", "햄버거");
					put("point", 4.3);
				}
			};
			list.add(map);
			map = new HashMap<String, Object>() {
				{
					put("name", "BBQ");
					put("menu", "치킨");
					put("point", 3.8);
				}
			};
			list.add(map);
			map = new HashMap<String, Object>() {
				{
					put("name", "교촌치킨");
					put("menu", "치킨");
					put("point", 4.1);
				}
			};
			list.add(map);
			map = new HashMap<String, Object>() {
				{
					put("name", "도미노피자");
					put("menu", "피자");
					put("point", 4.5);
				}
			};
			list.add(map);
			map = new HashMap<String, Object>() {
				{
					put("name", "맥도날드");
					put("menu", "햄버거");
					put("point", 3.8);
				}
			};
			list.add(map);
			map = new HashMap<String, Object>() {
				{
					put("name", "BHC");
					put("menu", "치킨");
					put("point", 4.2);
				}
			};
			list.add(map);
			map = new HashMap<String, Object>() {
				{
					put("name", "반올림피자");
					put("menu", "피자");
					put("point", 4.3);
				}
			};
			list.add(map);

			Iterator<Map<String, Object>> iter = list.iterator();
			String keyword = request.getParameter("keyword");
			String starPointFilter = request.getParameter("starPointFilter");
			// 체크박스여도 하나만 가지고 올 경우에는 getParameter로 받아올 수 있다.
			// 체크 안함 : null, 체크 함: "true"
			boolean exclude = starPointFilter != null; // 체크됨(4점 이하 제외)

			Map<String, Object> result = iter.next();
			for (Map<String, Object> item : list) {
				if (keyword.equals(item.get("menu"))) {
					// objcet이기 때문에 처음에 등록했던 타입으로 다운캐스팅 해줘야 한다.
					if (exclude == true && (double) item.get("point") <= 4) { // skip 조건 : 체크됨 && 4점 이하
				continue;
					}
			%>



			<tbody>
				<tr>
					<td><%=item.get("menu")%></td>
					<td><%=item.get("name")%></td>
					<td><%=item.get("point")%></td>
				</tr>

				<%
				}
				}
				%>

			</tbody>
		</table>

	</div>

</body>
</html>
