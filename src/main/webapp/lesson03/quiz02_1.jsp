<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3-2 연습문제 : jsp와 DB (DB INSERT)</title>

<!-- bootstrap -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>

</head>
<body>

<%--
4. 입력하기
새로운 jsp에서 input 태그로 데이터를 입력 받고, form 태그와 servlet을 이용해서 insert 하세요.
insert 후 위에서 만든 목록 출력 페이지로 리다이렉트 하세요.
--%>
	
	<div class="container">
		<!-- form 3종 세트 : form 태그, name 속성, submit 타입 -->
		<!-- method를 사용해 Get/Post를 설정-->
		<form method="post" action="/lesson03/insert_quiz02">
		
			<h1 class="mt-3">즐겨찾기 추가</h1>
			
			<div>
				<label for="name" class="w-25">
					사이트명 : <input type="text" name="name" id="name" class="form-control">
				</label>
			</div>
	
			<div>
				<label for="url" class="w-25">
					사이트 주소 : <input type="text" name="url" id="url" class="form-control">
				</label>
			</div>
			
			<div class="mt-3">
				<button type="submit" class="btn btn-success">추가</button>
			</div>
			
		</form>
	</div>


</body>
</html>