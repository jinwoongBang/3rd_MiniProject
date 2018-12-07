<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/common/mainLogout.jsp" />
<link href="<c:url value="/css/search.css"/>" rel="stylesheet"
	type="text/css">
<link href="<c:url value="/css/mainbanner.css"/>" rel="stylesheet"
	type="text/css">
<link href="<c:url value="/css/footer.css"/>" rel="stylesheet"
	type="text/css">
<link href="<c:url value="/css/company_detail_star.css"/>"
	rel="stylesheet" type="text/css">
<!-- <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> -->
<script src="<c:url value="/js/sweetalert2.all.min.js"/>"></script>
<link rel="stylesheet"
	href="https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css">
</script>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+SC"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
<script src="<c:url value="/js/jquery.flipTimer.js" />"></script>
<link rel="stylesheet" href="<c:url value="/css/flipTimer.css" />">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script
	src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=bf84638a5cf91c45cc3f86b96939daf1&libraries=services"></script>

<style>
#companydetailbtn1, #companydetailbtn2, #companydetailbtn3,	#companydetailbtn4 {
	display: inline-block;
    padding: 6px 37px;
    margin-bottom: 0;
    font-size: 12px;
    font-weight: 400;
    line-height: 1.428571;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-image: none;
    border: 1px solid transparent;
    border-radius: 4px;
}

/* #companydetailbtn1, #companydetailbtn2, #companydetailbtn3:hover {
	color: white;
}

#companydetailbtn4 {
	background-color: rgb(17, 47, 65);
	color: white;
}

#companydetailbtn4:hover {
	background-color: black;
	color: white;
} */
/* .swal2-popup .swal2-title {
    font-size: 3em;
}  
.swal2-popup .swal2-content {
    font-size: 2.125em;
}  
.swal2-popup .swal2-styled.swal2-confirm {
    font-size: 15px;
    height: 45px;
    width: 6em;
}
.swal2-popup .swal2-footer {
    justify-content: center;
    margin: 1.25em 0 0;
    padding: 1em 0 0;
    border-top: 1px solid #eee;
    color: #545454;
    font-size: 1.5em;
}
.swal2-footer a:hover {
    text-decoration: none;
}
.swal2-popup {
    display: none;
    position: relative;
    flex-direction: column;
    justify-content: center;
    width: 32em;
    max-width: 100%;
    padding: 1.25em;
    border-radius: 5.3125em;
    background: #f9f9f9;
    font-family: inherit;
    font-size: 1.1rem;
    box-sizing: border-box;
}

.lead {
    font-size: 20px;
    margin-left: 10px;
}


.swal2-popup {
    display: none;
    position: relative;
    flex-direction: column;
    justify-content: center;
    width: 45em;
    max-width: 100%;
    padding: 4.25em;
    border-radius: 5.3125em;
    background: #f9f9f9;
    font-family: inherit;
    font-size: 1rem;
    box-sizing: border-box;
}
.swal2-popup .swal2-styled.swal2-cancel {
    justify-content: center;
    margin: 1.25em 0 0;
    padding: 1em 0 0;
    font-size: 1.5em;
} */
.swal2-popup, .swal2-modal, .swal2-show {
    display: flex;
    width: 370px;
    height: 260px;
    font-size: 12px;	
}

.container .jumbotron, .container-fluid .jumbotron {
	padding-right: 27px;
	padding-left: 60px;
	padding-top: 18px;
	margin-top: 78px;
}

#company-average {
	font-size: 25px;
	font-style: italic;
	margin-left: 10px;
	margin-bottom: -15px;
}

.jumbotron h1 {
	font-size: 63px;
	font-weight: 900;
	margin-top: 23px;
	margin-bottom: 20px;
}

.jumbotron .lead {
	margin-left: 10px;
}

.flexslider img {
	float: right;
	width: 300px;
	height: 300px;
	margin-top: 15px;
}

.jumbotron p {
	margin-bottom: 25px;
	font-size: 21px;
	font-weight: 600;
}

.bxslider img {
	width: 300px;
	height: 300px;
	float: right;
	margin-top: 3px;
}

.bx-wrapper {
	-moz-box-shadow: 0 0 5px #ccc;
	-webkit-box-shadow: 0 0 5px #ccc;
	box-shadow: 0 0 5px #ccc;
	border: 5px solid #fff;
	background: #fff;
	max-width: 300px;
	margin-top: -12px;
}
.row {
    display: flex;
    margin-left: -5px;
    margin-right: 1%;
}
.companymap {
    border: 3px groove;
    width: 300px;
    height: 225px;
    margin-top: 6%;
}
.companymap .addrmap {
	width: 293px;
    height: 195px;
}
.companymap .addrmap img {
	width: 293px;
    height: 195px;

}

.companymap #addrtext {
	font-size: 12px;
	overflow: hidden;
	margin: 5px;
}

