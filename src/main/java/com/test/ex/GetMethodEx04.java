package com.test.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex04")
public class GetMethodEx04 extends HttpServlet {

	
	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		
		// 웹(사용자가 입력한 후 제출한 후) 
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		// 출력
		PrintWriter out = response.getWriter();
		
		// 태그이기 때문에 줄바꿈 "<br>"로 해야 한다.
		out.print("userId : " + userId + "<br>");
		out.print("name : " + name + "<br>");
		out.print("birth : " + birth + "<br>");
		out.print("email : " + email + "<br>");
		
		// 테이블로 출력
		
		out.print("<html><head><title>회원 정보</title></head><body>");
		// 아이디 :
		// 이름 :
		// 나이 :
		// 이메일 : 
		out.print("<table border=1><tr><th>아이디 :</th><td> + userId +</td><tr>");
		out.print("<table border=1><tr><th>이름 :</th><td> + name +</td><tr>");
		out.print("<table border=1><tr><th>생년월일 : </th><td> + birth +</td><tr>");
		out.print("<table border=1><tr><th>이메일 :</th><td> + email +</td><tr>");
		out.print("</table></body></html>");
		
		
		
		
	}
}
