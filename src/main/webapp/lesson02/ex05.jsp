<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>

<%
	Calendar today = Calendar.getInstance(); // singleton이 아니다.
	out.print(today);

	SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분 ss초");
	out.print("오늘날짜:" + sdf1.format(today.getTime())); 
	// Calender -> Date 객체로 변환 후 format 적용
	
	// 어제 날짜
	SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy년 MM월 dd일");
	Calendar yesterday = Calendar.getInstance();
	yesterday.add(Calendar.DATE, -1); // 단위, 이동일 // 하루전
	yesterday.add(Calendar.MONTH, -1); // 한달 전
	yesterday.add(Calendar.YEAR, -1); // 1년전
	out.print("어제날짜:" + sdf2.format(yesterday.getTime()));

	// 두 날짜 비교
	// 기준값(today)이 크면: 1
	// 같으면 : 0
	// 기준값이 작으면: -1
	int result = today.compareTo(yesterday);
	if (result > 0) {
		out.print("today가 더 크다");
	} else if (result == 0) {
		out.print("두 날짜는 같다");
	} else {
		out.print("yesterday가 더 크다");
	}
%>
</body>
</html>