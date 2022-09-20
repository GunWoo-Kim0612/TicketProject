
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전 일정(달력)</title>


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


<link href='/docs/dist/demo-to-codepen.css' rel='stylesheet' />

<!-- header css-->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900"
	rel="stylesheet">
<link rel="stylesheet" href="https://tis-teamproject.s3.ap-northeast-2.amazonaws.com/css/style.css">

<!-- show css -->
<link href="../css/show_view.css" rel="stylesheet">
<style>
.my_navbar {
	text-align: center;
}

.my_navbar a {
	color: white !important;
}

.my_navbar a p {
	font-size: 15px;
}

.my_row {
	text-align: right;
}



#calendar {
	max-width: 1100px;
	margin: 40px auto;
}
</style>



<link
	href='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.css'
	rel='stylesheet' />
<script
	src='https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js'></script>





<script src='/docs/dist/demo-to-codepen.js'></script>


<script>
	document.addEventListener('DOMContentLoaded', function() {
		var calendarEl = document.getElementById('calendar');
/* 		var list = new Array(); */

		var calendar = new FullCalendar.Calendar(calendarEl, {
			timeZone : 'UTC',
			initialView : 'dayGridMonth',
			editable : false,
			selectable : true,
			
			/* 여기에 스크립트릿? el 뭐던  DB에서 받아온 일정 등록 */
			events : [ 
				<c:forEach items='${showList}' var='show'>
				{
					/* list.push("${show.title})") */
					title : '${show.title}',
					start : '${show.start_date}',
					end : '${show.end_date}',
					url : '/getShow.do?seq=${show.seq}'
				},
				</c:forEach>
				
			// other events here
			]

		});

		/* 일정 추가 */
		/* calendar.addEvent(
				{ title: '추가일정 ', start: '2022-08-03' }
		);
		calendar.addEvent(
				{ html:'<i>some html</i>',  title: '내가추가한일정', start: '2022-08-03' ,url: 'http://google.com/'}
		);*/
		calendar.render(); 
	});
</script>

</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>

	<jsp:include page="../banner_carousel.jsp"></jsp:include>

	<div class="contatiner">
		<!-- contents START -->
		<div id='calendar'></div>
		<!-- contents END -->

	</div>


	<jsp:include page="../footer.jsp"></jsp:include>
</body>



</html>