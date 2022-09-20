/**
 * 
 */
$(document).ready(function () {
	calendarInit();
	
    var ticket_cnt;
	var event_st = 0;
	
	
//div 클릭시 좌석 선택 1 -> 2
	var onClickSeat = function () {
    //클릭대상 this의 속성값 가져옴
	    var x = $(this).attr('data-x');
	    var y = $(this).attr('data-y');
	    var $sel_seats = $("<div>" + x + "열-" + y + "행 좌석  </div>").addClass('new');
	    var seat_st = $(this).attr('seat_st')


	    var sel_seats_val = $("#seat_num").val();
	    sel_seats_val = sel_seats_val + x+"열-"+y+"행 좌석";


	    $sel_seats.appendTo('#sel_seats');
	    ticket_cnt = $('.new').length;

		//선택한 티켓수 select박스 옵션에 적용                
	    var $cnt_option = $("<option value=" + ticket_cnt + ">"+ticket_cnt+"매</option>");
	    $cnt_option.appendTo('#ticket_cnt');

	    //선택좌석 표기
	    $sel_num = $("<p>(" + ticket_cnt + ") 석</p>");
	    $('#sel_num').children().last().empty();			
	    $sel_num.appendTo('#sel_num');
	    $("#seat_num").val(sel_seats_val);



	    //이벤트 구분 좌석 선택 = 1
	    event_st = 1;
	    console.log(event_st);
	    //ajax 값 seats 전달
    
	   	$.ajax({
	   	    url : "/seats" ,
	   	    type : "post",
	   	    data : {  
	   	    	"x" : x, 
	   	    	"y" : y,
	   	    	"seat_st" : seat_st,
	            'ticket_cnt' : ticket_cnt,
	            'event_st' : event_st
	  	    	},
  	    	
	 	    //전달 성공시 렌더링	
	   	    success : function(data){			/* send */
	 	    		$(".line").empty();
	  	    	   	$.getJSON('/seats', { dummy: new Date().getTime() }, function (data) {
	  	                $.each(data, function (indexY, line) {                                                                          //indexY, 배열 전체read   line[i][ ] : 1행배열    
	  	                    var $line = $('<div></div>').addClass('line');                                                              //jquery 변수선언 var $name, 동적으로 추가된 div태그에 class line 속성 부여(css)
	
	  	                    $.each(line, function (indexX, seat) {                                                                      //indexX, 1행배열 read    seat[ ][j] : i 행 j열 
	
	  	                        var $output = $('<div></div>', {
	  	                            class: 'seats',
	  	                            'data-x': indexX,                                                                                   //data-x 라는 이름의 속성을 추가해줌 (my name)
	  	                            'data-y': indexY,
	  	                            'seat_st': seat,
	  	                            'ticket_cnt' : ticket_cnt,
	  								'event_st' : event_st
	
	
	  	                        }).appendTo($line);
	
	  	                        if (seat == 1) {
	  	                            $output.addClass('enable').on('click', onClickSeat) //onClickSeat : 메소드 ()없이 사용함
	  	                        } else if (seat == 2) {
	  	                            $output.addClass('disable').on('click', onCancleSeat)//캔슬메소드 
	  	                        } else if (seat == 3) {
	  	                            $output.addClass('sold')
	  	                        }
	
	  	                    });
	  	                    $line.appendTo('#step-2');
	  	                });
	            	});
	  	     //렌더링 END	   	
	         }
  	    //ajax post seats END	
  	    });   
                
                
             // 좌석 선택 이벤트 END
    }
            
            
    //좌석 취소 이벤트
    var onCancleSeat = function () {
        //클릭대상 this의 속성값 가져옴
        var x = $(this).attr('data-x');
        var y = $(this).attr('data-y');
        var $sel_seats = $("<div>" + x + "열-" + y + "행 좌석  </div>").addClass('new');
        var seat_st = $(this).attr('seat_st')

        $('#sel_seats').children().last().empty();
        ticket_cnt = $('.new').length;

        var $cnt_option = $("<option value=" + ticket_cnt + ">"+ticket_cnt+"매</option>");

        $('#ticket_cnt').children().last().empty();			

        //이벤트 구분 좌석 취소 = 2
        event_st = 2;
        console.log(event_st);
        	$.ajax({
        	    url : "/seats" ,
        	    type : "post",
        	    data : {  
        	    	"x" : x, 
        	    	"y" : y,
        	    	"seat_st" : seat_st,
                    'ticket_cnt' : ticket_cnt,
					'event_st' : event_st
        	    	
       	    	},
        	    success : function(data){			/* send */
      	    		$(".line").empty();
       	    	   	$.getJSON('/seats', { dummy: new Date().getTime() }, function (data) {
       	                $.each(data, function (indexY, line) {                                                                          //indexY, 배열 전체read   line[i][ ] : 1행배열    
       	                    var $line = $('<div></div>').addClass('line');                                                              //jquery 변수선언 var $name, 동적으로 추가된 div태그에 class line 속성 부여(css)
       	                    $.each(line, function (indexX, seat) {                                                                      //indexX, 1행배열 read    seat[ ][j] : i 행 j열 
       	                        var $output = $('<div></div>', {
       	                            class: 'seats',
       	                            'data-x': indexX,                                                                                   //data-x 라는 이름의 속성을 추가해줌 (my name)
       	                            'data-y': indexY,
       	                            'seat_st': seat,
       	                            'ticket_cnt' : ticket_cnt,
       								'event_st' : event_st
       	                        }).appendTo($line);
       	                        if (seat == 1) {
       	                            $output.addClass('enable').on('click', onClickSeat) //onClickSeat : 메소드 ()없이 사용함
       	                        } else if (seat == 2) {
       	                            $output.addClass('disable').on('click', onCancleSeat)//캔슬메소드 
       	                        }else if (seat == 3) {
       	                            $output.addClass('sold')
       	                        }
       	                    });
       	                    $line.appendTo('#step-2');
       	                });
   	            	});
       	    	
       	    		 /* 추가된 class="new" 의 태그 개수 카운트 후 드롭박스 옵션 추가 */
                
                }
       	    	
       	    });   
    }
    		
    
            
            //getJSON (json형태의 데이터 요청), url /seats로부터 받은 매개변수 data를 통해 배열정보 받아옴
            $.getJSON('/seats', { dummy: new Date().getTime() }, function (data) {
                $.each(data, function (indexY, line) {                                                                          //indexY, 배열 전체read   line[i][ ] : 1행배열    
                    var $line = $('<div></div>').addClass('line');                                                              //jquery 변수선언 var $name, 동적으로 추가된 div태그에 class line 속성 부여(css)
                    $.each(line, function (indexX, seat) {                                                                      //indexX, 1행배열 read    seat[ ][j] : i 행 j열 
                        var $output = $('<div></div>', {
                            class: 'seats',
                            'data-x': indexX,                                                                                   //data-x 라는 이름의 속성을 추가해줌 (my name)
                            'data-y': indexY,
                            'seat_st': seat,
                            'ticket_cnt' : ticket_cnt,
                            'event_st' : event_st
                        }).appendTo($line);
                        if (seat == 1) {
                            $output.addClass('enable').on('click', onClickSeat) //onClickSeat : 메소드 ()없이 사용함
                        } else if (seat == 2) {
                            $output.addClass('disable').on('click', onCancleSeat)//캔슬메소드 
                        } else if (seat == 3) {
	                            $output.addClass('sold')
	                        }
                    });
                    $line.appendTo('#step-2');
                });
            });
            
            
            
            
            
            $('#smartwizard').smartWizard({
			    autoAdjustHeight: false, //자동 높이 설정
			    backButtonSupport: true, //true일 경우 뒤로가기 버튼 시 이전 스텝으로 돌아간다.
			    keyNavigation: false, //true 일 경우 키보드 <-,-> keyup이 이벤트로 스텝별로 이동한다.
			    toolbarSettings: {
			        showNextButton: false,
			        showPreviousButton: false,
			    }
			});
			
		  	var $step1_img_off = $('<img src="../images/reservation/step1_off.gif">')
		  	var $step1_img_on = $('<img src="../images/reservation/step1_on.gif">')
		  	
		  	var $step2_img_off = $('<img src="../images/reservation/step2_off.gif"> ')
		  	var $step2_img_on = $('<img src="../images/reservation/step2_on.gif"> ')
		  	
		  	var $step3_img_off = $('<img src="../images/reservation/step3_off.gif"> ')
		  	var $step3_img_on = $('<img src="../images/reservation/step3_on.gif"> ')
		  	
		  	var $step4_img_off = $('<img src="../images/reservation/step4_off.gif"> ')
		  	var $step4_img_on = $('<img src="../images/reservation/step4_on.gif"> ')
		  	
		  	var $step5_img_off = $('<img src="../images/reservation/step5_off.gif"> ')
		  	var $step5_img_on = $('<img src="../images/reservation/step5_on.gif"> ')
			
			var $submit
			
			
			$('#smartwizard').smartWizard("fixHeight");
		  	
		  	
		  	
		  	//이전버튼
			$("#prev-sw-btn").on("click", function() {
				// Navigate previous
			    $('#smartwizard').smartWizard("prev");
			    $(".nav-link img").remove();
		    	if($("#step1").hasClass("active") == true) {
					$step1_img_on.appendTo('#step1');
				} else {
					$step1_img_off.appendTo('#step1');
				}
				if($("#step2").hasClass("active") == true) {
					$step2_img_on.appendTo('#step2');
				} else {
					$step2_img_off.appendTo('#step2');
				}
				if($("#step3").hasClass("active") == true) {
					$step3_img_on.appendTo('#step3');
				} else {
					$step3_img_off.appendTo('#step3');
				}
				if($("#step4").hasClass("active") == true) {
					$step4_img_on.appendTo('#step4');
				} else {
					$step4_img_off.appendTo('#step4');
				} 
				if($("#step5").hasClass("active") == true) {
					$step5_img_on.appendTo('#step5');
				} else {
					$step5_img_off.appendTo('#step5');
				} 
			});
			//다음버튼
			$("#next-sw-btn").on("click", function() {
				// Navigate previous
			    $('#smartwizard').smartWizard("next");
			    $(".nav-link img").remove();
    	    	if($("#step1").hasClass("active") == true) {
					$step1_img_on.appendTo('#step1');
				} else {
					$step1_img_off.appendTo('#step1');
				}
				if($("#step2").hasClass("active") == true) {
					$step2_img_on.appendTo('#step2');
				} else {
					$step2_img_off.appendTo('#step2');
				}
				if($("#step3").hasClass("active") == true) {
					$step3_img_on.appendTo('#step3');
				} else {
					$step3_img_off.appendTo('#step3');
				}
				if($("#step4").hasClass("active") == true) {
					$step4_img_on.appendTo('#step4');
				} else {
					$step4_img_off.appendTo('#step4');
				} 
				if($("#step5").hasClass("active") == true) {
					$step5_img_on.appendTo('#step5');
					//					
					$('#next-sw-btn').on('click', onClickSubmit) 
					
				} else {
					$step5_img_off.appendTo('#step5');
				} 
			});
            
           
});
//select로 선택시 이벤트  일반가 or 할인가 개수 선택시 금액 계산
function changeFn(){
	var ticket_cnt  = document.getElementById("ticket_cnt");
	var value = (ticket_cnt.options[ticket_cnt.selectedIndex].value);
	var price = document.getElementById("showPrice");
	p_value = price.value;
	
	$price_sum = $("<div>" +  p_value * value + "</div>" );

	$price_sum.appendTo("#price_sum");
	$('#ticket_price_sum').val(p_value * value);
};



