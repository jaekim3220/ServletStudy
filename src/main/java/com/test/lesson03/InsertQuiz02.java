package com.test.lesson03;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson03/insert_quiz02")
public class InsertQuiz02 extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		// response 헤더 생략
		
		
		// request parameter 추출
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		
		// DB 연동 (parameter 확인 후 진행)
		MysqlService ms = MysqlService.getInstance();
		ms.connect(); // !!!!! 꼭 불러야함. 실질적인 DB 연동
		
		
		// 쿼리 수행(Insert문)
		
		
		
		// DB 연동 해제
		ms.disconnect();
		
		
		// 유저 목록 화면으로 이동 => redirect 사용
		response.sendRedirect("/lesson03/quiz02.jsp");
		
		
	}
}
