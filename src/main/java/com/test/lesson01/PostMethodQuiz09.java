package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz09")
public class PostMethodQuiz09 extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		// 한글 폰트
		response.setContentType("text/html");
		
		/*
		입사 지원
		이름과 자기소개서를 입력 받아서 submit 할 수 있는 html 문서를 작성하세요.
		자기소개서 입력은 textarea 태그를 이용하세요.
		*/
		
		// request params(디버깅을 통해 request가 옳바르게 동작하는지 확인)
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
		
		PrintWriter out = response.getWriter();
		out.println("<html><header><title>입사지원서</title></header><body>");
		if (name.length() <= 0) {
			out.println("이름을 입력해주세요.");
			return;
		}
		if (introduce.length() <= 0) {
			out.println("내용을 입력해주세요.");
			return;
		}
		out.println("<b>" + name + "</b>님 지원이 완료되었습니다.<br>");
		out.println("<p><b> 지원 내용 </b></p>");
		out.println("<p>" + introduce + "</p>");
		out.println("</body></html>");
	}
}
