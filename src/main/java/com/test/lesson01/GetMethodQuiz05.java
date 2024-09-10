package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class GetMethodQuiz05 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html"); // plain은 글자(문자)로 인식
		
		PrintWriter out = response.getWriter();

		/*
		구구단 링크
		a 태그를 활용해서 number 파라미터로 입력된 단수를 출력하세요.
		HTML 문서로 만드세요.
		*/

		out.println("1-5 연습문제 : Get Method - 구구단");
		
		int number = Integer.valueOf(request.getParameter("number")); // 디버깅 기능을 사용해 number을 정확히 가져오는지 확인
		
		out.println("<html><header><title>" + number + "단" + "</title></header><body><ul>");
		for (int i = 1; i <= 9; i++) {
			out.println("<li>" + number + " X " + i + " = " + (number * i) + "</li>");
		}
		out.println("</ul></body></html>");
	}
}
