package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.http.HttpResponse;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingQuiz01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 한글 인코딩(깨짐 방지) => response header에 세팅 (순서 상관 없음)
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		out.println("1-1 연습문제 : Url Mapping(web.xml) - 오늘의 날짜");
		
		/*
		오늘 날짜 출력
		오늘 날짜를 출력하세요.
		- web.xml URL Mapping 후 servlet을 이용해서 출력하세요.
		- Content Type은 text/plain으로 설정하세요.

		출력 예시
		오늘의 날짜는 20XX년 X월 XX일
		*/
		
		out.println();
		// Date 메서드와 날짜 formatter(검색해서 사용하는 것이 빠름) 활용
		Date now = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
		out.print("오늘의 날짜는 ");
		out.println(sdf.format(now));
	}
}
