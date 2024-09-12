<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2-4 연습문제 : POST Method(폼 태그) - 길이 변환</title>

<!-- bootstrap -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>

	<!-- 길이 변환
	cm를 입력받으면 인치, 야드, 피트, 미터의 단위로 변환하는 POST Method 폼을 submit 하세요.
	체크박스에 선택된 단위들을 변환 결과 화면에서 출력합니다.
	단위 변환 공식은 검색을 활용하세요. -->
	
	<div class="container">
		<h1>길이 변환</h1>
		
		<!-- form 3종 세트 : form 태그, name 속성, submit 타입 -->
		<!-- method를 사용해 Get/Post를 설정-->
		<form method="post" action="/lesson02/quiz04_1.jsp">
			<div class="d-flex align-items-end">
				<label><input type="text" name="input" class="col-8"> cm</label>
			</div>
			
			<label>인치<input type="checkbox" name="unit" value="inch"> </label>
			<label>야드<input type="checkbox" name="unit" value="yard"> </label>
			<label>피트<input type="checkbox" name="unit" value="feet"> </label>
			<label>미터<input type="checkbox" name="unit" value="meter"> </label>
			<br>
			<input type="submit" class="btn btn-success" value="변환하기">
		<!-- <button type="submit">제출</button> -->
		</form>
	</div>


</body>
</html>