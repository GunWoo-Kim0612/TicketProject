<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들">
<meta name="generator" content="Hugo 0.88.1">
<meta name="theme-color" content="#7952b3">
<title>Team Tis</title>

<link rel="canonical"
	href="https://getbootstrap.kr/docs/5.1/examples/album/">


<!-- 부트스트랩 5버전 -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>
<!--  -->

<!-- crousel Favicons -->
<link rel="apple-touch-icon"
	href="/docs/5.1/assets/img/favicons/apple-touch-icon.png"
	sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png"
	sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png"
	sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon"
	href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg"
	color="#7952b3">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">

<!-- 부트스트랩 3버전 -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
	integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
	crossorigin="anonymous"></script>


<!-- header -->
<link rel="stylesheet" href="https://tis-teamprojectcket.s3.ap-northeast-2.amazonaws.com/css/style.css">
<!-- banner carousel -->
  <link rel="stylesheet" href="../css/b_carousel.css">


<!-- jQuery(제이쿼리) 최신버전 링크  -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>

	<jsp:include page="../header.jsp"></jsp:include>

	<!-- content START -->
	<div class="container">
	<h1 class="text-center">공연 수정</h1>
	<form action="updateShow.do" method="post"  enctype="multipart/form-data">
		<table class="table table-hover">
			<tr>
				<th>제목</th>
				<td>
					<input name="title" type="text" value="${show.title }" style="width: 80%">
				</td>
			</tr>
			<tr>
				<th>본문</th>
				<td>
					<input name="contents" value="${show.contents }" type="text" style="width: 80%">
				</td>
			</tr>	
			<tr>
				<th>공연날짜</th>
				<td  align="left">
					<input type='date' name='start_date' value="${show.start_date }" /> - 
					<input type='date' name='end_date' value="${show.end_date }" />
				</td>
			</tr>
			<tr>
				<th>상영시간</th>
				<td  align="left" >
					<select name="runtime">
						<option value="${show.runtime }">${show.runtime }</option>
						<option value="1:30">1:30</option>
						<option value="2:00">2:00</option>
						<option value="2:30">2:30</option>
						<option value="3:00">3:00</option>
					</select>
					</td>
			</tr>
			<tr>
				<th>가격</th>
				<td  align="left" >
					<input name="price" value="${show.price }" type="text" style="width: 80%">
				</td>
			</tr>
			<tr>
				<th>좌석수</th>
				<td  align="left" >
					<input name="seats" value="${show.seats}" type="text" style="width: 80%">
				</td>
			</tr>
			<tr>
				<th>이미지</th>
				<td  align="left" >
					<input name="upload" type="file"  style="width: 80%">
				</td>
			</tr>
			<tr>
				<td>
					<input name="seq" type="hidden" value="${show.seq }">
					<input type="submit" value="확인">
				<td>
			</td>
		</table>
	</form>
	
	</div>
		<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>