package com.test.quiz;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz02_insert")
public class DatabaseQuiz02Insert extends HttpServlet{

	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) {
		
		// db 연결
		MysqlService mysql = MysqlService.getInstance();
		mysql.connection();
		
		
		// insert
		
		String insertQuery = "insert into `bookmark`(`name`,`url`)"
							+"values('마론달','')";
		
		// db 연결 해제
		mysql.disconnection();
		
		// 리다이렉트
		
	}
}
