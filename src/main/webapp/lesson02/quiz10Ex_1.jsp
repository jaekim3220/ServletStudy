<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2-10 연습문제 : 종합 문제2 - Melong 모범답안</title>

<!-- bootstrap -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>


<style type="text/css">
a, a:hover {text-decoration:none;}
header {height:100px;}
nav {height:40px;}
</style>

</head>

<body>
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


<%
Map<String, Object> target = null; // 상세 정보를 보여줄 맵

// 1. 제목을 클릭하고 들어오는 경우(a 태그) - id 파라미터
if(request.getParameter("id") != null) {
	int id = Integer.valueOf(request.getParameter("id"));
	
	for (Map<String, Object> music : musicList) {
		if (id == (int) music.get("id")) { // object를 int로 비교하기 위해 downcasting
			target = music;
		break;
		}
	}
}

// else if가 아닌 서로 다른 if 문을 사용해 2가지 경우의 수를 받는다

// 2. 상단 헤더에서 검색한 경우(form 태그) - title 파라미터
if (request.getParameter("title") != null) {
	String title = request.getParameter("title");
	
	for (Map<String, Object> music : musicList) {
		if (title.equals(music.get("title"))) { // object를 int로 비교하기 위해 downcasting
			target = music;
		break;
		}
	}
}

//out.print(target);
%>
		
		
	<div class="container">

		<header class="d-flex align-items-center">

			<%-- 로고 영역 --%>
			<div class="col-2">
				<h3>
					<%-- 로고를 클릭하면 main 페이지로 return --%>
					<a href="/lesson02/quiz10Ex.jsp" class="text-success">Melong</a>
				</h3>
			</div>
			
			<%-- 검색 영역 --%>
			<div class="col-10">
				<form method="get" action="/lesson02/quiz10Ex_1.jsp">
					<div class="input-group">	
						<input type="text" name="title" class="form-control col-5">
						<div class="input-group-append">
							<button class="btn btn-info" type="submit">검색</button>
						</div>
					</div>
				</form>
			</div>

		</header>


		<nav>
		<!-- 
		메뉴 3종 세트 : ul, li, a 태그 
		메뉴 클래스 4종 세트 : nav, nav-fill nav-item, nav-link (가로메뉴) 
		-->
			<ul class="nav">
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱차트</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">최신음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">장르음악</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">멜롱DJ</a></li>
				<li class="nav-item"><a href="#" class="nav-link text-dark font-weight-bold">뮤직어워드</a></li>
			</ul>
		</nav>
		

		<section class="contents">
				
		<%
			if (target != null) { //-- if문 시작 (검색어가 있는 경우)
		%>
		
			<div class="d-flex border border-success p-3">
				<%-- 이미지 --%>
				<div class="m-3">
					<img src="<%= target.get("thumbnail") %>" alt="앨범 이미지" width="150">
				</div>

                <%-- 곡 정보 --%>
				<div class="m-3">
					<div class="display-4 "><%= target.get("title") %></div>
					<div class="font-weight-bold text-success"><%= target.get("singer") %></div>

					<div class="d-flex mt-3">
						<div>
							<div>앨범</div>
							<div>재생시간</div>
							<div>작곡가</div>
							<div>작사가</div>
						</div>
						
						<div class="ml-3">
							<div><%= target.get("album") %></div>
							<div><%= (int)target.get("time") / 60  %> : <%= (int)target.get("time") % 60 %></div>
							<div><%= target.get("composer")%></div>
							<div><%= target.get("lyricist") %></div>
						</div>
					</div>

				</div>
                
			</div>
			
			
			<%-- 가사 --%>
			<div class="lyrics pt-3">
				<h4>가사</h4>
				<hr>
				가사 정보 없음
			</div>
			
		<%  
        } else {  //-- if문 종료, else문 시작 : target이 없는 경우
        %>
    		<section>
    			<h1>정보 없음</h1>
    		</section>
    	<%
		}
        %>
		
		</section>
		
		
		<hr>
		
		<footer class=" contensts d-flex justify-content-center align-items-center">
			<small>Copyright © Melog 2024</small>
		</footer>
	
	</div>

</body>
</html>