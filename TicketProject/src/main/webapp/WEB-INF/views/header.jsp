<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- header START -->

<header>
	</div>
	<div class="navbar navbar-dark bg-dark shadow-sm">
		<!-- <div class="container"> -->

		<!-- 햄버거메뉴 -->
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarHeader" aria-controls="navbarHeader"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<!-- 로고 및 로그인   -->
		<div class="row">
			<a href="/" class="navbar-brand d-flex align-items-center"> <strong>TIS</strong>
			</a>
		</div>
		<!-- 로그인 성공시 로그인버튼 -> 로그아웃 마이페이지 등장 -->

		<c:if test="${login == member.id }">
			<div class="row ">
				<div class="col-sx-2 col-sm-4 col-md-6">
					<a href="/member/login"
						class="navbar-brand d-flex align-items-center my_row"> <strong>Login</strong>
					</a>
				</div>
				<div class="col-sx-2 col-sm-4 col-md-6">
					<a href="/member/join"
						class="navbar-brand d-flex align-items-center my_row"> <strong>
							Join</strong>
					</a>
				</div>
			</div>
		</c:if>
		<c:if test="${login != null}">
			<div class="row ">
				<div class="col-sx-2 col-sm-4 col-md-6">
					<a href="/member/logout.do"
						class="navbar-brand d-flex align-items-center my_row"> <strong>LogOut</strong>
					</a>
				</div>
				<div class="col-sx-2 col-sm-4 col-md-6">
					<a href="/mypage/myticket"
						class="navbar-brand d-flex align-items-center my_row"> <strong>
							MyPage</strong>
					</a>
				</div>
			</div>
		</c:if>

	</div>


	<!-- 슬라이드메뉴  -->
	<div class="collapse bg-dark" id="navbarHeader">
		<div class="container">

			<!-- 1행 -->
			<div class="row align-items-center">
				<div class="col-sm-3 col-xs-3 col-md-3 py-2 my_navbar ">
					<a class=" navbar-brand "><strong>공연·전시</strong></a>
				</div>
				<div class="col-sm-3 col-xs-3 col-md-3 py-2 my_navbar ">
					<a class=" navbar-brand "><strong>소식·이용·참여</strong></a>
				</div>
				<div class="col-sm-3 col-xs-3 col-md-3 py-2 my_navbar ">
					<a class=" navbar-brand "><strong>회원서비스</strong></a>
				</div>
				<div class="col-sm-3 col-xs-3 col-md-3 py-2 my_navbar ">
					<a class=" navbar-brand "><strong>기관소개</strong></a>
				</div>
			</div>
			<!-- 2행 -->
			<div class="row align-items-center">

				<div class="col-sm-3 col-xs-3 col-md-3  my_navbar ">
					<a class=" navbar-brand " href="/program/schedule">
						<p>전체일정(달력)</p>
					</a>
				</div>
				<div class="col-sm-3 col-xs-3 col-md-3  my_navbar ">
					<a class=" navbar-brand " href="/welcome/welcome">
						<p>오시는길</p>
					</a>
				</div>
				<div class="col-sm-3 col-xs-3 col-md-3  my_navbar ">
					<a class=" navbar-brand " href="/member/join">
						<p>회원가입</p>
					</a>
				</div>
				<div class="col-sm-3 col-xs-3 col-md-3  my_navbar ">
					<a class=" navbar-brand " href="/content/index">
						<p>기관소개 메인</p>
					</a>
				</div>
			</div>
			<!-- 3행 -->
			<div class="row align-items-center">

				<div class="col-sm-3 col-xs-3 col-md-3  my_navbar ">
					<a class=" navbar-brand " href="/program/todayshow">
						<p>오늘의 공연</p>
					</a>
				</div>
				<div class="col-sm-3 col-xs-3 col-md-3  my_navbar ">
					<a class=" navbar-brand " href="/show_view/view_place_seats">
						<p></p>
					</a>
				</div>
				<div class="col-sm-3 col-xs-3 col-md-3  my_navbar ">
					<a class=" navbar-brand " href="/member/login">
						<p>로그인</p>
					</a>
				</div>
				<div class="col-sm-3 col-xs-3 col-md-3  my_navbar ">
					<a class=" navbar-brand " href="#">
						<p></p>
					</a>
				</div>
			</div>
			<!-- 4행 -->
			<div class="row align-items-center">

				<div class="col-sm-3 col-xs-3 col-md-3  my_navbar ">
					<a class=" navbar-brand " href="#">
						<p></p>
					</a>
				</div>
				<div class="col-sm-3 col-xs-3 col-md-3  my_navbar ">
					<a class=" navbar-brand " href="#">
						<p></p>
					</a>
				</div>
				<div class="col-sm-3 col-xs-3 col-md-3  my_navbar ">
					<a class=" navbar-brand " href="/member/findUserId">
						<p>아이디찾기</p>
					</a>
				</div>
				<div class="col-sm-3 col-xs-3 col-md-3  my_navbar ">
					<a class=" navbar-brand " href="#">
						<p></p>
					</a>
				</div>
			</div>
			<!-- 5행 -->
			<div class="row align-items-center">

				<div class="col-sm-3 col-xs-3 col-md-3 my_navbar ">
					<a class=" navbar-brand " href="#">
						<p></p>
					</a>
				</div>
				<div class="col-sm-3 col-xs-3 col-md-3 my_navbar ">
					<a class=" navbar-brand " href="#">
						<p></p>
					</a>
				</div>
				<div class="col-sm-3 col-xs-3 col-md-3 my_navbar ">
					<a class=" navbar-brand " href="/member/findPw">
						<p>패스워드찾기</p>
					</a>
				</div>
				<div class="col-sm-3 col-xs-3 col-md-3 my_navbar ">
					<a class=" navbar-brand " href="#">
						<p></p>
					</a>
				</div>
			</div>
		</div>
	</div>


</header>