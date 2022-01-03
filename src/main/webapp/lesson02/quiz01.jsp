<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.*" %> 
 <!-- 임포트 따로 해줘야 한다. -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>quiz01</title>
</head>
<body>
	
	<%!
	// 1.
	private int sum = 0;
	//method
	public int getSum(int n) {
		for (int i = 1; i <= n; i++) {
			sum+= i;
		}
		return sum;
	}
	
	%>
	<!-- 합쳐서 사용하면 된다!! -->
	<h3>1부터 50까지의 합은<%= getSum(50) %>입니다.</h3>
	
	<%
	// 2.
	
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	double average = 0;
	for (int i = 0; i < scores.length; i++) {
		sum += scores[i];
		average = (double)sum / scores.length;
	}
	
	
	%>
	
	<h3>평균 점수는 <%= average %>입니다.</h3>
	
	<%
	// 3.
	
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
	int score = 0;
	for (int i = 0; i < scoreList.size(); i++) {
		if (scoreList.get(i).contains("O")) {
			score += 100 / scoreList.size();
		}
	}
	
	// %% 따로 안만들고 안에 붙여서 해도 된다. 
	
	%>
	
	<h3>채점 결과는 <%= score %>점 입니다.</h3>
	
	<%
	// 4.
	String birthDay = "20010820";
	
	birthDay = birthDay.substring(0, 4);
	// out.print(birthDay); 잠깐 확인하고 싶을때 out 바로 쓸 수 있다.
	int year = Integer.parseInt(birthDay);
	// out.print(year);
	int yyyy = 2021 - year + 1;
	%>
	
	<h3>20010820의 나이는 <%= yyyy %>세 입니다.</h3>

</body>
</html>