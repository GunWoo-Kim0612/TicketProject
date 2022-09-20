<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
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

<link rel="stylesheet" href="https://tis-teamproject.s3.ap-northeast-2.amazonaws.com/css/style.css">

    <!-- banner css -->
    <link rel="stylesheet" href="../css/show_view.css" />

    <!-- jQuery(제이쿼리) 최신버전 링크  -->
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>

	<script>
		
			
		function chkPw() {
	        var pw = $("#userPw").val();
	        var num = pw.search(/[0-9]/g);
	        var eng = pw.search(/[a-z]/gi);
	        var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
	        var edit = document.edit;
	
	        if (pw.length < 8 || pw.length > 20) {
	          alert("8자리 ~ 20자리 이내로 입력해주세요.");
	          edit.pw.focus();
	          return false;
	         /*  e.preventDefault(); */
	        } else if (pw.search(/\s/) != -1) {
	          alert("비밀번호는 공백 없이 입력해주세요.");
	          edit.pw.focus();
	          return false;
	        } else if (num < 0 || eng < 0 || spe < 0) {
	          alert("영문,숫자, 특수문자를 혼합하여 입력해주세요.");
	          edit.pw.focus();
	          return false;
	        } else {
	          console.log("통과");
	          return true;
	        }
	    }
		
	
    	function cf_pw() {
    		var pw = document.getElementById('userPw');	//비밀번호 
    		var cfPw = document.getElementById('cfPw');		//비밀번호 확인 값
    		var cfMsg = document.getElementById('cfMsg');	//확인 메세지
    		var cColor = "#00ff00";	//맞았을 때 출력되는 색깔.
    		var wColor ="#ff0000";	//틀렸을 때 출력되는 색깔
    		
    		if(pw.value == cfPw.value){
    			cfMsg.style.color = cColor;
    			cfMsg.innerHTML ="비밀번호 일치";
    		}else{
    			cfMsg.style.color = wColor;
    			cfMsg.innerHTML ="비밀번호 불일치";
    		}
    	}
	    
	      
        
	     
      </script>


</head>

  <body class="d-flex flex-column min-vh-100">
    <jsp:include page="../header.jsp"></jsp:include>
    <jsp:include page="mypage_b.jsp"></jsp:include>
    <div class="container" style="width: 800px">
        <form action="/updateMember.do" class="mt-5" method="post" name="edit" onsubmit="return chkPw();">
	      	<div class="card mb-3 mt-3 shadow">
	          <h2 class="card-body"><span class="badge bg-dark shadow">회원정보수정</span></h2>
	          <div class="form-group card-body">
	            <label for="user_name" class="form-label mt-4">이름</label>
	            <input type="text" class="form-control" id="user_name" name="name" value="${edit.name }" readonly />
	          </div>
	          <div class="form-group card-body">
	            <label for="userId" class="form-label mt-4">아이디</label>
	            <input type="text" class="form-control" id="userId" name="id" value="${edit.id}" readonly />
	          </div>
	          <div class="form-group card-body">
	            <label for="userPw" class="form-label mt-4">비밀번호</label>
	            <input type="password" class="form-control" id="userPw" name="pw" placeholder="비밀번호를 입력해주세요." />
	          </div>
	          <div class="form-group card-body">
	            <label for="cfPw" class="form-label mt-4">
	              <span class="text-muted">비밀번호 확인</span>
	              <span id="cfMsg"></span>
	            </label>
	            <input type="password" class="form-control" id="cfPw" placeholder="비밀번호를 다시 입력해주세요." onkeyup="cf_pw();" />
	          </div>
	          <div class="form-group card-body">
	            <label for="userEmail" class="form-label mt-4">이메일</label>
	            <input type="email" class="form-control" id="userEmail" name="email" value="${edit.email }" placeholder="이메일을 입력해주세요." />
	          </div>
	          <div class="form-group card-body">
	            <label for="userPh" class="form-label mt-4">전화번호</label>
	            <input type="text" class="form-control" id="userPh" name="phone" value="${edit.phone }" placeholder="전화번호를 입력해주세요." />
	          </div>
	          <div class="mt-4 mb-4" style="text-align: center">
	            <button class="btn btn-secondary" style="width: 300px">수정</button>
	          </div>
		    </div>
        </form>
      </div>
    <div class="blank_80"></div>
    <div class="blank_50"></div>
    <jsp:include page="../footer.jsp"></jsp:include>
  </body>
</html>
