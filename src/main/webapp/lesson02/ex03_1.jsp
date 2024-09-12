<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1-3 예제 : POST Method - 폼 태그 결과</title>
</head>
<body>

	<%
	// request는 CharacterEncodingFilter에서 정의해서 사용 가능
	String nickname = request.getParameter("nickname");
	String hobby = request.getParameter("hobby");
	String animal = request.getParameter("animal");
	String fruit = request.getParameter("fruit");
	
	// 선택 항목이 여러 개 일 경우
	String[] foodArr = request.getParameterValues("food");
	%>
	
	<table border="1">
		<tr>
			<th>별명</th>
			<td><%= nickname %></td>
		</tr>
		<tr>
			<th>취미</th>
			<td><%= hobby %></td>
		</tr>
		<tr>
			<th>선호하는 동물</th>
			<td><%= animal %></td>
		</tr>
		<tr>
			<th>선호하는 음식</th>
			<td>
			<%
			if (foodArr != null) { // null 출력 방지(공백으로 유지)
				String result = "";
				for (int i = 0; i < foodArr.length; i++) {
					result += foodArr[i] + ",";
				}
				result = result.substring(0, (result.length() - 1));
					out.print(result);
			}
			%>
			</td>
		</tr>
		<tr>
			<th>좋아하는 과일</th>
			<td><%= fruit %></td>
		</tr>
	</table>

</body>
</html>