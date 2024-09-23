package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/insert_ex02")
public class InsertEx02 extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		
		// response header 생략
		
		
		// request parameter 추출
		String name = request.getParameter("name");
		String yyyymdd = request.getParameter("yyyymdd");
		String email = request.getParameter("email");
		String introduce = request.getParameter("introduce");
		
		
		// DB 연동 (parameter 확인 후 진행)
		MysqlService ms = MysqlService.getInstance();
		ms.connect(); // !!!!! 꼭 불러야함. 실질적인 DB 연동
		
		
		// 쿼리 수행(Insert문)
		String insertQuery = "insert into `new_user`"
				+ "(`name`, `yyyymmdd`, `email`, `introduce`)"
				+ "values"
				+ "('" + name + "', '" + yyyymdd + "', '" + email + "', '" + introduce + "')";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		// DB 연동 해제
		ms.disconnect();
		
		
		// 유저 목록 화면으로 이동 => redirect 사용
		response.sendRedirect("/lesson03/ex02_1.jsp");
		
		
	}
}
