<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1-3 예제 : POST Method - 폼 태그</title>
</head>
<body>
	<!-- form 3종 세트 : form 태그, name 속성, submit 타입 -->
	<!-- method를 사용해 Get/Post를 설정-->
	<form method="post" action="/lesson02/ex03_1.jsp">
		1. 별명은 무엇입니까?
		<input type="text" name="nickname"><br><br>
		
		2. 취미는 무엇입니까?
		<input type="text" name="hobby"><br><br>
		
		3. 강아지 or 고양이?<br>
		<label>강아지 <input type="radio" name="animal" value="dog"> </label>
		<label>고양이 <input type="radio" name="animal" value="cat"> </label>
		<br><br>
		
		4. 다음 중 선호하는 것을 모두 고르세요.<br>
		<label>민트초코 <input type="checkbox" name="food" value="mincho"> </label>
		<label>하와이안 피자 <input type="checkbox" name="food" value="pizza"> </label>
		<label>번데기 <input type="checkbox" name="food" value="pupa"> </label>
		<br><br>
		
		5. 좋아하는 과일을 선택하세요.<br>
		<select name="fruit">
			<option>사과</option>
			<option>복숭아</option>
			<option>파인애플</option>
			<option>체리</option>
			<option>참외</option>
		</select>
		
		<br><br>
		
		<input type="submit" value="제출">
		<!-- <button type="submit">제출</button> -->
		
	</form>

</body>
</html>