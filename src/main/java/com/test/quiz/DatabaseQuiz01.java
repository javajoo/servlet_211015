package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz01")
public class DatabaseQuiz01 extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");

		// db 연결
		MysqlService mysqlservice = MysqlService.getInstance();
		mysqlservice.connection();

		// insert 쿼리

		String insertQuery = "insert into `real_estate` (`realtorId`,`address`,`area`,`type`,`price`,`rentPrice`)"
				+ "values ()";

		// 결과 값 출력

		String selectQuery = "select * from `real_estate`";

		PrintWriter out = response.getWriter();
		try {
			ResultSet resultSet = mysqlservice.select(selectQuery);

			// iterator 같은 반복문
			while (resultSet.next()) { // 결과 행이 있는 동안 수행
				out.println(resultSet.getInt("realtorId"));
				out.println(resultSet.getString("address"));
				out.println(resultSet.getInt("area"));
				out.println(resultSet.getString("type"));
				out.println(resultSet.getInt("price"));
				out.println(resultSet.getInt("rentPrice"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		// db 해제
		mysqlservice.disconnection();

	}
}
