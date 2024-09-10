package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex02")
public class UrlMappingEx02 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 한글 깨짐 방지 (순서 상관 없음)
		response.setContentType("text/html"); // plain은 글자로 인식
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		out.println("2. URL Mapping (annotation)");
		
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i;
		}
		out.println("<html><head><title> 합계 </title></head><body>");
		out.print("<p>합계 : <b>" + sum + "</b></p>");
		out.print("</body></html>");
		
	}
}
