package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz06")
public class GetMethodQuiz06 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		// 한글 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		PrintWriter out = response.getWriter();
		
		/*
		1-6 연습문제 : Get Method와 JSON - 연산 결과 JSON
		두 개의 숫자를 parameter로 넘기는 링크를 가진 html 문서를 만드세요.
		두 수를 전달 받고, 두수의 더하기, 빼기, 곱하기, 나누기 연산 결과를 아래와 같은 json 데이터 형태로 출력하세요.
		*/
		
		///lesson01/quiz06?number1=1500&number2=70
		int number1 = Integer.valueOf(request.getParameter("number1"));
		int number2 = Integer.valueOf(request.getParameter("number2"));

//		out.print("{\"number1\":" + number1 + ", \"number2\":" + number2 + "}");
		
//		{"addtion": 1570, "subtraction": 1430, "multiplication": 105000, "division": 21}
		out.print("{\"number1\":" + number1 + ", \"number2\":" + number2 + 
				", \"addtion\":" + (number1 + number2) +
				", \"subtraction\":" + (number1 - number2) +
				", \"multiplication\":" + (number1 * number2) +
				", \"division\":" + (number1 / number2) + "}");
	}
}
