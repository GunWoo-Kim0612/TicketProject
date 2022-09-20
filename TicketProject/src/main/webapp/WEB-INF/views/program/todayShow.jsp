<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오늘의 공연</title>
</head>
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


<link rel="stylesheet" href="https://tis-teamproject.s3.ap-northeast-2.amazonaws.com/css/style.css
">


<!-- jQuery(제이쿼리) 최신버전 링크  -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script>
	
 $('#delete').click(function() {
        var result = confirm('삭제하시겠습니까?');

        if(result) {
           //yes
            location.replace('/program/todayshow');
        } else {
            //no
        }
    });

</script>
</head>

<body>

	<jsp:include page="../header.jsp"></jsp:include>
	<jsp:include page="../banner_carousel.jsp"></jsp:include>



	<!-- content START -->
	<div class="container">
		<!-- 테이블 시작 -->
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col" class="text-center">행사명</th>
					<th scope="col" class="text-center">기간</th>
					<!-- <th scope="col" class="text-center">장소</th> -->
					<th scope="col" class="text-center">남은좌석</th>
					<th scope="col" class="text-center">예매</th>
					<!-- 관리자일 경우만 보이게 -->
					<%-- <c:if test=""> --%>
					<th scope="col" class="text-center">수정</th>
					<th scope="col" class="text-center">삭제</th>
					<%-- </c:if> --%>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${showList}" var="show">
				<tr>
					<!-- 행사명 -->
					<td style="width: 20%; text-align: center;" >
						<a href="/getShow.do?seq=${show.seq} " >${show.title }</a>
					</td>
					
					<!-- 기간 -->
					<td style="width: 20%" class="text-center ">
						${show.start_date } ~ ${show.end_date }
					</td>
					<!-- 장소 -->
					<!-- <td style="width: 5%" class="text-center">
						예술의전당 홀 A
					</td> -->
					 <!-- 남은좌석  -->
					<td style="width: 10%" class="text-center">
						${show.seats }
					</td>
					
					<!-- 예매버튼 -->
					<td style="width: 15%" class="text-center v_center">
				  		<button class="btn mb-3 mr-3 btn-danger" onclick="window.open('/book?seq=${show.seq}', '예매하기', 'top=200, left=400, width=900, height=588, status=no, menubar=no, toolbar=no, ')">예매하기</button>
					</td>
					
					<!-- 관리자일 경우만 보이게 -->
					<%-- <c:if test=""> --%>
					<td style="width: 15%" class="text-center v_center">
				  		<button class="btn mb-3 mr-3 btn-danger" onclick="window.location.href = '/updateForm?seq=${show.seq}'">수정하기</button>
					</td>
					<td style="width: 15%" class="text-center v_center">
				  		<button id="delete" class="btn mb-3 mr-3 btn-danger" onclick="window.location.href = '/deleteShow.do?seq=${show.seq}'">삭제하기</button>
					</td>
					<%-- </c:if> --%>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		
	

		<!-- 새글쓰기 누를 때 -->
		<form action="/insertForm">

			<!-- 새글의 계층 정보 -->
			<input type="hidden" name="bdGroup" value="-1"> 
			<input type="hidden" name="bdOrder" value="0"> 
			<input type="hidden" name="bdIndent" value="0">
			<button type="submit" class="btn btn-secondary mb-3">공연등록</button>
		</form>


		<div class="container my-3">
			<div class="row">
				<div class="col"></div>
				<div class="col-md-auto">
					<%-- <%=msg%> --%>
				</div>
				<div class="col"></div>
			</div>
		</div>



		<!-- content END -->
	</div>

	<jsp:include page="../footer.jsp"></jsp:include>


</body>
</html>