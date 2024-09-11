<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2-3 연습문제 : GET Method(폼 태그) - BMI 결과</title>

<!-- bootstrap -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>

	<%
	// request는 CharacterEncodingFilter에서 정의해서 사용 가능
	int height = Integer.valueOf(request.getParameter("height"));
	int weight = Integer.valueOf(request.getParameter("weight"));
	
	// BMI =  몸무게 / ((키 / 100.0) * (키 / 100.0));
	/*
	20 이하 저체중, 21 이상 ~ 25 이하 정상
	26 이상 ~ 30 이하 과체중, 31 이상 비만
	*/
	double bmi = weight / (double) ((height / 100.0) * (height / 100.0));
	String state = null;
	if (bmi <= 20) {
		state = "저체중";
	} else if (bmi <= 25) {
		state = "정상";
	} else if (bmi <= 30) {
		state = "과체중";
	} else {
		state = "비만";
	} 
	%>
	
	<div class="container">
		<h4 class="font-weight-bold">BMI 측정 결과</h4>
		<div class="display-4">당신은 <span class="text-info"><%= state %></span>입니다.</div>
		<div>BMI 수치 : <%= bmi %></div>
	</div>

</body>
</html>