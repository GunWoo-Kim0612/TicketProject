<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<div class="wrapper">
	<ul class="nav nav-pills nav-fill">
			  <li class="nav-item">
			    <button class="nav-link seatsPage seatsIntroOn active">소개</button>
		</li>
			  <li class="nav-item">
			    <button class="nav-link seatsPage seatsPlaceOn">좌석 배치도</button>
			  </li>
	</ul>
	<div class="blank_40"></div>
	
		<div class="seatsIntro">
			<jsp:include page="view_place_intro.jsp" />
		</div>
		<div class="seatsPlace">
			<jsp:include page="view_place_seats.jsp" />
		</div>
</div>