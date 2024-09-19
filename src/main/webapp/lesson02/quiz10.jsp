<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2-10 연습문제 : 종합 문제2 - Melong</title>

<!-- bootstrap -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>


<style type="text/css">
header {height:100px;}
nav {height:40px;}
.border {min-height:75px;}
.contents {min-height:500px;}
footer nav {height:200px;}
</style>

</head>

<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
%>

<body>

	<div id="wrap" class="container">
	
		<header class=" d-flex justify-content-start align-items-center">
			<h2 class="text-success">Melong</h2>
			
			<div class="input-group col-5 ml-5">
			  <input type="text" class="form-control">
			  <div class="input-group-append">
			    <button class="btn btn-info" type="submit" id="button-addon2">검색</button>
			  </div>
			</div>
		</header>
		
		
		<nav class=" d-flex">
		<!-- 
		메뉴 3종 세트 : ul, li, a 태그 
		메뉴 클래스 3종 세트 : nav, nav-item, nav-link (가로메뉴) 
		-->
			<ul class="nav nav-fill">
				<li class="nav-item"><a href="#" class="nav-link font-weight-bold text-dark">멜롱차트</a></li>
				<li class="nav-item"><a href="#" class="nav-link font-weight-bold text-dark">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link font-weight-bold text-dark">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link font-weight-bold text-dark">멜롱DJ</a></li>
				<li class="nav-item"><a href="#" class="nav-link font-weight-bold text-dark">뮤직어워드</a></li>
			</ul>

		</nav>
		
		
		<section class="border border-success d-flex">
			<img src="<%= artistInfo.get("photo") %>" alt="아이유 사진" width="150" class="m-3">
			<div class="m-3">
				<div class="display-5 text-info text-dark"><%= artistInfo.get("name") %></div>
				<div class="display-5 text-info text-dark mt-2"><%= artistInfo.get("agency") %></div>
				<div class="display-5 text-info text-dark"><%= artistInfo.get("debute") %> 데뷔</div>
			</div>
		</section>	
		
			
		<section class="contents">
			<h1>곡목록</h1>
			<table class="table text-center">
				<thead>
					<tr>
						<th>no</th>
						<th>제목</th>
						<th>앨범</th>
					</tr>
				</thead>
				
				<tbody>
				<%
				for (Map<String, Object> music : musicList) {
					
				%>
					<tr>
						<td><%= music.get("id") %></td>
						<td><a href="/lesson02/quiz10_1.jsp?title=<%= music.get("title") %>" target="_blank"><%= music.get("title") %></a></td>
						<td><%= music.get("album") %></td>
					</tr>
				<%	
				}
				%>
				</tbody>
			</table>
		</section>
		
		
		<hr>
		<footer class=" contensts d-flex justify-content-center align-items-center">
			<small>Copyright © Melog 2024</small>
		</footer>
	
	</div>

</body>
</html>