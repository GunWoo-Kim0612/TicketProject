<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="author" content="Mark Otto, Jacob Thornton, 그리고 Bootstrap 기여자들" />
    <meta name="generator" content="Hugo 0.88.1" />
    <meta name="theme-color" content="#7952b3" />
    <title>Team Tis</title>

    <link rel="canonical" href="https://getbootstrap.kr/docs/5.1/examples/album/" />

    <!-- 부트스트랩 5버전 -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
      integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
      integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
      crossorigin="anonymous"
    ></script>
    <!--  -->

    <!-- crousel Favicons -->
    <link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180" />
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png" />
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png" />
    <link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3" />
    <link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico" />

    <!-- 부트스트랩 3버전 -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
      integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
      crossorigin="anonymous"
    />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
      integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
      integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
      crossorigin="anonymous"
    ></script>

    <!-- carousel -->

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/4.5.6/css/ionicons.min.css" />
	
	<!-- Header css  -->
	<link rel="stylesheet" href="https://tis-teamproject.s3.ap-northeast-2.amazonaws.com/css/style.css">

    <!-- banner css -->
    <link rel="stylesheet" href="../css/show_view.css" />

    <!-- jQuery(제이쿼리) 최신버전 링크  -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
  </head>
  <body class="d-flex flex-column min-vh-100">
    <jsp:include page="../header.jsp"></jsp:include>
    <jsp:include page="mypage_b.jsp"></jsp:include>

    <div class="container">
      <jsp:include page="mp_nav.jsp"></jsp:include>
      <div class="card mb-3 mt-3 shadow">
        <h2 class="card-body"><span class="badge bg-dark shadow">My찜</span></h2>
        <form action="/mypage/mypick">
          <div class="card-body" style="text-align: center">
            <!-- card layout -->
            <div class="row row-cols-1 row-cols-lg-3 g-3 g-lg-3">
              <c:forEach items="${mypickList }" var="mypick">
              <!-- inner layout -->
              <div class="col-4">
                <div class="p-3">
                  <div class="card-text">
                    <div class="card shadow">
                      <a href="/getShow.do?seq=${mypick.seq}">
                      	<img src="../images/mainCarousel/${mypick.img }" class="img-fluid rounded" alt="...">
                      </a>
                      <div class="card-body">
                        <a class="card-text" style="text-decoration: none; text-overflow: ellipsis; font-weight: 800">${mypick.title }</a>
                      </div>
                      <ul class="list-group list-group-flush">
                        <li class="list-group-item">${mypick.start_date} ~ ${mypick.end_date }</li>
                        <li class="list-group-item text-muted">좌석 : ${mypick.seats }</li>
                      </ul>
                      <button type="button" class="btn btn-outline-danger" style="z-index: 9" onclick="location.href='/deleteMypick.do?seq=${mypick.seq}'">삭제</button>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /inner layout -->
              </c:forEach>
            </div>
            <!-- /card layout -->
          </div>
        </form>
      </div>
    </div>
    <div class="blank_80"></div>
    <div class="blank_50"></div>
    <jsp:include page="../footer.jsp"></jsp:include>
  </body>
</html>

