package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz10")
public class PostMethodQuiz10 extends HttpServlet {

	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	};
	
	@Override
	public void doPost(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		// 한글 폰트
		response.setContentType("text/html");
		
		/*
		사용자 정보 확인
		id 와 password 를 입력 받고, submit 할 수 있는 html 문서를 작성하세요.
		
		전달 받은 id와 password가 아래에 주어진 설정한 Map 정보와 일치하는지 확인하세요.
		id가 일치하지 않는 경우 id가 일치하지 않습니다. 를 출력하세요.
		password가 일치하지 않는 경우 password가 일치하지 않습니다.를 출력하세요.
		일치하는 경우 아래와 같이 출력하세요.
		XXX님 환영합니다!
		*/
		
		// request params(디버깅을 통해 request가 옳바르게 동작하는지 확인)
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><header><title>아이디/비밀번호 확인</title></header><body>");
		
		if (!id.equals(userMap.get("id"))) {
			out.println("id가 일치하지 않습니다.");
		} else if (password.equals(userMap.get("password")) == false) {
			out.println("비밀번호가 일치하지 않습니다.");
		} else {
			out.println(userMap.get("name") + "님 환영합니다.");
		}
		
		out.println("</body></html>");
		
	}
}
