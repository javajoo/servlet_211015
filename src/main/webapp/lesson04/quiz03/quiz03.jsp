<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<style>
.wrap {
	width: 1200px;
	margin: auto;
}

a {
	color: white;
	text-decoration: none;
}

a:hover {
	text-decoration: none;
	color: white;
}

header {
	height: 100px;
	background-color: orange;
}

section {
	height: 600px;
}

footer {
	height: 50px;
}

#picture {
	width: 200px;
}

#title {
	width: 400px;
}

#price {
	width: 200px;
}
</style>
</head>
<body>
	<div id="wrap">
		<header>
			<div class="h-50 d-flex align-items-center justify-content-center">
				<h2>
					<a href="/lesson04/quiz03/quiz03.jsp">Hong당무 마켓</a>
				</h2>
			</div>
			<nav class="h-50 d-flex align-items-center">
				<ul class="nav nav-fill w-100">
					<li class="nav-item"><a href="#" class="nav-link">리스트</a></li>
					<li class="nav-item"><a href="#" class="nav-link">물건 올리기</a></li>
					<li class="nav-item"><a href="#" class="nav-link">마이 페이지</a></li>
				</ul>
			</nav>
		</header>


		<section>
			<form method="get" action="/db/quiz03_insert">
				<div>
					<div class="display-4 pt-5 pb-5">물건 올리기</div>
					<div class="d-flex">
						<div>
							<select name="nickname" class="form-control mr-3" id="id">
								<option>--아이디 선택--</option>
								<option>마로비</option>
								<option>아메리카노</option>
								<option>최준</option>
								<option>빠다</option>
								<option>하가루</option>
								<option>다팔아</option>
							</select>
						</div>
						<div>
							<input type="text" placeholder="제목" name="title"
								class="form-control mr-3" id="title">
						</div>
						<div class="d-flex">
							<div>
								<input type="text" placeholder="가격" name="price"
									class="form-control" id="price">
							</div>
							<input type="button" class="btn btn-secondary" value="원">
						</div>
					</div>


					<textarea rows="5" cols="100" name="description"
						class=" form-control mt-2 mb-2"></textarea>


					<div class="d-flex">
						<div>
							<input type="button" class="btn btn-secondary" value="이미지 url"
								id="picture" name="picture" class="form-control">
						</div>
						<input type="text" class="form-control">
					</div>

					<button type="submit" class="btn btn-secondary form-control mt-3">저장</button>
				</div>
			</form>
		</section>


		<footer class="text-center">
			<small>Copyright © marondal 2021</small>
		</footer>

	</div>
</body>
</html>