<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
      <%-- <div>${login }</div> --%>
      <div class="card mb-3 mt-3 shadow">
        <h2 class="card-body">
          <span class="badge bg-dark shadow-lg">회원 탈퇴</span>
        </h2>
        <div class="card-body">
          <form class="form-group" action="/resign.do" method="post">
            <legend>회원탈퇴 사유를 선택해주세요.</legend>
            <div class="row row-cols-2 row-cols-lg-5 g-2 g-lg-3">
              <div class="col-6 d-grid gap-2">
                <input type="radio" class="btn-check" name="options" id="option1" autocomplete="off" />
                <label class="btn btn-lg btn-outline-secondary" for="option1">
                  <span>공연 전시관련 불만</span>
                </label>
              </div>
              <div class="col-6 d-grid gap-2">
                <input type="radio" class="btn-check" name="options" id="option2" autocomplete="off" />
                <label class="btn btn-lg btn-outline-secondary" for="option2">
                  <span>공연 전시관련 불만</span>
                </label>
              </div>
              <div class="col-6 d-grid gap-2">
                <input type="radio" class="btn-check" name="options" id="option3" autocomplete="off" />
                <label class="btn btn-lg btn-outline-secondary" for="option3">
                  <span>개인적인사정</span>
                </label>
              </div>
              <div class="col-6 d-grid gap-2">
                <input type="radio" class="btn-check" name="options" id="option4" autocomplete="off" />
                <label class="btn btn-lg btn-outline-secondary" for="option4">
                  <span>환불로인한 자동탈퇴</span>
                </label>
              </div>
              <div class="col-6 d-grid gap-2">
                <input type="radio" class="btn-check" name="options" id="option5" autocomplete="off" />
                <label class="btn btn-lg btn-outline-secondary" for="option5">
                  <span>기타</span>
                </label>
              </div>
            </div>
            <div class="form-group" style="text-align: center">
              <label for="exampleTextarea" class="form-label mt-5">
                <h4>서비스를 이용하면서 불편한 사항이 있으셧나요?</h4>
                <p class="text-muted">고객님의 의견을 수렴하여 보다 나은 서비스를 제공하기 위해 더욱 노력하겠습니다.</p>
              </label>
              <textarea class="form-control" id="exampleTextarea" rows="3" style="height: 106px"></textarea>
              <button class="btn btn-outline-danger mt-3">회원탈퇴</button>
            </div>
          </form>
        </div>
      </div>
    </div>
    <div class="blank_80"></div>
    <div class="blank_50"></div>
    <jsp:include page="../footer.jsp"></jsp:include>
  </body>
</html>
