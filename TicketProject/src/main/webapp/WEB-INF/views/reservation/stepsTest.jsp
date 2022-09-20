<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공연 예매</title>
<!-- 최신 쿼리 -->
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic+Coding&family=Noto+Sans+KR:wght@100;300&display=swap" rel="stylesheet">
<!-- step -->
<link href="https://cdn.jsdelivr.net/npm/smartwizard@5/dist/css/smart_wizard_all.min.css" rel="stylesheet" type="text/css" />
<script src="https://cdn.jsdelivr.net/npm/smartwizard@5/dist/js/jquery.smartWizard.min.js" type="text/javascript"></script>
<script src="../js/reserve/step2_seats.js"></script>
<script src="../js/reserve/step1_calender.js"></script>
<!-- css -->
<link rel="stylesheet" href="../css/reservation/step.css">
<link rel="stylesheet" href="../css/reservation/calendar.css">
<!-- 부트페이 -->
<script src="https://cdn.bootpay.co.kr/js/bootpay-3.3.1.min.js" type="application/javascript"></script>
</head>
<body>
 <div class="grid">
	<!-- SmartWizard html -->
<div id="smartwizard">
	<div class="header_title">TIS 티켓예매</div>
    <ul class="nav">
        <li class="nav-item">
          <a class="nav-link" href="#step-1" id="step1">
          	<img src="../images/reservation/step1_on.gif">
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#step-2" id="step2">
			<img src="../images/reservation/step2_off.gif">
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#step-3" id="step3">
			<img src="../images/reservation/step3_off.gif">
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="#step-4" id="step4">
			<img src="../images/reservation/step4_off.gif">
          </a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="#step-5" id="step5">
			<img src="../images/reservation/step5_off.gif">
          </a>
        </li>
    </ul>
    
    
 	<div class="content">
	    <div class="tab-content">
	    
         													<!-- ####step1 날짜선택 #### -->
	        <div id="step-1" class="tab-pane" role="tabpanel" aria-labelledby="step-1">
	       		
	       		<input class="reserve" type="hidden" value="">
				<div class="sec_cal">
			        <div class="cal_nav">
			            <a href="javascript:;" class="nav-btn go-prev">prev</a>
			            <div class="year-month"></div>
			            <a href="javascript:;" class="nav-btn go-next">next</a>
			        </div>
			        <div class="cal_wrap">
			            <div class="days">
			                <div class="day">MON</div>
			                <div class="day">TUE</div>
			                <div class="day">WED</div>
			                <div class="day">THU</div>
			                <div class="day">FRI</div>
			                <div class="day">SAT</div>
			                <div class="day">SUN</div>
			            </div>
			            <div class="dates"></div>
			        </div>
			    </div>
	        </div>
        													<!-- ####step2 좌석선택 #### -->
	        <div id="step-2" class="tab-pane" role="tabpanel" aria-labelledby="step-2">
	       		<div class="step_container" >
	       		<center>
		        	<div id="line_container" style="padding:50px 50px 50px 110px">
		        	
	        		</div>
	       		</center>
		        	
	    	    	
	        		
       			</div>
	        </div>
	        
	        
        													<!-- ####step3 할인정보 #### -->
	        <div id="step-3" class="tab-pane" role="tabpanel" aria-labelledby="step-3">
	        	<div class="step_container">
	        		<div class="sale">
		        	<table>
		        	<div class="step_title">가격</div>
		        		<caption style="text-align : left; text-indent:15px;">좌석 <span style="color:red">{}</span> 매를 선택하셨습니다.</caption>
		        		
		        		<tr>
		        			<th>기본가</th>
		        			<td >일반</td>
		        			<td >${show.price } 만원</td>
		        			<td>
		        				<select name='ticket_cnt' id="ticket_cnt" onchange="changeFn();">
								  <option value='0' selected>-- 선택 --</option>
								  
								</select>
							</td>
		        		</tr>
		        		<tr>
		        			<th>기본할인</th>
		        			<td>장애인/국가유공자 할인 50%</td>
		        			<td>${show.price /2 } 만원</td>
		        			<td><select name='dc_price'>
								  <option value='0' selected>-- 선택 --</option>
								  <option value='1'>1매</option>
								  <option value='2'>2매</option>
								  <option value='3'>3매</option>
								</select>
							</td>
		        		</tr>
		        	</table>
		        	</div>
	        	</div>
	        </div>
	        
	        
      															<!-- ####step4 티켓 수령#### -->
	        <div id="step-4" class="tab-pane" role="tabpanel" aria-labelledby="step-4">
				<div class="step_container">
					<div class="frame">
						<div class="deliveryL">
						<h3 class="title"><img src="//ticketimage.interpark.com/TicketImage/onestop/stit_delivery_01.gif" alt="배송방법선택"></h3>
	        				<table>
			                    <tbody>
			                        <tr id="Delivery_24000" name="Delivery_24000" class="selected">
			                            <td><input type="radio" class="chk" id="Delivery" name="Delivery" value="24000" onchange="radioChangeFn();"><label for="">현장수령</label></td>
			                        </tr>
			                        <tr id="Delivery_24001" name="Delivery_24001" style="display:" class="">
			                            <td><input type="radio" class="chk" id="Delivery" name="Delivery" value="24001" ><label for="">배송 (3,000원)</label></td>
			                        </tr>
			                    </tbody>
                			</table>
                			
                			<div class="delivery_info">
			                    <div id="DeliveryInfo_24000" class="inner" style="">
			                        <p class="sel">티켓현장수령은 예매시 부여되는 <em>"예약번호"로 <br>관람일 당일 티켓을 수령하여 입장합니다.</em><img src="//ticketimage.interpark.com/TicketImage/onestop/icon_delivery.gif" alt="현장수령시 유의사항 더보기" class="que" onmouseover="showlayernormalclick('lay_sel1');" onmouseout="showlayernormalclick('lay_sel1');"></p>
			                    </div>
							</div>
						</div>
						<div class="deliveryR">
	        				<div class="orderer">
                    <h3 class="title"><img src="//ticketimage.interpark.com/TicketImage/onestop/stit_delivery_03.gif" alt="주문자확인"></h3>
                    <table>
                        <colgroup><col width="115px"><col width="*"></colgroup>
                        <tbody>
                            <tr class="fir">
                                <th>이름</th>
                                <td><input type="text" id="MemberName" style="width:62px;" class="txt1" value="${username }" maxlength="20" disabled=""></td>
                            </tr>
                            
                            <tr>
                                <th>아이디</th>
                                <td class="form">
                                    <input type="text" id="SSN1" name="SSN1" style="width:100px;" class="txt1" value="${login }" maxlength="6" disabled="">  <span style="font-size:11px;"></span> <input type="hidden" id="SSN2" name="SSN2" style="width:62px;" class="txt1" value="0000000" maxlength="7">
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2"><em style="font-size:xx-small;">현장수령 및 고객문의시 본인확인을 위해 정확한 정보를 입력해주세요.</em></td>
                            </tr>
                            <tr>
                                <th>휴대폰</th>
                                    <td class="form"><input type="text" id="HpNo1" value="${userphone }" style="width:100px;" class="txt1" maxlength="3"></td>
                            </tr>
                            <tr>
                                <th>이메일</th>
                                <td class="form"><input type="text" id="Email" value="${usermail }" style="width:170px;" class="txt1"></td>
                                <input type="hidden" id="Zipcode" value="">
                                <input type="hidden" id="Addr" value="">
                                <input type="hidden" id="SubAddr" value="">
                            </tr>
                            <tr>
                                <td colspan="2" class="fs">SMS 문자와 이메일로 예매 정보를 보내드립니다.</td>
                            </tr>
							
                        </tbody>
                    </table>
                </div>
						</div>
					</div>
        		</div>
	        </div>
	        
	        
	        
      															<!-- ####step5 결제#### -->
	        <div id="step-5" class="tab-pane" role="tabpanel" aria-labelledby="step-5">

						<div class="step_container">

							<div class="cencel">

								<img
									src="//ticketimage.interpark.com/TicketImage/onestop/notice_title.gif"
									alt="취소수수료 동의후 다음 버튼클릭">
	



								<div class="inner" style='display: &gt; &lt;h3 class=" title"='"">
									<img
										src="//ticketimage.interpark.com/TicketImage/onestop/stit_cancel.gif"
										alt="취소수수료"> <img
										src="//ticketimage.interpark.com/TicketImage/onestop/sac_cancelfee_02.jpg"
										alt="취소수수료" style="width: 500px;">

									<ul style="list-style:none; padding-left:0;">

										<li>관람일 3일 전까지, 예매 당일 밤 12시 이전 취소시에는 취소수수료 없음</li>
										<li>관람일 2일 전부터는, 예매 당일 취소시에도 취소수수료 부과됨(취소기간 내에 한함)</li>
										<li>날짜지정이 없는 상시상품의 경우 취소수수료 없음(단, 종료 후 환불 불가)</li>
										<li>특정상품의 경우 취소수수료 정책이 달라질 수 있습니다.</li>

										<li>배송 시작 후 취소 시에는 <em class="col2">배송비가 환불되지 않으며,</em>
											취소수수료는 반송된 <em class="col2">티켓의 도착 일자를 기준</em>으로 부과됩니다.
										</li>

									</ul>

									<div id="agreement" class="agreement">
										<h3>
											<img
												src="//ticketimage.interpark.com/TicketImage/onestop/txt_agree.gif"
												alt="개인정보 제3자 정보제공">
										</h3>



									</div>

									<div class="agree_check">
										<ul style="list-style:none; padding-left:0;">
											<li><input id="CancelAgree"
												onclick="fnCheckCancelAgree()" type="checkbox"> <label
												class="check2" for="CancelAgree">(필수) 취소수수료/취소기한을
													확인하였으며, 동의합니다.</label></li>
											<li><input id="CancelAgree2"
												onclick="fnCheckCancelAgree()" type="checkbox"> <label
												class="check2" for="CancelAgree2">(필수) 제3자 정보제공 내용에
													동의합니다.</label></li>
										</ul>
									</div>
								</div>





							</div>

						</div>

					</div>
	    </div>
    </div>
	<footer>
		  <div class="title_img">
                <img src="https://tis-teamproject.s3.ap-northeast-2.amazonaws.com/upload/${show.img}">
            </div>
            <div class="info">
                <table>
                    <tr>
                        <th >${show.title }</td>
                        
                    </tr>
                    <tr>
                        <td>${show.start_date } ~ </td>
                    </tr>
                    <tr>
                        <td>${show.end_date }</td>
                    </tr>
                    <tr>
                        <td>관람시간 : ${show.runtime}</td>
                    </tr>
                    <!-- 장소 -->
                    <%-- <tr>
                        <td>${show.end_date }</td>
                    </tr> --%>
                </table>
            </div>
            <div class="myInfo">
                <h5>My예매정보</h5>
                <table>
                    <tr>
                        <th  >선택일시</th>
                        <td class="choice_date" id="choice_date"> </td>
                    </tr>
                    <tr>
                        <th id="sel_num" >선택좌석<br><p>(0) 석 </p></th>
                       	<td height=100 valign="top">
							<div id="sel_seats" style="overflow-y:scroll;  height:100%; padding:4px">
							</div>
						</td>
                    </tr>
                    <tr>
                        <th >금액</th>
                        <td id="price_sum">   </td>
                    </tr>
                    <tr>
                        <th >배송료</th>
                        <td >0원 | 현장 수령</td>
                    </tr>
                    <tr>
                        <th>취소기한</th>
                        <td style="color: red;">
                        	<fmt:parseDate value="${show.start_date }" type="both" var="parseDate_start_date" pattern="yyyy-MM-dd"></fmt:parseDate>
                        	<fmt:formatDate value="${parseDate_start_date}" pattern="yyyy-MM-dd(E) HH:mm"></fmt:formatDate>
                        </td>
                    </tr>
                    <tr>
                        <th style=" height: 60px; background-color: darkgray;">총 결제금액</th>
                        <td style="height: 60px; background-color: darkgray;" id="price_total"></td>
                    </tr>
                </table>
					<div class="btn-group">
		  	    	<button class="btn btn-sm btn_prev" id="prev-sw-btn"></button>
			        <button class="btn btn-sm btn_next" id="next-sw-btn"></button>
 
			        
		    	</div>
              
            </div>
	
 	</footer>
 	
 	
 	
    <!-- Include optional progressbar HTML -->
    <div class="progress">
      <div class="progress-bar" role="progressbar" style="width: 0%" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100"></div>
    </div>
     <form id="reservation">


	<div id="data">
		<input type="hidden" name="ticket_date" id="ticket_date" >
		<input type="hidden" name="seat_num" id="seat_num"  >
		<input type="hidden" name="ticket_price_sum" id="ticket_price_sum"  >
		<input type="hidden" name="seq" id="seq" value="${show.seq }" >
		<input type="hidden" name="show_title" id="show_title" value="${show.title }"  >
		<input type="hidden" name="userid" id="userid" value="${login}"  >
		<input type="hidden" name="useremail" id="useremail" value="${usermail}">
		<input type="hidden" name="username" id="username" value="${username}">

	</div>
  </form>	 
<input type="hidden" id="showPrice" name="price" value="${show.price }">
<input type="hidden" class="start_date" value="${show.start_date }">
<input type="hidden" class="end_date" value="${show.end_date }">
</div>  
</div>
</body>
</html>