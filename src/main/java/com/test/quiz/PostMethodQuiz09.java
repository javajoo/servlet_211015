package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz09")
public class PostMethodQuiz09 extends HttpServlet{

	@Override
	public void doPost (HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 타입만 정해주면 된다!!!!! 
		// 한글깨짐방지는 필터가 해주고 있다!!!!
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String text = request.getParameter("text");
		
		out.print("<html><head></head><body>");
		out.print("<b>" + name + "</b>님 지원이 완료 되었습니다.<br>");
		out.print("<h3>지원내용</h3>");
		out.print(text);
		out.print("</body></html>");
	}
}
