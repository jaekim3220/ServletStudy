package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Decoder.Text;

@WebServlet("/lesson01/quiz07")
public class GetMethodQuiz07 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws IOException {
		
		// 한글 폰트
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		/*
		주문하기
		입력을 받는 input을 만들고, form을 통해 값을 submit 할 수 있는 html 문서를 만드세요.
		
		출력 화면도 HTML 문서로 만드세요.
		전달받은 주소에 서울시 가 포함되어 있지 않으면, 배달 불가 지역입니다 를 출력하세요.
		전달 받은 결제 카드가 신한카드인 경우 결제 불가 카드 입니다. 를 출력하세요.
		*/
		
		// request params(디버깅을 통해 request가 옳바르게 동작하는지 확인)
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.valueOf(request.getParameter("price"));
		
		PrintWriter out = response.getWriter();
		out.println("<html><header><title>주문 정보</title></header><body>");
		
		if (!address.contains("서울시")) { // startsWith로도 가능
			out.println("배달 불가 지역입니다.");
		} else if (card.equals("신한카드")) { // card.contains("신한")도 가능
			out.println("결제 불가 카드입니다.");
		} else {
			out.println(address + " <b>배달 준비중</b> <br>");
			out.println("결제 금액 : " + price + "원");
		}
		
		out.print("</body></html>");
	}
}
