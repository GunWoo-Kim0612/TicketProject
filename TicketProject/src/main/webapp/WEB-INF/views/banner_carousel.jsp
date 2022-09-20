<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

  <link rel="stylesheet" href="../css/b_carousel.css">


<div class="gallery">
        <div class="gallery-container">
		<c:forEach items="${showList}" var="show" varStatus="status" begin="0" end="10">
        	
			<img class="gallery-item gallery-item-${status.index +1 }" src="https://tis-teamproject.s3.ap-northeast-2.amazonaws.com/upload/${show.img}" data-index="${status.index + 1}">
          </c:forEach>
        </div>
	<div class="gallery-controls"></div>
</div>
    
      <script src="../js/b_carousel.js"></script>