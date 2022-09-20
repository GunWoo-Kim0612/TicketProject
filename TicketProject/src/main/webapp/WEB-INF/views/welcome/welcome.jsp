<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Team TIS</title>
    <!-- Bootstrap5 -->
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
    <!-- Bootstrap Icon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css" />

    <!-- header css-->
	<link rel="stylesheet" href="https://tis-teamproject.s3.ap-northeast-2.amazonaws.com/css/style.css">

    <!-- banner css -->
    <link rel="stylesheet" href="../css/show_view.css" />
  </head>
  <body>
    <jsp:include page="../header.jsp"></jsp:include>
    <jsp:include page="welcome_b.jsp"></jsp:include>
    <div class="container">
      <!-- 주소 -->
      <div class="card mb-3 shadow">
        <h2 class="card-body">
          <span class="badge bg-dark shadow-lg">오시는 길</span>
        </h2>
        <div class="card-body">
          <div class="row">
            <div class="col-8">
              <div class="row">
                <div class="col-1 fw-bold fs-4 text-success"><i class="bi bi-pin-angle"></i></div>
                <div class="col-4 fw-bold fs-4 text-success">주소 도로명</div>
                <div class="col-7 p-1 fs-5">서울특별시 영등포구 선유로 130</div>
              </div>
              <div class="row">
                <div class="col-1 fw-bold fs-4 text-success"><i class="bi bi-pin-angle"></i></div>
                <div class="col-4 fw-bold fs-4 text-success">지번</div>
                <div class="col-7 p-1 fs-5">양평동 3가 5-4번지</div>
              </div>
              <div class="row">
                <div class="col-1 fw-bold fs-4 text-success"><i class="bi bi-pin-angle"></i></div>
                <div class="col-4 fw-bold fs-4 text-success">건물명</div>
                <div class="col-7 p-1 fs-5">에이스 하이테크시티 3차</div>
              </div>
            </div>
            <!-- <div class="col-4">
              <div class="row col-6 offset-6">
                <button class="btn btn-secondary" href="#"><i class="bi bi-map"></i>&nbsp;전체맵</button>
              </div>
              <div class="row col-6 offset-6 mt-3">
                <button class="btn btn-secondary" href="#"><i class="bi bi-geo-alt"></i>&nbsp;길찾기</button>
              </div>
            </div> -->
          </div>
        </div>
      </div>
      <!-- /주소 -->

      <!-- 대중교통 -->
      <div class="card mb-3 mt-5 shadow">
        <h3 class="card-body text-center"><i class="bi bi-megaphone"></i> 원활한 관람을 위해서 <span style="color: red">대중교통 이용</span>을 부탁 드립니다.</h3>
        <div class="card-body">
          <!-- 지하철 -->
          <div class="row">
            <div class="col-3 h4 fw-bold"><i class="bi bi-info-square-fill" style="color: red"></i> 지하철</div>
            <div class="col-9">
              <div class="row mt-5">
                <div class="col-4 h3">
                  <span class="badge bg-success rounded-pill">2호선</span>
                </div>
                <div class="col-8">
                  <div class="row mt fs-5">
                    <div class="col lh-lg" style="color: #00b140">
                      서초역 3번 출구<br />
                      <i class="bi bi-arrow-return-right"></i>마을버스 11번(초록색)을 타고 네 정거장 이동<br />
                      <i class="bi bi-arrow-return-right"></i>도보이동 (약 20~25분 소요)
                    </div>
                  </div>
                </div>
              </div>

              <div class="row mt-5">
                <div class="col-4 h3" style="color: #fc4c02">
                  <span class="badge bg-danger rounded-pill">3호선</span>
                </div>
                <div class="col-8">
                  <div class="row fs-5">
                    <div class="col lh-lg" style="color: #fc4c02">
                      남부터미널역 5번 출구<br />
                      <i class="bi bi-arrow-return-right"></i>도보이동 (약 5~10분 소요)<br />
                      <i class="bi bi-arrow-return-right"></i>마을버스 22번(초록색)을 타고 두 정거장 이동
                    </div>
                  </div>
                </div>
              </div>

              <div class="row mt-5">
                <div class="col-4 h3" style="color: #30e7ff">
                  <span class="badge bg-info rounded-pill">4호선</span>
                </div>
                <div class="col-8">
                  <div class="row fs-5">
                    <div class="col lh-lg" style="color: #30e6ff">
                      사당역 1번 출구<br />
                      <i class="bi bi-arrow-return-right"></i>마을버스 17번(초록색)을 타고 16개 정거장 이동
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <hr />
          <!-- 버스 -->
          <div class="row mt-5">
            <div class="col-3 h4 fw-bold"><i class="bi bi-info-square-fill" style="color: red"></i> 버스</div>
            <div class="col-9">
              <div class="row mt-5">
                <div class="col-4 lh-lg h5" style="color: #0066ff">간선</div>
                <div class="col-5 h5">
                  <div class="row">
                    <div class="col lh-lg border-bottom" style="color: #0066ff">406, 405</div>
                  </div>
                </div>
                <div class="col-4 lh-lg h5 border-bottom" style="color: #00b140">지선</div>
                <div class="col-5">
                  <div class="row">
                    <div class="col lh-lg h5" style="color: #00b140">5413</div>
                  </div>
                </div>
                <div class="col-4 lh-lg h5" style="color: #b21e36">직행</div>
                <div class="col-5">
                  <div class="row">
                    <div class="col lh-lg h5 border-bottom" style="color: #b21e36">1500-2, 1553</div>
                  </div>
                </div>
                <div class="col-4 lh-lg h5 border-bottom" style="color: #00b140">마을</div>
                <div class="col-5">
                  <div class="row">
                    <div class="col lh-lg h5" style="color: #00b140">서초11, 서초17, 서초22</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- /대중교통 -->
      <!-- Map -->
      <!-- 지도를 표시할 div 입니다 -->
      <div id="map" style="width: 100%; height: 350px" class="shadow"></div>

      <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4cc1d208808adfb832b9d70177af42cf"></script>
      <script>
        var mapContainer = document.getElementById("map"), // 지도를 표시할 div
          mapOption = {
            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
            level: 3, // 지도의 확대 레벨
          };

        // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
        var map = new kakao.maps.Map(mapContainer, mapOption);
      </script>
      <!-- /Map -->
    </div>
    <div class="blank_80"></div>
    <div class="blank_50"></div>
    <jsp:include page="../footer.jsp"></jsp:include>
  </body>
</html>
