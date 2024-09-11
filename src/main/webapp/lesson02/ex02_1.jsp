<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2-1 예제 : GET Method - 다른 jsp에서 받기 결과</title>
</head>
<body>
	<h1>GET Method</h1>
	
	<%
		// request는 CharacterEncodingFilter에서 정의해서 사용 가능
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
	%>
	<b>아이디 : </b>
	<%= id %> <br>
	
	<b>이름 : </b>
	<%= name %> <br>
	
	<b>나이 : </b>
	<%= age %> <br>
	
</body>
</html>



