<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2-7 연습문제 : 자바 제어문 사용 - 메뉴 검색 결과</title>

<!-- bootstrap -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>
<%
	List<Map<String, Object>> list = new ArrayList<>();
	   Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	   list.add(map);
	   map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	   list.add(map);
	   map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	   list.add(map);
	   map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	   list.add(map);
	   map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	   list.add(map);
	   map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	   list.add(map);
	   map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	   list.add(map);
%>
<div class="container">
	<h1 class="text-center">검색 결과</h1>
	
	<table class="table text-center">
		<thead>
			<tr>
				<th>메뉴</th>
				<th>상호</th>
				<th>별점</th>
			</tr>
		</thead>
		
		<tbody>
			<%
			// request는 CharacterEncodingFilter에서 정의해서 사용 가능
			String keyword = request.getParameter("keyword");
			String filter = request.getParameter("starPointFilter");
			boolean exclude = filter != null; // checkbox가 체크되어있음
			
			// out.print(search);
			// out.print(pointLimit);
			
			Iterator<Map<String, Object>> iter = list.iterator();
			while (iter.hasNext()) {
				Map<String, Object> item = iter.next();
				// out.print(store);
				
				// key의 값 추출
				Object name = item.get("name");
				Object menu = item.get("menu");
				Object point = item.get("point");
				
				if (menu.equals(keyword) && filter != "ture") {
					if (keyword.equals(item.get("menu"))) {
						// skip 조건 : 체크가 되어있고, 4.0 이하인 조건
						if (exclude && (double)item.get("point") <= 4.0) {
							continue;
						}
			%>
				<tr>
					<td><%= menu %></td>
					<td><%= name %></td>
					<td><%= point %></td>
				</tr>
			<%
					}
				}
			}
			%>
		</tbody>
	</table>
</div>

</body>
</html>