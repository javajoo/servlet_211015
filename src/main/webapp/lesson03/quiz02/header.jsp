<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header class="d-flex">
	<div class="col-2 ">
		<div class=" font-weight-bold text-center">
<<<<<<< HEAD
			<a href="/lesson03/quiz02/list_template.jsp" class="text-success">Melong</a>
		</div>
	</div>


	<!-- 해당하는 부분에만 폼태그 걸어주면 된다. 폼태그는 submit으로, name으로 넘기게 해줘야 넘어간다 -->
	<form method="get" action="/lesson03/quiz02/detail_template.jsp">
		<div class="col-3">
			<div class="input-group d-flex align-items-center mt-4">
				<input type="text" class="form-control" name="search">
				<div class="input-group-append">
					<button type="submit" class="form-control btn btn-info">검색</button>
				</div>
			</div>
		</div>
	</form>
=======
			<a href="/lesson03/quiz02/template.jsp" class="text-success">Melong</a>
		</div>
	</div>

	<div class="col-3">
		<div class="input-group d-flex align-items-center mt-4">
			<input type="text" class="form-control" name="title">
			<div class="input-group-append">
				<button type="submit" class="form-control btn btn-info">검색</button>
			</div>
		</div>
	</div>
>>>>>>> ff06869a357c635b857e390cb9ac5ae0ab905f8b
</header>