.seungjae {
    position: absolute;
    bottom: -79px;
    left: 23%;
    width: 30%;
    height: 10;
    background: #fff;
    text-align: right;
}
.flipTimer {
    color: #FFF;
    font-family: "Helvetica Neue", Helvetica, sans-serif;
    font-size: 29px;
    font-weight: bold;
    line-height: 28px;
    height: 30px;
    /* margin-top: 4%; */
    bottom: 48%;
    left: 250px;
    width: 630px;
    height: 30px;
    border-radius: 30px;
}
.topbar_park {
    position: absolute;
    top: 0px;
    left: 0px;
    background: rgb(17, 47, 65);
    margin: 0;
    padding: 0;
    list-style: none;
    position: fixed;
    width: 100%;
    z-index: 999;
}
</style>
</head>
<body>
	<div class="container">
		<!-- Jumbotron -->
		<div class="jumbotron">
			<div class="home__slider"
				style="width: 300px; height: 300px; float: right;">
				<div class="bxslider">
					<div>
						<img src="../img/kakao/bit.jpg" alt="그림1">
					</div>
					<div>
						<img src="../img/kakao/bit2.jpg" alt="그림2">
					</div>
					<div>
						<img src="../img/kakao/bit3.jpg" alt="그림3">
					</div>
				</div>
			</div>

			<h3 id="company-average">
				기업 평점 :
				<div class="ratingpark" data-vote="0">
					<div class="star hidden">
						<span class="full" data-value="0"></span> <span class="half"
							data-value="0"></span>
					</div>
					<div class="star">
						<span class="full" data-value="1"></span> <span class="half"
							data-value="0.5"></span> <span class="selected"></span>
					</div>
					<div class="star">
						<span class="full" data-value="2"></span> <span class="half"
							data-value="1.5"></span> <span class="selected"></span>
					</div>
					<div class="star">
						<span class="full" data-value="3"></span> <span class="half"
							data-value="2.5"></span> <span class="selected"></span>
					</div>
					<div class="star">
						<span class="full" data-value="4"></span> <span class="half"
							data-value="3.5"></span> <span class="selected"></span>
					</div>
					<div class="star">
						<span class="full" data-value="5"></span> <span class="half"
							data-value="4.5"></span> <span class="selected"></span>
					</div>
				</div>
				<h1>비트캠프 아카데미</h1>
				<p class="lead">학원생 출결 관리, 교보재 관리, 기타 사무업무</p>
				<br>
				<p>
					<a id="companydetailbtn1" class="btn btn-lg btn-primary" href="#"
						role="button">입사지원</a> <a id="companydetailbtn2"
						class="btn btn-lg btn-primary" href="#" role="button">1:1 채팅</a> <a
						id="companydetailbtn3" class="btn btn-lg btn-primary"
						onclick="popupOpen()" role="button">네비게이션</a> <a
						id="companydetailbtn3" class="btn btn-lg btn-primary"
						href="<c:url value="/main/main_logout_search.do"/>" role="button">다른
						공고 보기</a>
					<!--타이머 적용-->
				</p>
				<div class="flipTimer" style="text-align: center;">
					<span id="timertext">남은 시간 :</span>
					<div class="days"></div>
					<span id="timertext">일</span>
					<div class="hours"></div>
					<span id="timertext">시</span>
					<div class="minutes"></div>
					<span id="timertext">분</span>
					<div class="seconds"></div>
					<span id="timertext">초</span>
				</div>
		</div>

		<!-- Example row of columns -->
		<div class="row">
			<div class="col-lg-4">
				<h2 class="text-danger">담당업무</h2>
				<br>
				<!-- <p class="text-danger">모집부문 및 자격요건</p> -->
				<p>보험금 지급심사(서면심사)</p>
				<p>청구보험금 심사 및 적정 보험금 산정, 지급</p>
				<br>
				<p>
					<a class="btn btn-primary" href="#" role="button">더보기 &raquo;</a>
				</p>
			</div>
			<div class="col-lg-4">
				<h2 class="text-danger">지원자격</h2>
				<br>
				<p>신입</p>
				<p>대학졸업(2,3년) 이상</p>
				<br>
				<p>
					<a class="btn btn-primary" href="#" role="button">더보기 &raquo;</a>
				</p>
			</div>
			<div class="col-lg-4">
				<h2 class="text-danger">근무조건</h2>
				<br>
				<p>서울전체</p>
				<p>정규직(수습기간)-3개월</p>
				<p>연봉 회사내규에 따름</p>
				<p>주 5일(월~금)</p>
				<p>사원, 주임, 대리</p>
				<br>
				<p>
					<a class="btn btn-primary" href="#" role="button">더보기 &raquo;</a>
				</p>
			</div>
			<div class="col-lg-4">
				<h2 class="text-danger">사업장 주소</h2>
				<div class="companymap">
					<div class="addrmap">
						<div id="map" style="width: 293px; height: 195px;"></div>
					</div>
					<span id="addrtext">서울시 강남구 논현동 99-1</span>
				</div>
			</div>
		</div>
		<footer class="seungjae">
			<p>&copy; Job Story 2018</p>
		</footer>
		<script>
		$(document).ready(function() {
		    $('.flipTimer').flipTimer({ 
		    direction: 'down', 
		    // 날짜, 시간
		    date: 'December 26 2018 18:00:00', 
		    callback: function() { 
		    	swal({
		    		  type: 'error',
		    		  title: '채용 종료',
		    		  text: '공고가 마감되었습니다.',
		    		  footer: '<a href="<c:url value="/main/main_logout_search.do"/>">다른 공고 보기</a>'
		    		})  	
		   	 }
		   });
		});
	
	  $("#companydetailbtn1").click(function(){
		  swal({
			  title: '이 기업에 지원합니다.',
			  text: "이력서 꼼꼼히 작성하셨나요?",
			  type: 'warning',
			  showCancelButton: true,
			  confirmButtonColor: '#3085d6',
			  cancelButtonColor: '#d33',
			  confirmButtonText: '예!'
			}).then((result) => {
			  if (result.value) {
			    swal(
			      '신청 완료!',
			      '성공적인 취업을 기원합니다.',
			      'success'
			    )
			  }
			})
	  });
	</script>

		<!-- 별 -->
		<script>
	var starClicked = false;

	$(function() {

	  $('.star').click(function() {

	    $(this).children('.selected').addClass('is-animated');
	    $(this).children('.selected').addClass('pulse');

	    var target = this;

	    setTimeout(function() {
	      $(target).children('.selected').removeClass('is-animated');
	      $(target).children('.selected').removeClass('pulse');
	    }, 1000);

	    starClicked = true;
	  })

	  $('.half').click(function() {
	    if (starClicked == true) {
	      setHalfStarState(this)
	    }
	    $(this).closest('.ratingpark').find('.js-score').text($(this).data('value'));

	    $(this).closest('.ratingpark').data('vote', $(this).data('value'));
	    calculateAverage()
	    console.log(parseInt($(this).data('value')));

	  })

	  $('.full').click(function() {
	    if (starClicked == true) {
	      setFullStarState(this)
	    }
	    $(this).closest('.ratingpark').find('.js-score').text($(this).data('value'));

	    $(this).find('js-average').text(parseInt($(this).data('value')));

	    $(this).closest('.ratingpark').data('vote', $(this).data('value'));
	    calculateAverage()

	    console.log(parseInt($(this).data('value')));
	  })

	  $('.half').hover(function() {
	    if (starClicked == false) {
	      setHalfStarState(this)
	    }

	  })

	  $('.full').hover(function() {
	    if (starClicked == false) {
	      setFullStarState(this)
	    }
	  })

	})

	function updateStarState(target) {
	  $(target).parent().prevAll().addClass('animate');
	  $(target).parent().prevAll().children().addClass('star-colour');

	  $(target).parent().nextAll().removeClass('animate');
	  $(target).parent().nextAll().children().removeClass('star-colour');
	}

	function setHalfStarState(target) {
	  $(target).addClass('star-colour');
	  $(target).siblings('.full').removeClass('star-colour');
	  updateStarState(target)
	}

	function setFullStarState(target) {
	  $(target).addClass('star-colour');
	  $(target).parent().addClass('animate');
	  $(target).siblings('.half').addClass('star-colour');

	  updateStarState(target)
	}

	function calculateAverage() {
	  var average = 0

	  $('.ratingpark').each(function() {
	    average += $(this).data('vote')
	  })

	  $('.js-average').text((average/ $('.ratingpark').length).toFixed(1))
	}
	
	</script>
		<script> 
 
