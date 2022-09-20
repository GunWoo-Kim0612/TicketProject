<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
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
    
    <script>
        $(document).ready(function () {
            searchDate();
        });

        function searchDate() {

            var date = new Date();
            var utc = date.getTime() + (date.getTimezoneOffset() * 60 * 1000);
            var kstGap = 9 * 60 * 60 * 1000;
            var today = new Date(utc + kstGap);

            var thisMonth = new Date(today.getFullYear(), today.getMonth(), today.getDate());

            currentYear = thisMonth.getFullYear();
            currentMonth = thisMonth.getMonth();
            currentDate = thisMonth.getDate();

            var startDay = new Date(currentYear, currentMonth, 0);
            var prevDate = startDay.getDate();
            var prevDay = startDay.getDay();

            var endDay = new Date(currentYear, currentMonth + 1, 0);
            var nextDate = endDay.getDate();
            var nextDay = endDay.getDay();



            $('.setDates').on('click', function (e) {
                if ($(e.target).attr('name') == $('.sixMthOn').attr('name')) {
                    $('.sdt').hide();
                    $('.sixMth').closest('.sdt').show();
                } else if ($(e.target).attr('name') == $('.threeMthOn').attr('name')) {
                    $('.sdt').hide();
                    $('.threeMth').closest('.sdt').show();
                } else if ($(e.target).attr('name') == $('.oneMthOn').attr('name')) {
                    $('.sdt').hide();
                    $('.oneMth').closest('.sdt').show();
                } else if ($(e.target).attr('name') == $('.twoweekOn').attr('name')) {
                    $('.sdt').hide();
                    $('.twoweek').closest('.sdt').show();
                } else if ($(e.target).attr('name') == $('.oneweekOn').attr('name')) {
                    $('.sdt').hide();
                    $('.oneweek').closest('.sdt').show();
                }
            });

            var rdList = $('.readRd');

            $('#searchDate').on('click', function () {
                $('.sdt').hide();
                for (var i = 0; i < rdList.length; i++) {
                    var regDate = rdList.eq(i).attr('date-data');
                    var rdindex = rdList.eq(i);

                    var rd_y = regDate.substring(0, regDate.indexOf('-'));
                    var rd_m = regDate.substring(regDate.indexOf('-') + 1, regDate.indexOf('-', regDate.indexOf('-') + 1));
                    var rd_d = regDate.substring(regDate.lastIndexOf('-') + 1);

                    var rd = new Date(rd_y, rd_m - 1, rd_d);


                    for (var j = 1; j <= nextDate; j++) {
                        var result = new Date($('#BYear').val() + '-' + $('#BMonth').val() + '-' + j);
                        if (rd - result == 0) {
                            rdindex.closest('.sdt').show();
                        }else if($('#BMonth').val() == 2 && rd_m == 2 && rd - result <= 0){
                            rdindex.closest('.sdt').show();
                        }
                    }
                }
            });

            var sixMth = new Date(today.getFullYear(), today.getMonth() - 6, today.getDate());
            var threeMth = new Date(today.getFullYear(), today.getMonth() - 3, today.getDate());
            var oneMth = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
            var twoweek = new Date(today.getFullYear(), today.getMonth(), today.getDate() - 15);
            var oneweek = new Date(today.getFullYear(), today.getMonth(), today.getDate() - 7);


            for (var i = 0; i < rdList.length; i++) {

                var regDate = rdList.eq(i).attr('date-data');
                var rdindex = rdList.eq(i);

                var rd_y = regDate.substring(0, regDate.indexOf('-'));
                var rd_m = regDate.substring(regDate.indexOf('-') + 1, regDate.indexOf('-', regDate.indexOf('-') + 1));
                var rd_d = regDate.substring(regDate.indexOf('-') + 1, regDate.indexOf('-', regDate.indexOf('-') + 1));

                var rd = new Date(rd_y, rd_m - 1, rd_d);

                if (today - rd < today - sixMth && today - rd > today - threeMth) {
                    rdindex.addClass('sixMth');
                } else if (today - rd < today - threeMth && today - rd > today - oneMth) {
                    rdindex.addClass('sixMth threeMth');
                } else if (today - rd < today - oneMth && today - rd > today - twoweek) {
                    rdindex.addClass('sixMth threeMth oneMth');
                } else if (today - rd < today - twoweek && today - rd > today - oneweek) {
                    rdindex.addClass('sixMth threeMth oneMth twoweek');
                } else if (today - rd < today - oneweek && today - rd > 0) {
                    rdindex.addClass('sixMth threeMth oneMth twoweek oneweek');
                }
            }


        }
    </script>

  </head>
  <body class="d-flex flex-column min-vh-100">
    <jsp:include page="../header.jsp"></jsp:include>
    <jsp:include page="mypage_b.jsp"></jsp:include>

	    <div class="container">
	    <jsp:include page="mp_nav.jsp"></jsp:include>
	    <div class="card mb-3 mt-3 shadow">
	      <div class="card-body">
	        <h2>
	          <span class="badge bg-dark shadow-lg">티켓예매내역</span>
	          <span class="text-muted" style="font-size: 13px">* 최근 1년 이내의 예매내역만 조회 가능합니다.</span>
	        </h2>
	      </div>
	      <div class="card-body">
	        <h4 class="card-title">${login} 님의 티켓 예매 내역 입니다.</h4>
	        <p class="text-muted card-text">조회기간을 선택해 주세요.</p>
	        <!-- form -->
	        <div id="calendar" class="">
	          <table class="">
	            <colgroup>
	              <col width="170px" />
	              <col width="*" />
	            </colgroup>
	            <tbody>
	              <tr>
	                <th>예매 기간별 조회</th>
	                <td>
	                  <input id="term1" name="7d" type="radio" class="btn-check setDates oneweekOn" />
	                  <label for="term1" class="btn btn-secondary">7일</label>
	                  <input id="term2" name="15d" type="radio" class="btn-check setDates twoweekOn" />
	                  <label for="term2" class="btn btn-secondary">15일</label>
	                  <input id="term3" name="3m" type="radio" class="btn-check setDates threeMthOn" />
	                  <label for="term3" class="btn btn-secondary">3개월</label>
	                  <input id="term4" name="6m" type="radio" class="btn-check setDates sixMthOn" />
	                  <label for="term4" class="btn btn-secondary">6개월</label>
	                  <input id="term5" name="termPick" type="radio" class="btn-check setDates" />
	                  <label for="term5" class="btn btn-secondary">1년</label>
	                </td>
	              </tr>
	              <tr>
	                <th>일자별 조회</th>
	                <td>
	                  <select id="Option" title="기준일 선택" class="form-select" style="width: 150px; display: inline-block">
	                    <option value="B" selected="">예매일</option>
	                    <option value="P">공연일</option>
	                  </select>
	                  <select id="BYear" title="년도 선택" class="form-select" style="width: 150px; display: inline-block">
	                    <option value="2017">2017</option>
	                    <option value="2018">2018</option>
	                    <option value="2019">2019</option>
	                    <option value="2020">2020</option>
	                    <option value="2021">2021</option>
	                    <option value="2022" selected="">2022</option>
	                  </select>
	                  <span>년</span>
	                  <select id="BMonth" title="월 선택" class="form-select" style="width: 150px; display: inline-block">
	                    <option value="01">01</option>
	                    <option value="02">02</option>
	                    <option value="03">03</option>
	                    <option value="04">04</option>
	                    <option value="05">05</option>
	                    <option value="06">06</option>
	                    <option value="07">07</option>
	                    <option value="08">08</option>
	                    <option value="09">09</option>
	                    <option value="10">10</option>
	                    <option value="11">11</option>
	                    <option value="12">12</option>
	                  </select>
	                  <span>월</span>
	                  <button type="button" class="btn btn-sm btn-secondary" id="searchDate">조회하기</button>
	                </td>
	              </tr>
	            </tbody>
	          </table>
	
	          <div class="mt-4">
	            <!-- List -->
	            <table class="table table-hover table-borderless table-responsive-md">
	              <thead>
	                <tr class="bg-light">
	                  <th scope="col">공연일</th>
	                  <th scope="col">예약번호</th>
	                  <th scope="col">상품명</th>
	                  <th scope="col">예매일</th>
	                  <th scope="col">예약취소</th>
	                </tr>
	              </thead>
	              <tbody>
	                <c:forEach items="${reserveList }" var="reserve" varStatus="status">
	                  <tr class="sdt">
	                    <th scope="row">${showList[status.index].start_date }</th>
	                    <td>${showList[status.index].seq }</td>
	                    <td>${showList[status.index].title }</td>
	                    <td class="readRd"  date-data="${reserve.date }">${reserve.date }</td>
	                    <td>
	                    	<button type="button" class="btn btn-sm btn-outline-danger" style="z-index: 9"
	                       		onclick="location.href='/deleteMyticket.do?seq=${reserve.seq}'">예매취소</button>
	                    </td>
	                  </tr>
	                </c:forEach>
	              </tbody>
	            </table>
	            <!-- /List -->
	          </div>
	        </div>
	        <!-- /form -->
	      </div>
	    </div>
	  </div>
	  
    <div class="blank_80"></div>
    <div class="blank_50"></div>
    <jsp:include page="../footer.jsp"></jsp:include>
  </body>
</html>
