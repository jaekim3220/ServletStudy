package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz04") // url 지정
public class UrlMappingQuiz04 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		
		PrintWriter out = response.getWriter();
		out.println("1-4 연습문제 : Url Mapping(annotation) - 리스트 출력");
		out.println();
		
		/*
		리스트 출력
		반복문을 이용해서 30개의 리스트를 출력하세요.
		- WebServlet 어노테이션을 이용해서 URL을 Mapping 하세요.
		- HTML 페이지로 만드세요.
		*/
		
		int number = 0;
		for (int i = 1; i <=30; i++) {
			number = i;
		}
		
		out.println("<html><header><title>리스트 출력</title></header>");
		out.println("<body><ul>");
		for (int i = 1; i <=30; i++) {
			out.print("<li>" + i + "번째 리스트" + "</li>");
		}
		out.println("</ul></body><html>");
		
	}

}
