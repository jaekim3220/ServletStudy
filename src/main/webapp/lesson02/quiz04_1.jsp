<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2-4 연습문제 : POST Method(폼 태그) - 길이 변환 결과</title>

<!-- bootstrap -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>


	

	
	<div class="container">
		<h1>길이 변환 결과</h1>
		
		<%
		// request는 CharacterEncodingFilter에서 정의해서 사용 가능
		int input = Integer.valueOf(request.getParameter("input"));
		String[] unitArr = request.getParameterValues("unit");
		%>
		
		<h2><%= input %>cm</h2>
		
		<hr>
		
		<%-- <%
		// inch : *0.393701, yard : *0.0109361, feet : *0.0328084, meter : * 0.01
		double[] results = new double[unitArr.length];
		if (unitArr != null) {
			for (int i = 0; i < unitArr.length; i++) {
				if (unitArr[i].equals("inch")) {
					results[i] = (double) input * 0.393701;
				} else if (unitArr[i].equals("yard")) {
					results[i] = (double) input * 0.0109361;
				} else if (unitArr[i].equals("feet")) {
					results[i] = (double) input * 0.0328084;
				} else {
					results[i] = (double) input * 0.01;
				}
			}
		}
		%>
		<h2><%= results[0] %> in</h2>
		<h2><%= results[1] %> yd</h2>
		<h2><%= results[2] %> ft</h2>
		<h2><%= results[3] %> m</h2> --%>
		
		<h2>
			<%
			if (unitArr != null) {
				for (int i = 0; i < unitArr.length; i++) {
					if (unitArr[i].equals("inch")) {
						double inch = (double) input * 0.393701;
						out.print(inch + "in<br>");
						
					} else if (unitArr[i].equals("yard")) {
						double yard = (double) input * 0.0109361;
						out.print(yard + "yd<br>");
						
					} else if (unitArr[i].equals("feet")) {
						double feet = (double) input * 0.0328084;
						out.print(feet + "ft<br>");
						
					} else {
						double meter = (double) input * 0.01;
						out.print(meter + "m");
						
					}
				}
			}
			%>
		</h2>
		
	</div>

</body>
</html>