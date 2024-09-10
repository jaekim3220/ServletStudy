package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UrlMappingEx01 extends HttpServlet {
	
	// Server를 설정하지 않으면 run 불가
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 한글 인코딩(깨짐 방지) => response header에 세팅 (순서 상관 없음)
		response.setContentType("text/plain");
		response.setCharacterEncoding("utf-8");
		
		PrintWriter out = response.getWriter();
		out.println("1. URL Mapping (web.xml)");
		
		// 날짜
		Date now = new Date();
		out.println(now);
		
		// 날짜 formatter(검색해서 사용하는 것이 빠름)
		// 2024-09-04 오후 19:51:36
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a HH:mm:ss");
		out.println(sdf.format(now));
	}
}
