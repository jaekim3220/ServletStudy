<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2-1 연습문제 : 스크립트 요소</title>
</head>
<body>

	<h4>1번</h4>
	<%!
		
		public int getSum(int N) {
			int sum = 0;
			for (int i = 1; i <= N; i++) {
				sum += i;
			}
			return sum;
		}
	%>
	
	<%= getSum(5) %>
	
	
	<h4>2번</h4>
	<%
	int[] scores = {81, 90, 100, 95, 80};
	int sum = 0;
	for (int i = 0; i < scores.length; i++) {
		sum += scores[i];
	}
	double average = (double) sum / scores.length;
	%>
	<b>평균 : </b>
	<input type="text" value="<%= average %>">
	
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
	double newScores = 0;
	for (int i = 0; i < scoreList.size(); i++) {
		if ((scoreList.get(i)).equals("O")) {
			newScores += (100 / scoreList.size());
		}
	}
	%>
	
</body>
</html>