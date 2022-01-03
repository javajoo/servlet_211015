package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex02")
public class UrlMappingEx02 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html"); // 태그 문법 
		
		PrintWriter out = response.getWriter();
		
		// 1 ~ 10 합계 구하기 
		int sum = 0;
		for (int i = 1; i <=10; i++) {
			sum += i;
		}
		
		
		
		
		// html 태그 이기 때문에 br로 줄바꿈 해야 한다.
		out.print("<html><head></head><body>"); 
		out.print("합계: <strong>" + sum + "</strong>"); // body안에 내용을 따로 넣어준다.
		out.print("</body></html>");
		
		// 자바 코드에 html 껴있는게 Servlet이기 때문에 안좋은 구조다. 안쓴다!!!
		
		
		
	}
}
