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

	<!-- star css -->
	<link rel="stylesheet" href="../css/star.css">
	
    <!-- jQuery(제이쿼리) 최신버전 링크  -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    
    <script>
    $(document).ready(function(){ 
    	
            $('.pullValue').on('click', function(){
                var id = $(this).children('input[name=id]').val();
                var seq = $(this).children('input[name=seq]').val();
                var title = $(this).children('input[name=title]').val();
                var contents = $(this).children('input[name=contents]').val();
                var score = $(this).children('input[name=score]').val();
                var showTitle = $(this).children('input[name=showTitle]').val();

                $('.r_user_h').attr('value', id);
                $('.r_user_s').html(id);
                $('.r_contents_s').val(contents);
                $('.r_title_s').val(title);
                $('.r_seq_h').attr('value', seq);
                $('.r_seq_s').html(showTitle);
            });
    
    
    });
        
    </script>
  </head>
  <body class="d-flex flex-column min-vh-100">
    <jsp:include page="../header.jsp"></jsp:include>
    <jsp:include page="mypage_b.jsp"></jsp:include>

    <div class="container">
      <jsp:include page="mp_nav.jsp"></jsp:include>
      <div class="card mb-3 mt-3 shadow">
        <h2 class="card-body">
          <span class="badge bg-dark shadow">관람평</span>
        </h2>
        <!-- 관람평 block -->
	    <c:forEach items="${reviewList }" var="review" varStatus="status"> 
          <div class="text-center h1">${review.regdate }</div>
        
          <div class="row">
            <div class="col-md-3">
              <h1 class="card-body">
              	<span class="badge rounded-pill bg-secondary">${show[status.index].title}</span>
              </h1>
            </div>
            <div class="col-md-9">
              <div class="card-body">
                <div class="card shadow">
                  <div class="row g-0">
                    <div class="col-md-4">
                      <a href="/getShow.do?seq=${show[status.index].seq }">
                      	<img src="../images/mainCarousel/${show[status.index].img }" class="img-fluid" alt="...">
                      </a>
                    </div>
                    <div class="col-md-8">
                      <div class="card-body">
                        <h5 class="card-title" name="title">${review.title}</h5>
                        <p class="card-text" name="contents">${review.contents }</p>
                        <div class="card-text star-rating" name="score">
                        <form>
                        <c:set var="score" value="${review.score}"></c:set>
						    <c:choose>
						      <c:when test="${review.score eq '5'}">
						        <div class="star-rating">
						          <input type="radio" id="5-stars" name="rating" value="5" onclick="return(false);"  checked />
						          <label for="5-stars" class="star">&#9733;</label>
						          <input type="radio" id="4-stars" name="rating" value="4" onclick="return(false);"/>
						          <label for="4-stars" class="star">&#9733;</label>
						          <input type="radio" id="3-stars" name="rating" value="3" onclick="return(false);"/>
						          <label for="3-stars" class="star">&#9733;</label>
						          <input type="radio" id="2-stars" name="rating" value="2" onclick="return(false);"/>
						          <label for="2-stars" class="star">&#9733;</label>
						          <input type="radio" id="1-star" name="rating" value="1" onclick="return(false);"/>
						          <label for="1-star" class="star">&#9733;</label>
						        </div>
						      </c:when>
						      <c:when test="${review.score eq '4'}">
						        <div class="star-rating">
						          <input type="radio" id="5-stars" name="rating" value="5" onclick="return(false);"/>
						          <label for="5-stars" class="star">&#9733;</label>
						          <input type="radio" id="4-stars" name="rating" value="4"onclick="return(false);"  checked />
						          <label for="4-stars" class="star">&#9733;</label>
						          <input type="radio" id="3-stars" name="rating" value="3" onclick="return(false);"/>
						          <label for="3-stars" class="star">&#9733;</label>
						          <input type="radio" id="2-stars" name="rating" value="2" onclick="return(false);"/>
						          <label for="2-stars" class="star">&#9733;</label>
						          <input type="radio" id="1-star" name="rating" value="1" onclick="return(false);"/>
						          <label for="1-star" class="star">&#9733;</label>
						        </div>
						      </c:when>
						      <c:when test="${review.score eq '3'}">
						        <div class="star-rating">
						          <input type="radio" id="5-stars" name="rating" value="5" onclick="return(false);"/>
						          <label for="5-stars" class="star">&#9733;</label>
						          <input type="radio" id="4-stars" name="rating" value="4" onclick="return(false);"/>
						          <label for="4-stars" class="star">&#9733;</label>
						          <input type="radio" id="3-stars" name="rating" value="3" onclick="return(false);"  checked />
						          <label for="3-stars" class="star">&#9733;</label>
						          <input type="radio" id="2-stars" name="rating" value="2" onclick="return(false);"/>
						          <label for="2-stars" class="star">&#9733;</label>
						          <input type="radio" id="1-star" name="rating" value="1" onclick="return(false);"/>
						          <label for="1-star" class="star">&#9733;</label>
						        </div>
						      </c:when>
						      <c:when test="${review.score eq '2'}">
						        <div class="star-rating">
						          <input type="radio" id="5-stars" name="rating" value="5" onclick="return(false);" />
						          <label for="5-stars" class="star">&#9733;</label>
						          <input type="radio" id="4-stars" name="rating" value="4" onclick="return(false);" />
						          <label for="4-stars" class="star">&#9733;</label>
						          <input type="radio" id="3-stars" name="rating" value="3" onclick="return(false);" />
						          <label for="3-stars" class="star">&#9733;</label>
						          <input type="radio" id="2-stars" name="rating" value="2" onclick="return(false);" checked/>
						          <label for="2-stars" class="star">&#9733;</label>
						          <input type="radio" id="1-star" name="rating" value="1" onclick="return(false);"/>
						          <label for="1-star" class="star">&#9733;</label>
						        </div>
						      </c:when>
						      <c:when test="${review.score eq '1'}">
						        <div class="star-rating">
						          <input type="radio" id="5-stars" name="rating" value="5" onclick="return(false);" />
						          <label for="5-stars" class="star">&#9733;</label>
						          <input type="radio" id="4-stars" name="rating" value="4" onclick="return(false);"/>
						          <label for="4-stars" class="star">&#9733;</label>
						          <input type="radio" id="3-stars" name="rating" value="3" onclick="return(false);"/>
						          <label for="3-stars" class="star">&#9733;</label>
						          <input type="radio" id="2-stars" name="rating" value="2" onclick="return(false);" />
						          <label for="2-stars" class="star">&#9733;</label>
						          <input type="radio" id="1-star" name="rating" value="1" onclick="return(false);" checked/>
						          <label for="1-star" class="star">&#9733;</label>
						        </div>
						      </c:when>
						    </c:choose>
						</form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="d-grid gap-2 d-md-flex justify-content-md-end mt-2">
                <div class="pullValue">
                        <input type="hidden" name="id" value="${login}">
                        <input type="hidden" name="title" value="${review.title}">
                        <input type="hidden" name="contents" value="${review.contents}">
                        <input type="hidden" name="score" value="${review.score}">
                        <input type="hidden" name="seq" value="${review.seq}">
                        <input type="hidden" name="showTitle" value="${show[status.index].title}">
                  <button type="button" class="btn btn-sm btn-secondary"  data-bs-toggle="modal" href="#staticBackdrop">수정</button>
                  </div>
                  <button class="btn btn-sm btn-outline-danger" onclick="location.href='/deleteMyreview.do?seq=${review.seq}'">삭제</button>
                </div>
              </div>
            </div>
          </div>
        
        <%-- </c:forEach> --%>
        <!-- /관람평 block -->
        <!-- data-bs-target="#staticBackdrop" -->
        
		<!-- 관람평 수정수정 창 start-->
		<form action="/mypage/updateMyreview.do" method="post">
		<input type="hidden" value="${review.seq }">
		  <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
		    <div class="modal-dialog modal-dialog-centered">
		      <div class="modal-content">
		        <div class="modal-header">
		          <h5 class="modal-title" id="staticBackdropLabel">관람평 수정</h5>
		          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
		        </div>
		        <div class="modal-body">
		          <table class="table table-bordered">
		            <tbody>
		              <colgroup>
		                <col style="width: 20%" />
		                <col style="width: 80%" />
		              </colgroup>
		              <tr>
		                <th scope="row">작성자</th>
                        <td class="r_user_s" colspan="2">
                          <input class="r_user_h" type="hidden" value="${login }" name="id" readonly>
                        </td>
		              </tr>
		              <tr>
		                <th  scope="row">작품명</th>
                        <td class="r_seq_s" colspan="2">
                          <input class="r_seq_h" type="hidden" value="${show[status.index].title }" name="title" readonly>
                        </td>
		              </tr>
		              <tr>
		                <th scope="row">종합평점</th>
		                <td colspan="2">
		                  <select name="score">
		                    <option value="1">★☆☆☆☆</option>
		                    <option value="2">★★☆☆☆</option>
		                    <option value="3">★★★☆☆</option>
		                    <option value="4">★★★★☆</option>
		                    <option value="5">★★★★★</option>
		                  </select>
		                </td>
		              </tr>
		              <tr>
		                <th scope="row">관람평</th>
                        <td colspan="2">
                            <input class="col-12 r_title_s" type="text" name="title" value="${review.title }">
                        </td>
		              </tr>
		              <tr>
		                <th  scope="row">내용</th>
                        <td colspan="2">
                            <input class="col-12 r_contents_s" style="height: 150px;" type="text" name="contents" value="${review.contents }">
                        </td>
		              </tr>
		            </tbody>
		          </table>
		        </div>
		        <div class="modal-footer">
		          <button class="btn btn-secondary">완료</button>
		        </div>
		      </div>
		    </div>
		  </div>
		</form>
		<!-- 관람평 읍데이뜨 창 end -->
		</c:forEach>
		
      </div>
    </div>
    <div class="blank_80"></div>
    <div class="blank_50"></div>
    <jsp:include page="../footer.jsp"></jsp:include>
  </body>
</html>
