<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
 hr{
 	color: darkgray;
 }
</style>

	
    <!-- 관람평 start -->
        <div class="gray-con">
            <div class="cwa-text">
                <div class="cwa-text">
                
                	<div class="row">
                        <div class="col-10">
                            <h3><span>${show.title }</span>에 대한 관람평을 적어주세요.</h3>
                            <div class="blank_10"></div>
                            <p>
                                ※ 저속한 표현, 타인의 명예훼손, 광고성 게시물 등은 통보 없이 삭제할 수 있음을 양지하여 주십시오.
                                <br>※ 등록된 관람평의 수정과 삭제는 마이페이지 &gt; 참여와활동 &gt; 관람평 에서 가능합니다.
                            </p>
                        </div>
                        <div class="col-2">
		                    <!-- Button trigger modal start -->
		                    <a class="mdl" href="" data-bs-toggle="modal" data-bs-target="#staticBackdrop" onclick="return false;">
		                    	<span>관람평<br>쓰기</span>
		                    </a>
		    				<!-- Button trigger modal end -->
                        </div>
                    </div>
                    
    
     <!-- 관람평 기입 창 start-->
        <form action="insertReview.do" method="post">
            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">

                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel">관람평 쓰기</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">

                            <table class="table table-bordered">
                                <tbody>
                                    <colgroup>
                                        <col style="width: 20%">
                                        <col style="width: 80%">
                                    </colgroup>
                                    <tr>
                                            <th scope="row">작성자</th>
                                            <input type="hidden" value="${login}" name="id">

                                            <td colspan="2">${login}</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">작품명</th>
                                        <input type="hidden" value="${show.seq}" name="seq">
                                        <td colspan="2">${show.title}</td>
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
                                            <input class="col-12" type="text" name="title">
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row">내용</th>
                                        <td colspan="2">
                                            <input class="col-12" style="height: 150px;" type="text" name="contents">
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                        </div>
                        <div class="modal-footer">
                            <input type="submit" value="작성 완료">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <!-- 관람평 기입 창 end -->
                    
                </div>

                <div class="gray-con">
                    <div class="cwa-text">
                    	<div class="gray-con">
							<c:forEach var="review" items="${review}" varStatus="status" >
								<div class="card-body">
						            <div class="d-flex">
						                <div class="flex-shrink-0">
						                    <img class="rounded-circle" src="https://dummyimage.com/50x50/ced4da/6c757d.jpg" alt="...">
						                </div>
						                <div class="ms-3">
						                    <div class="fw-bold">
						                     	${review.id}       ${review.regdate}
						                     </div>
						                    ${review.contents}
						                </div>
						            </div>
						        </div>
						        <c:if test="${!status.last}">
						        	<hr>
						        </c:if>
							</c:forEach>
                    	</div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 관람평 end -->
	
	

    

    