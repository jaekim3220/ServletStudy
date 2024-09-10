<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2-1 예제 : JSP 스크립트 요소</title>
</head>
<body>
	<h1>JSP</h1>
	
	<!-- HTML 주석 : 소스 보기에서 보임 -->
	<%-- JSP 주석 : 소스 보기에서 안 보임 --%>
	
	<%
		// 자바 문법 시작
		// scriptlet
		
		int sum = 0;
		for (int i = 0; i <= 10; i++) {
			sum += i;
		}
	%>
	
	<b>합계 : </b>
	<input type="text" value="<%= sum %>"> <!-- expression 문법으로 java 변수 입력 -->
	<hr>
	
	<%!
		// !를 사용해 선언문으로(클래스 같은 느낌)
		
		// 속성 : field
		int num = 100;
		
		// 기능 : 메서드
		public String getHelloWorld() {
			return "Hello World!!";
		}
	%>
	
	<%= num + 200 %>
	<br>
	
	<%= getHelloWorld() %>
	
	<%
		
		List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	%>
	
</body>
</html>