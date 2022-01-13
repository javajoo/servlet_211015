package com.test.quiz;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz03_insert")
public class DatabaseQuiz03Insert extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		// 파라미터 가져온다
		String nickname = request.getParameter("nickname");
		String title = request.getParameter("title");
		int price = Integer.parseInt(request.getParameter("price"));
		String description = request.getParameter("description");
		String picture  = request.getParameter("picture");
		
		// db해제
		MysqlService mysql = MysqlService.getInstance();
		mysql.connection();
		
		// insert 쿼리 
	
		String insertQuery1 = "insert into `seller`(`nickname`)" + "values('"+ nickname+ "')";
		String insertQuery2 = "insert into `used_goods`() + values('title','price');
		
		// db 해제
		mysql.disconnection();
	}
}
