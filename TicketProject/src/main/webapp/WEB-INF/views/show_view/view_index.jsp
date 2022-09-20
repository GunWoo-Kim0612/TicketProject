<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>공연상세보기</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>
    <link href="../css/show_view.css" rel="stylesheet">
	<link rel="stylesheet" href="https://tis-teamproject.s3.ap-northeast-2.amazonaws.com/css/style.css">
        <link rel="stylesheet" href="../css/nav.css">
        
            <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        
    	<script type="text/javascript" src="../js/show_view.js"></script>
</head>
<body>
	<jsp:include page="../header.jsp"/>
	<jsp:include page="show_view_b.jsp"/>
	<div class="container">
	
	<!-- 본문 -->
	<jsp:include page="view_nav_top.jsp"/>
	
	<div class="view_intro">
		<jsp:include page="view_intro.jsp"/>
	</div>
	
	<div class="view_place">
		<jsp:include page="view_place.jsp"/>
	</div>
	
	<div class="view_review">
		<jsp:include page="view_review.jsp"/>
	</div>
	
	<div class="view_reserve">
		<jsp:include page="view_reserve.jsp"/>
	</div>
	
	
	<jsp:include page="view_nav_bottom.jsp"/>
	
	</div>
	
	<jsp:include page="../footer.jsp"/>
	
	<script type="text/javascript" src="../js/nav.js"></script>
	<script type="text/javascript" src="../js/nav2.js"></script>
</body>
</html>