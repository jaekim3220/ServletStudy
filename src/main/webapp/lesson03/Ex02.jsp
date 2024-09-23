<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3-2 : jsp와 DB</title>
</head>
<body>

<%--
flow
1)
유저 추가 : ex02.jsp(input 폼 화면) 
-> InsertEx02 서블릿(DB insert) 
-> ex02_1.jsp(유저 목록, DB select)
--%>

	<!-- form 3종 세트 : form 태그, name 속성, submit 타입 -->
	<!-- method를 사용해 Get/Post를 설정-->
	<form method="post" action="/lesson03/insert_ex02"> <!-- blank를 넣으면 insert_ex02의 상태 코드를 확인할 수 없음 -->
		
		<p>
			<b>이름</b>
			<input type="test" name="name">
		</p>
		<p>
			<b>생년월일</b>
			<input type="test" name="yyyymdd">
		</p>
		<p>
			<b>이메일</b>
			<input type="test" name="email">
		</p>
		<p>
			<b>자기소개</b>
			<br>
			<textarea rows="5" cols="50" name="introduce"></textarea>
		</p>
		<p>
			<input type="submit" value="가입">
		</p>
		
	</form>

</body>
</html>