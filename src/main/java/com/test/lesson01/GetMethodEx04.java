package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex04")
public class GetMethodEx04 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		// 한글 폰트
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// request params(디버깅을 통해 request가 옳바르게 동작하는지 확인)
		String userId = request.getParameter("userId");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		
		PrintWriter out = response.getWriter();
		out.println("<html><header><title>회원 정보</title></header><body>");
		
		/*
//		일반출력
		out.println("아이디 : " + userId + "<br>");
		out.println("이름 : " + name + "<br>");
		out.println("생년월일 : " + birth + "<br>");
		out.println("이메일 : " + email + "<br>");
		*/
		
//		테이블 형식
		out.println("<table border=1>");
		out.println("<tr><th>아이디</th><td>" + userId + "</td></tr>");
		out.println("<tr><th>이름</th><td>" + name + "</td></tr>");
		out.println("<tr><th>생년월일</th><td>" + birth + "</td></tr>");
		out.println("<tr><th>이메일</th><td>" + email + "</td></tr>");
		
		out.print("</table></body></html>");
		
		
	}
}
