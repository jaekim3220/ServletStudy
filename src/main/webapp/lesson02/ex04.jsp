<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2-4 예제 : Java 제어문 사용하기 - Map을 테이블로 구성</title>
</head>
<body>
	<h1>제어문 사용</h1>
	
	<%
		// Map을 테이블로 표현하기
		// {"korean"=85, "english"=72, "math"=90, "science"=100}
	
	Map<String, Integer> scoresMap = new HashMap<>();
	scoresMap.put("korean", 85);
	scoresMap.put("english", 72);
	scoresMap.put("math", 90);
	scoresMap.put("science", 100);
	// out.print(scores);
	%>
	
	<table border="1">
	<%
		Iterator<String> iter = scoresMap.keySet().iterator();
		while (iter.hasNext()) {
			String key = iter.next();
			
		
	%>
		<tr>
			<th>
			<%
				if (key.equals("korean")) {
					out.print("국어");
				} else if (key.equals("english")) {
					out.print("영어");
				} else if (key.equals("math")) {
					out.print("수학");
				} else if (key.equals("science")) {
					out.print("과학");
				}
			%>
			</th>
			<td><%= scoresMap.get(key) %></td>
		</tr>
	<%
		}
	%>
	</table>

</body>
</html>