package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz07")
public class GetMethodQuiz07 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String creditCard = request.getParameter("creditCard");
		Integer price = Integer.parseInt(request.getParameter("price"));
		
		
		out.print("<html><head></head><body>");
		
		// 조건이 걸렸을 때 
		if (address.contains("서울시") == false) { // 앞에 느낌표 붙이는 구문보다 좋다!!
			out.print("배달 불가 지역입니다");
		}
		
		else if (creditCard.equals("신한카드")) {
			out.print("결제 불가 카드 입니다.");		
		}
		
		// 걸리는 조건이 없을 때
		else { 
		out.print(address + "<b> 배달준비중</b><br>" + "결제금액:" + price + "원");
		}
		
		out.print("</body></html>");
		
	}
	
}
