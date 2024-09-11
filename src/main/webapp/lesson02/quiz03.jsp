<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2-3 연습문제 : GET Method(폼 태그) - BMI</title>

<!-- bootstrap -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>

	<div class="container">
		<h1>체격 조건 입력</h1>
		
		<!-- form 3종 세트 : form 태그, name 속성, submit 타입 -->
		<form method="get" action="/lesson02/quiz03_1.jsp" target="_blank" class="d-flex">
			
			<div class="form-group d-flex align-items-end">
				<input type="text" name="height" id="height" class="form-control col-4"  placeholder="키를 입력하세요">
				<span class="m-2">cm</span>
				
				<input type="text" name="weight" id="weight" class="form-control col-4"  placeholder="몸무게를 입력하세요">
				<span class="m-2">kg</span>
			
				<button type="submit" class="btn btn-info">계산</button>
			<!-- <input type="submit" class="btn btn-info" value="계산"> -->
			
			</div>
		</form>
		
	</div>

</body>
</html>