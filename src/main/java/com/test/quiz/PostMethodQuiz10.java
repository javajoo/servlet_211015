package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz10")
public class PostMethodQuiz10 extends HttpServlet{
	// 상수값처럼 변하지 않는다.
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	};
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
			// iterator 안돌려도 된다.
			// 조건을 동시에 보지 않고 한조건, 한조건 따로따로 본다.
			// 안좋은 조건 : if, else if 나머지 : else
		
			if (userMap.get("id").equals(id) == false) {
				out.print("id가 일치하지 않습니다.");
			} else if (userMap.get("password").equals(pw) == false)  {
				out.print("password가 일치하지 않습니다.");
			} else {
				out.print(userMap.get("name") + "님 환영합니다!");
			}

	}

}
