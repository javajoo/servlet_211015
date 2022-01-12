package com.test.quiz;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz02_delete")
public class DatabaseQuiz02Delete extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

		MysqlService mysql = MysqlService.getInstance();
		mysql.connection();
		int id = Integer.parseInt(request.getParameter("id"));

		String deleteQuery = "delete from `site` where `id`=" + id;

		try {
			mysql.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		mysql.disconnection();
		
		// 리다이렉트
		response.sendRedirect("/lesson04/quiz02/quiz02_1.jsp");
	}
}
