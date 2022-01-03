package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class PostMethodEx05 extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// doPost 이젠 주소로 못들어간다!! 
		
//		response.setCharacterEncoding("utf-8"); // CharacterEncodingFilter에서 해준다.
		response.setContentType("text/html"); // 문서마다 넣어줘야 한다.
		PrintWriter out = response.getWriter();
		
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		// 테이블로 출력
		
		
		out.print("<html><head></head><body><table border=1>");
		out.print("<tr><th>아이디</th><td>" + userId + "</td></tr>");
		out.print("<tr><th>아이디</th><td>" + name + "</td></tr>");
		out.print("<tr><th>아이디</th><td>" + birth + "</td></tr>");
		out.print("<tr><th>아이디</th><td>" + email + "</td></tr>");
		out.print("</table></body></html>");
		
		
		
	}
}
