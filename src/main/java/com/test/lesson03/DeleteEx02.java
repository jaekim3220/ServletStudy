package com.test.lesson03;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/delete_ex02")
public class DeleteEx02  extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		
		// response header 생략
		
		
		// request parameter 추출 (디버깅 후 진행)
		int id = Integer.valueOf(request.getParameter("id"));
		
		
		// DB 연동 (parameter 확인 후 진행)
		MysqlService ms = MysqlService.getInstance();
		ms.connect(); // !!!!! 꼭 불러야함. 실질적인 DB 연동
		
		
		// 쿼리 수행 (Delete Query)
		String deleteQuery = "delete from `new_user` where `id` = " + id;
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		// DB 연동 해제
		ms.disconnect();
		
		
		// 유저 목록 화면으로 이동 => redirect 사용 (디버깅으로 연결 확인)
		response.sendRedirect("/lesson03/ex02_1.jsp");
		
		
	}
}
