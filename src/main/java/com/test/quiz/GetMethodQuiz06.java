package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz06")
public class GetMethodQuiz06 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		PrintWriter out = response.getWriter();
		Integer number1 = Integer.parseInt(request.getParameter("number1"));
		Integer number2 = Integer.parseInt(request.getParameter("number2"));
		// { "addtion": 1570,"subtraction":1430,"multiplication":105000,"division": 21}
		
		// 제이슨 쳐보는거 연습하기 \" 
		out.print("{\"addtion\":" + (number1 + number2)
				+ ", \"subtraction\":" + (number1 - number2)
				+ ", \"multiplication\":" + (number1 * number2) 
				+ ", \"division\":" + (number1 / number2)
				+ "}");
		

		
	}
}