$(document).ready(function(){ 
 
    var main = $('.bxslider').bxSlider({ 
 
    mode: 'fade', 
 
    auto: true, //자동으로 슬라이드 
 
    controls : true,    //좌우 화살표    
 
    autoControls: true, //stop,play 
 
    pager:true, //페이징 
 
    pause: 3000, 
 
    autoDelay: 0,   
 
    slideWidth: 800, 
 
    speed: 500, 
 
    stopAutoOnclick:true
 
}); 
 
    
 
$(".bx-stop").click(function(){ // 중지버튼 눌렀을때 
 
    main.stopAuto(); 
 
    $(".bx-stop").hide(); 
 
    $(".bx-start").show(); 
 
    return false; 
 
}); 
 
 
 
$(".bx-start").click(function(){    //시작버튼 눌렀을때 
 
    main.startAuto(); 
 
    $(".bx-start").hide(); 
 
    $(".bx-stop").show(); 
 
    return false; 
 
}); 
 
 
 
  $(".bx-start").hide();    //onload시 시작버튼 숨김. 
 
});  

// 지도 api
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new daum.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('서울시 강남구 논현동 99-1', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === daum.maps.services.Status.OK) {

        var coords = new daum.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new daum.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new daum.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">비트캠프</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
		
});   

function popupOpen(){
	var popupX = (window.screen.width / 2) - (1400 / 2);
	var popupY= (window.screen.height /2) - (700 / 2);	
	window.open('http://map.daum.net/?sName=이수역&eName=서울시 강남구 논현동 99-1', '지원현황', 'status=no, height=700, width=1400, left='+ popupX + ', top='+ popupY + ', screenX='+ popupX + ', screenY= '+ popupY);
}
</script>
</body>
</html>