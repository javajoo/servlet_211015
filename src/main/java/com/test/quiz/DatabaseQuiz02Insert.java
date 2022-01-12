package com.test.quiz;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz02_insert")
public class DatabaseQuiz02Insert extends HttpServlet{

	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		// db 연결
		MysqlService mysql = MysqlService.getInstance();
		mysql.connection();
		
		// 1. 테이블 생성 

		
		// 2. 데이터 저장
		String insertQuery = "insert into `site` (`name`,`url`)" + 
							"values('" + name +"','" +url +"')";
		
		try {
			mysql.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// db 해제
		mysql.disconnection();
		
		// 리다이렉트
		response.sendRedirect("/lesson04/quiz02/quiz02_1.jsp");
	}
}
