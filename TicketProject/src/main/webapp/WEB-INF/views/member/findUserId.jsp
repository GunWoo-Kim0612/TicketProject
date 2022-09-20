<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

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
</head>

<body>
	<jsp:include page="../header.jsp"></jsp:include>
		<jsp:include page="member_b.jsp"></jsp:include>
	
    <div class="container" style="width: 800px;">
        <form class="mt-5" action="findId.do" method="post">
            <div class="card text-white bg-dark mb-3">
                <div class="card-header">
                    <h3>아이디 찾기</h3>
                </div>
                <div class="card-body">
                    <ul class="nav nav-pills nav-fill navbar-dark bg-dark" style="margin-top: 15px">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="findUserId">아이디 찾기</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="findPw">비밀번호 찾기</a>
                        </li>
                    </ul>

                </div>
            </div>

            <div class="card">
                <div class="card-body">
                <div class="row">
                        <div class="col-12">
                            <h4 class="card-title"></h4>
		                    <h6 class="card-subtitle mb-2 text-muted">회원님의 정보로 아이디 찾기</h6>
		                    <p class="card-text">* 개인정보호법을 준수하고, 고객님의 정보를 안전하게 보호하기 위해 주민등록번호를 통한 실명확인을 하지 않고 있습니다.
		                        (관련 법률 개정 개인정보보호법 및 동법 시행령, 제 24조의 2)</p>
                        </div>
                    </div>
            	<div class="row">
                        <div class="col-3">

                        </div>
                        <div class="col-6">
                            <div class="form-group">
		                        <label for="exampleInputEmail1" class="form-label mt-4">이름</label>
		                        <input type="text" name="name" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
		                            placeholder="이름을 입력하시오">
		                    </div>
		                    <div class="form-group">
		                        <label for="exampleInputEmail1" class="form-label mt-4">이메일</label>
		                        <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"
		                            placeholder="이메일을 입력하시오">
		                        <br>
		                        <br>
		                    </div>
                        </div>
                        <div class="col-3">

                        </div>
                    </div>
                <p id="result_pw" align="center">${id}</p]>
                </div>
                <input type="submit" class="btn btn-secondary" value="아이디 찾기">
            </div>
        </form>

    </div>
    	<jsp:include page="../footer.jsp"></jsp:include>
</body>

</html>