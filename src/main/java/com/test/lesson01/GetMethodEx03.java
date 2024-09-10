package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex03")
public class GetMethodEx03 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		/*
		// 예제 3-1 : Request Parameter
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain"); // plain은 글자(문자)로 인식
		
		PrintWriter out = response.getWriter();
		out.println("3. GET Method와 JSON");
		
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		int age = Integer.valueOf(request.getParameter("age"));
		
		out.println("사용자 아이디 : " + userId);
		out.println("사용자 이름 : " + name);
		out.println("사용자 나이 : " + age);
		*/

		
		// 예제 3-2 : json
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json"); // plain은 글자(문자)로 인식
		
		PrintWriter out = response.getWriter();
		
		String userId = request.getParameter("user_id");
		String name = request.getParameter("name");
		int age = Integer.valueOf(request.getParameter("age"));
		
		// {"user_id":"hellcat", "name":"김재현", "age":26}
		out.print("{\"user_id\":\"" + userId + "\", \"name\":\""
				+ name + "\", \"age\":" + age + "}");
		
		
	}
}
