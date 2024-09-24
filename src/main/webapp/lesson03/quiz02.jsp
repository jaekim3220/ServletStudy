<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3-2 연습문제 : jsp와 DB</title>

<!-- bootstrap -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>

<%-- 
즐겨찾기 목록
즐겨 찾기 목록이 주어졌을 때

1. 테이블 생성
주어진 데이터를 기반으로 테이블을 설계하고 생성하세요.
자동으로 증가하는 id를 만드세요.
생성시간과, 업데이트 시간을 관리하는 컬럼을 포함하세요.

2. 데이터 저장
생성된 테이블에 주어진 데이터를 모두 insert 하세요.

3. 목록 출력하기
jsp를 이용해서 즐겨찾기 table 태그로 출력하세요.
id 를 기준으로 내림차순으로 출력하세요.
출력 컬럼은 name, url 입니다.
url 내용을 a 태그를 이용해서 연결이 되도록 하세요.
--%>

<%
//DB 연동 (parameter 확인 후 진행)
MysqlService ms = MysqlService.getInstance();
ms.connect(); // !!!!! 꼭 불러야함. 실질적인 DB 연동

// select 쿼리
String selectQuery = "select * from `bookmark` order by `id` desc";
ResultSet result = ms.select(selectQuery); // mysql에 요청
%>

	<div class="continer">
		<h1 class="text-center mt-3">즐겨찾기 목록</h1>
		
		<table class="table text-center">
			<thead>
				<tr>
					<th class="font-weight-bold">사이트</th>
					<th class="font-weight-bold">사이트 주소</th>
					<th class="font-weight-bold">삭제</th>
				</tr>
			</thead>
			
			<tbody>
			<%
			while (result.next()) {
			%>
				<tr>
					<td><%= result.getString("name") %></td>
					<td><a href="<%= result.getString("url") %>"><%= result.getString("url") %></a></td>
					<td><a href="/lesson03/delete_quiz02?id=<%= result.getInt("id")%>" class="btn btn-danger">삭제</a></td>
				</tr>
			<%
			}
			%>
			</tbody>
		</table>
<%
// DB 연동 해제
ms.disconnect();
%>
	</div>

</body>
</html>