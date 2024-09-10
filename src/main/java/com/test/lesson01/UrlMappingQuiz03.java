package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz03") // url 지정
public class UrlMappingQuiz03 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 한글 깨짐 방지
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		out.println("1-3 연습문제 : Url Mapping(annotation) - 뉴스 기사 출력");
		out.println();
		/*
		뉴스 기사 출력
		기사 문구를 브라우저에 출력하세요.
		WebServlet 어노테이션을 이용해서 URL을 Mapping 하세요.
		*/
		
		// Date 메서드와 날짜 formatter(검색해서 사용하는 것이 빠름) 활용
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yy년 MM월 dd일 HH:mm:ss");
		
		out.println("<html><header><title>마론달 뉴스</title></header>");
		out.println("<body>");
		out.println("<p><h1>[단독] 고양이가 야옹해</h1></p>");
		out.println("기사 입력 시간 : " + sdf.format(date) + "<hr>");
		out.println("끝");
		out.println("</body>");
		out.println("<html>");
	}
		
		
}
