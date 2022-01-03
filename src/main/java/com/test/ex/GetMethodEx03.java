package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class GetMethodEx03 extends HttpServlet{

	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 브레이크포인트: 진짜로 시작하는 부분에다가 걸어준다.
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		// getParameter는 항상 String으로 나타난다.
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		Integer age = Integer.parseInt(request.getParameter("age"));
		// int: null이 들어갈 수 없다.
		// Integer: null이 들어갈 수 있다. 
		
		PrintWriter out = response.getWriter();
//		out.println("user_id: " + userId);
//		out.println("name: " + name);
//		out.println("age: " + age);
		
		// JSON(Javascript Object Notation)으로 response 구성하기
		// 키: 값
		// {"user_Id" : "marobiana", "name" : "boram", "age" : 35}
		
		out.print("{\"user_id\":\"" + userId + "\", \"name\":\"" + name
				+ "\", \"age\":" + age + "}");
		
		// "" 내용쓸때는 \"로 해줘야 한다.
		
		out.print("test");
		
		
	}
}
