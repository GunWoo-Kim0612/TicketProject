/**
 * 
 */
$(document).ready(function () {
	
	var href = window.location.href;
	var url = new URL(href);
	var urlParams = url.searchParams;
	
	var mode = urlParams.get('mode');
	
	if(mode == '3'){
		$('.view_showPage').removeClass('active');
		$('.reviewOn').addClass('active');
		$('.view_intro').hide();
		$('.view_place').hide();
		$('.view_reserve').hide();
	}else{
		$('.view_place').hide();
		$('.view_review').hide();
		$('.view_reserve').hide();
	}
    
    $('.introOn').on('click', function(e){
    	$('.view_showPage').removeClass('active');
    	$(e.target).addClass('active');
    	$('.view_intro').show();
    	$('.view_place').hide();
    	$('.view_review').hide();
    	$('.view_reserve').hide();
    });
    
    $('.placeOn').on('click', function(e){
    	$('.view_showPage').removeClass('active');
    	$(e.target).addClass('active');
    	$('.view_intro').hide();
    	$('.view_place').show();
    	$('.view_review').hide();
    	$('.view_reserve').hide();
    });
    
    $('.reviewOn').on('click', function(e){
    	$('.view_showPage').removeClass('active');
    	$(e.target).addClass('active');
    	$('.view_intro').hide();
    	$('.view_place').hide();
    	$('.view_review').show();
    	$('.view_reserve').hide();
    });
    
    $('.reserveOn').on('click', function(e){
    	$('.view_showPage').removeClass('active');
    	$(e.target).addClass('active');
    	$('.view_intro').hide();
    	$('.view_place').hide();
    	$('.view_review').hide();
    	$('.view_reserve').show();
    });
    
    $('.seatsIntroOn').on('click', function(e){
    	$('.seatsPage').removeClass('active');
    	$(e.target).addClass('active');
    	$('.seatsIntro').show();
    	$('.seatsPlace').hide();
    });
    
    $('.seatsPlaceOn').on('click', function(e){
    	$('.seatsPage').removeClass('active');
    	$(e.target).addClass('active');
    	$('.seatsIntro').hide();
    	$('.seatsPlace').show();
    });
    
    if($('input[name=id]').attr('value') == ''){
    	$('.mdl').attr('data-bs-toggle','none');
    	$('.mdl').on('click', function(e){
    		alert('로그인을 해주세요!');
    		location.href = 'http://localhost:9999/member/login';
    	});
    }else{
    	$('.mdl').attr('data-bs-toggle','modal');
    }
    
    
    $('.c_goal').hide();
	$('.c_ethical').hide();
    
    $('.greetingOn').on('click', function(e){
    	$('.contentPage').removeClass('active');
    	$(e.target).addClass('active');
    	$('.c_greeting').show();
    	$('.c_goal').hide();
    	$('.c_ethical').hide();
    });
    
    $('.goalOn').on('click', function(e){
    	$('.contentPage').removeClass('active');
    	$(e.target).addClass('active');
    	$('.c_greeting').hide();
    	$('.c_goal').show();
    	$('.c_ethical').hide();
    });
    
    $('.ethicalOn').on('click', function(e){
    	$('.contentPage').removeClass('active');
    	$(e.target).addClass('active');
    	$('.c_greeting').hide();
    	$('.c_goal').hide();
    	$('.c_ethical').show();
    });
    
    
});