//onClickSubmit

function onClickSubmit() {

	BootPay.request({
	      price: '100', //실제 결제되는 가격

	      // 관리자로그인 -> 결제설치 -> 인증키 및 보안 -> WEB Application ID
	      application_id: "59a4d323396fa607cbe75de4",
	 
	      name: '블링블링 마스카라', //결제창에서 보여질 이름
	      pg: 'nicepay',
	      method: 'card', //결제수단, 입력하지 않으면 결제수단 선택부터 화면이 시작합니다.
	      show_agree_window: 0, // 부트페이 정보 동의 창 보이기 여부
	      items: [
	          {
	              item_name: '나는 아이템', //상품명
	              qty: 1, //수량
	              unique: '123', //해당 상품을 구분짓는 primary key
	              price: 1000, //상품 단가
	          }
	      ],
	      order_id: '고유order_id_1234', //고유 주문번호로, 생성하신 값을 보내주셔야 합니다.
	  }).error(function (data) {
	      //결제 진행시 에러가 발생하면 수행됩니다.
	      console.log(data);
	  }).cancel(function (data) {
	      //결제가 취소되면 수행됩니다.
	      console.log(data);
	  }).close(function (data) {
	      // 결제창이 닫힐때 수행됩니다. (성공,실패,취소에 상관없이 모두 수행됨)
	      console.log(data);
	  }).done(function (data) {
	      //결제가 정상적으로 완료되면 수행됩니다
	      //비즈니스 로직을 수행하기 전에 결제 유효성 검증을 하시길 추천합니다.
		  var formData = $('#reservation').serialize();
		  $.ajax({
	    		url: "/pay", //cross-domain error가 발생하지 않도록 주의해주세요
	    		type: 'post',
	    		data: formData,
	    		success: function(data){
	    			  alert("결제 성공")

	    			console.log(data);
	    		},
	    		error:function(request, status, error){
	    		      console.log(data);
	    		}


		  });
		  setTimeout(function(){
			  window.open("", '_self').window.close();
		  }, 3000);


	      console.log(data);
	  });
}
function calendarInit() {
    var date = new Date();
    var utc = date.getTime() + (date.getTimezoneOffset() * 60 * 1000);
    var kstGap = 9 * 60 * 60 * 1000;
    var today = new Date(utc + kstGap);
    var thisMonth = new Date(today.getFullYear(), today.getMonth(), today.getDate());
    renderCalender(thisMonth);
    function renderCalender(thisMonth) {
        currentYear = thisMonth.getFullYear();
        currentMonth = thisMonth.getMonth();
        currentDate = thisMonth.getDate();
        var startDay = new Date(currentYear, currentMonth, 0);
        var prevDate = startDay.getDate();
        var prevDay = startDay.getDay();
        var endDay = new Date(currentYear, currentMonth + 1, 0);
        var nextDate = endDay.getDate();
        var nextDay = endDay.getDay();
        $('.year-month').text(currentYear + '.' + (currentMonth + 1));
        calendar = document.querySelector('.dates')
        calendar.innerHTML = '';
        
        var std = $('.start_date').attr('value');
        var edd = $('.end_date').attr('value');
        
        var sy = std.substring(0,std.indexOf('-'));
        var sm = std.substring(std.indexOf('-') + 1,std.indexOf('-',std.indexOf('-')+1));
        var sd = std.substring(std.lastIndexOf('-')+1);
        var ey = edd.substring(0,edd.indexOf('-'));
        var em = edd.substring(edd.indexOf('-') + 1,edd.indexOf('-',edd.indexOf('-')+1));
        var ed = edd.substring(edd.lastIndexOf('-')+1);
        var start_date = new Date(sy, sm, sd);
        var end_date = new Date(ey,em,ed);
        for (var i = prevDate - prevDay + 1; i <= prevDate; i++) {
        	var date = new Date(currentYear,currentMonth,i);
        	if( start_date <= date && end_date >= date){
                calendar.innerHTML = calendar.innerHTML + '<div class="day current enable" date-data=' + currentYear + '-' + (currentMonth) + '-' + i + '>' + i + '</div>'
            }else{
                calendar.innerHTML = calendar.innerHTML + '<div class="day current disable">' + i + '</div>'
            }
        }
        for (var i = 1; i <= nextDate; i++) {
        	var date = new Date(currentYear,currentMonth + 1,i);
            if( start_date <= date && end_date >= date){
                calendar.innerHTML = calendar.innerHTML + '<div class="day current enable" date-data=' + currentYear + '-' + (currentMonth + 1) + '-' + i + '>' + i + '</div>'
            }else{
                calendar.innerHTML = calendar.innerHTML + '<div class="day current disable">' + i + '</div>'
            }
        }
        for (var i = 1; i <= (7 - nextDay == 7 ? 0 : 7 - nextDay); i++) {
        	var date = new Date(currentYear,currentMonth + 2,i);
        	if( start_date <= date && end_date >= date){
                calendar.innerHTML = calendar.innerHTML + '<div class="day current enable" date-data=' + currentYear + '-' + (currentMonth + 2) + '-' + i + '>' + i + '</div>'
            }else{
                calendar.innerHTML = calendar.innerHTML + '<div class="day current disable">' + i + '</div>'
            }        
        }
    }
    $('div').on('click', function (e) {
    	var showday = $(e.target).attr('date-data');
    	
    	if( $(e.target).attr('date-data') != null){
    		$('.selected').removeClass('selected').addClass('enable');
    		$(e.target).removeClass('enable');
    		$(e.target).addClass('selected');

    	     $('.reserve').attr('value', showday);
             $('.choice_date').html(showday);
             $("#ticket_date").val(showday);
    	}

    });
    $('.go-prev').on('click', function () {
        thisMonth = new Date(currentYear, currentMonth - 1, 1);
        renderCalender(thisMonth);
        $('.showday').removeClass('showday');
    });
    $('.go-next').on('click', function () {
        thisMonth = new Date(currentYear, currentMonth + 1, 1);
        renderCalender(thisMonth);
        $('.showday').removeClass('showday');
    });
}