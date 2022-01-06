<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>교포문고</title>
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

	<%
	  List<Map<String, Object>> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<String, Object>() {
        { 
            put("id", 1000);
            put("title", "아몬드"); 
            put("author", "손원평"); 
            put("publisher", "창비");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/267/x9788936434267.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1001);
            put("title", "사피엔스"); 
            put("author", "유발 하라리"); 
            put("publisher", "김영사");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/464/x9788934972464.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1002);
            put("title", "코스모스"); 
            put("author", "칼 세이건"); 
            put("publisher", "사이언스북");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/892/x9788983711892.jpg");
        } 
    };
    list.add(map);

    map = new HashMap<String, Object>() {
        { 
            put("id", 1003);
            put("title", "나미야 잡화점의 기적"); 
            put("author", "히가시노 게이고"); 
            put("publisher", "현대문학");
            put("image", "http://image.kyobobook.co.kr/images/book/xlarge/194/x9788972756194.jpg");
        } 
    };
    list.add(map);
    
/*     // 동명이인처럼 동일한 책이 있을수 있으니까 고유한 번호인 id로 해줘야 한다.
    Iterator<Map<String, Object>> iter = list.iterator();
    
    int id = Integer.parseInt(request.getParameter("id"));
    
    while (iter.hasNext()) {
    	Map<String, Object> book = iter.next();
     		
    	if (id == (int)book.get("id")) { */
    		
	
	%>
	
	<%
	// 테이블에 보여줄 한권의 책 정보 뽑아내기
	Map<String, Object> target = new HashMap<>();
    int id = Integer.parseInt(request.getParameter("id"));
    
    for (Map<String, Object> book : list) {
    	if (id == (int)book.get("id")) {
    		target = book;
    		break;
    	}
    }
	
	%>
	
	<div class="container">
		<div class="d-flex">
		<!-- 책표지 -->
		</div>
			<img src=" <%= target.get("image") %>" alt="표지">
	</div>
	<!-- 책정보 -->
	<div>
		<span class="display-1 font-weight-bold d-block"><%= target.get("title") %></span>
		<span class="display-3 font-weight-bold d-block text-info"><%= target.get("author") %></span>
		<span class="display-4 font-weight-bold d-block text-info"><%= target.get("publisher") %></span>
	</div>

	
	
	
	<%-- <div class="d-flex">
			<div class="col-2">
				<img src=<%= book.get("image")%> alt="사진" width="100px"  >
			</div>
			<div class="col-2">
				<h1><%=book.get("title") %></h1>
				<h2><span class="text-info"><%=book.get("author") %></span></h2>
				<h3 class="text-secondary"><%=book.get("publisher") %></h3>
			</div>
		</div>
	
	<% } 
		}
		%> --%>


</body>
</html>