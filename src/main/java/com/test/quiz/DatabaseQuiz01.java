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

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");

		// DB 연결
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connection();

		// try-catch 안에 insert쿼리, select쿼리 한꺼번에 넣어줘도 된다!

		try {
			// insert 쿼리

			// 에러가 뜨는지 워크벤치에 붙여넣어서 확인하면 된다.
			String insertQuery = "insert into `real_estate` (`realtorId`,`address`,`area`,`type`,`price`,`rentPrice`)"
					+ "values (3,'헤라펠리스 101동 5305호',350,'매매',1500000,null)";
			mysqlService.update(insertQuery);

			// select 쿼리 -> 출력

			String selectQuery = "select * from `real_estate` order by `id` desc limit 10";

			ResultSet resultSet = mysqlService.select(selectQuery);
			PrintWriter out = response.getWriter();
			// iterator 같은 반복문
			while (resultSet.next()) { // 결과 행이 있는 동안 수행
				// while문 안에서 출력 해줘야 한다.
				out.println("매물 주소: " + resultSet.getString("address") + 
						", 면적: " + resultSet.getInt("area") + 
						", 타입: " + resultSet.getString("type"));
			}
			// 역순이기 때문에 헤라펠리스가 맨 위에 나오면 맞다.

		} catch (SQLException e1) {
			e1.printStackTrace();
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}

		// DB 연결 해제
		mysqlService.disconnection();

	}
}
