package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet{
	
	// 문법적으로 틀렸는지 확인하려면 어노테이션 해준다.
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		out.println("안녕");
		
	
		Date now = new Date(); // 임포트 utill로 해야 한다.
		out.println(now);
		
		// formatter 날짜 연산 많이 쓰게 된다.
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a hh:mm:ss");
		// M: 월, m: 분 
		out.println(sdf.format(now)); // 여기에 객체를 넣어줘야 내가 원하는 포맷 스트링으로 출력 해준다.
	}

}
