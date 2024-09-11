<%@page import="java.util.Iterator"%>
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

	
	<b>1번</b>
	<br>
	<%!
		public int getSum(int N) {
			int sum = 0;
			for (int i = 1; i <= N; i++) {
				sum += i;
			}
			return sum;
		}
	%>
	
	<h2>1부터 N까지의 합은 <%= getSum(5) %>입니다.</h2>
	<hr>
	
	
	<b>2번</b>
	<br>
	<%
	int[] scores = {81, 90, 100, 95, 80};
	int sum = 0;
	for (int i = 0; i < scores.length; i++) {
		sum += scores[i];
	}
	double average = (double) sum / scores.length;
	%>
	<h2>평균 점수는 <%= average %>입니다.</h2>
	<hr>
	
	
	<b>3번</b>
	<br>
	<%
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
	double newScores = 0;
	Iterator<String> iter = scoreList.iterator();
	while (iter.hasNext()) {
		String answer = iter.next();
		if (answer.equals("O")) {
			newScores += (double) 100 / scoreList.size();
		}
	}
	/*
	for (int i = 0; i < scoreList.size(); i++) {
		if ((scoreList.get(i)).equals("O")) {
			newScores += (100 / scoreList.size());
		}
	}
	*/
	%>
	<h2>점수는 <%= newScores %>점입니다.</h2>
	<hr>
	
	
	<b>4번</b>
	<br>
	<%
	String birthDay = "20010820";
	int age = 2024 - Integer.valueOf(birthDay.substring(0, 4));
	out.print(birthDay + "의 나이는 " + age + "세 입니다.");
	%>
	<h2><%= birthDay %>의 나이는 <%= age %>세 입니다.</h2>
	<hr>
	
	
</body>
</html>