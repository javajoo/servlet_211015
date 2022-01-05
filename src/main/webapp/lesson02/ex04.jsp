<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문 사용</title>
</head>
<body>

<%
	// Map을 테이블로 표현하기
	// {"korean"=85, "english"=72, "math"=90, "science"=100}
	
	Map<String, Integer> scoreMap = new HashMap<>(); 
	scoreMap.put("korean", 85);
	scoreMap.put("english", 72);
	scoreMap.put("math", 90);
	scoreMap.put("science", 100);
	

%>

	<table border=1>
		<%
		// set<String> keys = scoreMap.ketSet();
		// Iterator<String> iter = keys.iterator();
		// 두줄로 하느냐 한줄로 하느냐 차이
		
		Iterator<String> iter = scoreMap.keySet().iterator();
		while(iter.hasNext()) { // 0 ~ 3 
			String key = iter.next();
		
		
		%>
		<tr>
			<th><%-- <%= key %> --%>
				<%
				if (key.equals("korean")) {
					out.print("국어");
				} else if (key.equals("english")) {
					out.print("영어");
				} else if (key.equals("math")) {
					out.print("수학");
				} else if (key.equals("science")) {
					out.print("과학");
				}
					
				%>
			
			</th> <!-- 키, 과목... -->
			<td><%= scoreMap.get(key) %></td> <!-- 키로 값 빼기, 점수.. -->
		</tr>
		
		<%
		} // 괄호가 어디까지인지 잘 보고 하면 태그도 같이 반복문 돌릴 수 있다.(자바 for문 괄호) 
		%>
		
	</table>
	
	
	
	
	
	
	
</body>
</html>