<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

 <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
    <!--부트스트랩-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <link href="../../dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
    <!--폰트 -->
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300" rel="stylesheet">
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.js"
            integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
            crossorigin="anonymous"></script>
   
    <script type="text/javascript" src="/jobstory/resources/edite/js/HuskyEZCreator.js" charset="utf-8"></script>


            

    <title>인터뷰 작성 페이지 </title>

    <script type="text/javascript" src="./js/HuskyEZCreator.js" charset="utf-8"></script>

    <style>
        .all-container, .main-title {
            font-family: 'Noto Sans KR', sans-serif;
            margin-top: 100px;
        }
        .topbar {
        position: absolute;
        top: 0px;
        left: 0px;
        background: rgb(17, 47, 65);
        margin: 0; padding: 0;
        list-style: none;
        position: fixed;
        width: 100%;
        z-index: 3;
        }
        .topbar>li {
          display: inline-block;
        }
        .topbar>li>a {
          display: block;
          text-decoration: none;
          padding: 8px 65px;
          color: white;
          font-size: 26px;
        }
        .topbar>li>a:hover {
          color: rgb(79, 185, 159);
        }

        /*프로필*/  
        .profile {
          position:absolute;
          left:1411px;
          background: white;
          padding: 20px;
          border-radius: 10px 10px 10px 10px;
          box-shadow: 
            0px 2px 10px rgba(0,0,0,0.1), 
            0px 10px 20px rgba(0,0,0,0.2), 
            0px 30px 60px 1px rgba(0,0,0,0.4);
          animation: fadein 1s ease-in-out;
          width: 174px;
          height: 265px;
          text-align: right;
          display: inline-block;
          /* float: right; */
          /* margin-top: -339px; */
          top: 68px;
          position: fixed;
        }
        .profile .head {
          display: block;
          text-align: center;
          line-height: 0.1px;
        }
        .profile .head .userpic {
          border-radius: 100%;
          width: 60%;
          border: 3px solid #ccffdd;
          transition: 0.5s ease-out;
        }
        .profile .head .userpic:hover {
          filter: brightness(60%);
        }
        .profile .head .username {
          color: gray;
        }
        .profile .head .options {
          float: right;
          color: gray;
        }
        .hr {
          border: none;
          height: 5px;
          background: #ccffdd;
        }
        .profile .account-info {
          display: flex;
          justify-content: space-between;
          text-align: center;
          line-height: 0.1px;
        }
        .heart1 {
          color: #B22222;
          font-size: 1.2em
        }
        .heart2 {
          color: blue;
          font-size: 1.2em
        }
        #logout {
          color: rgb(0, 0, 0);
          font-size: 1.2em
        }
        @keyframes fadein {
          from {
            margin-top: -50px;
            opacity: 0;
          }
          to {
            opacity: 1;
          }
        }
        .head  h3{
          margin-top: 3px;
          margin-bottom: -15px;
        }
        .account-info  h4 {
          margin-top: -3px;
          margin-bottom: 8px;
          font-size: 10px;
          font-weight: bold;
        }
        .btn {
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
      .btn-info{
        background-color: rgb(79, 185, 159);
      }

      .btn-info:hover {
        background-color: rgb(6, 133, 135);
      }

      /*sidebar*/
      .sidebar {
          position:absolute;
          left:1411px;
          background: white;
          padding: 20px;
          border-radius: 10px 10px 10px 10px;
          box-shadow: 
            0px 2px 10px rgba(0,0,0,0.1), 
            0px 10px 20px rgba(0,0,0,0.2), 
            0px 30px 60px 1px rgba(0,0,0,0.4);
          animation: fadein 1s ease-out;
          width: 174px;
          height: 188px;
          text-align: right;
          display: inline-block;
          /* float: right; */
          /* margin-top: -55px; */
          top: 365px;
          position: fixed;
        }
        .sidebar .account-info2 {
          display: flex;
          justify-content: space-between;
          text-align: center;
          line-height: 0.1px;
        }
        .sidebar .account-info2 .eachpic {
          filter: grayscale(100);
        }
        .sidebar .account-info2 .eachpic:hover {
          filter: grayscale(0);
        }      
        #menutext {
          text-align: center;
          font-size: 4px;
          margin-top: 10px;
          font-weight: bold;
        }
        .account-info2 a{
          display: block;
          height:40px;
        }
        .account-info2 a img{
          height: auto;
          max-height: 100%;
          width: auto;
        }  










        	#content{
		font-size: 20px;
	}
	#title,#company,#choice, #interview,#interviewcnt{
		border-radius: 20px;
	}






/*sprite with stars*/
#reviewStars-input input:checked ~ label, #reviewStars-input label, #reviewStars-input label:hover, #reviewStars-input label:hover ~ label {
  background: url('http://positivecrash.com/wp-content/uploads/ico-s71a7fdede6.png') no-repeat;
}

#reviewStars-input {
  
  /*fix floating problems*/
  overflow: hidden;
  *zoom: 1;
  /*end of fix floating problems*/
  
  position: relative;
  float: left;
}

#reviewStars-input input {
  filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
  opacity: 0;
  
  width: 43px;
  height: 40px;
  
  position: absolute;
  top: 0;
  z-index: 0;
}

#reviewStars-input input:checked ~ label {
  background-position: 0 -40px;
  height: 40px;
  width: 43px;
}

#reviewStars-input label {
  background-position: 0 0;
  height: 40px;
  width: 43px;
  float: right;
  cursor: pointer;
  margin-right: 10px;
  
  position: relative;
  z-index: 1;
}

#reviewStars-input label:hover, #reviewStars-input label:hover ~ label {
  background-position: 0 -40px;
  height: 40px;
  width: 43px;
}



#content{
		font-size: 20px;
		
	padding-left: 400px;
    padding-top: 120px;

	}


#profile{
	width: 300px;
	height: 200px;
}




      </style>
  </head>  



<body>



    <!--사이드 정보 배너-->
    <div ng-app='app' ng-controller='profile' class='sidebanner2'></div>

    <ul class="topbar">
        <li><a href="#">JOB STORY</a></li>
        <!-- <li id="marketing" style="float: right;"><a href="#"><marquee>광고문의 : 010-8669-8797</marquee></a></li> -->
    </ul>
      <div>    
      <!-- <div ng-app='app' ng-controller='profile' class='sidebanner'></div> -->
      <!-- <div ng-app='app' ng-controller='profile' class='topbanner'></div> -->
      <!-- banner -->
      <div ng-app='app' ng-controller='profile' class='profile'>
          <section class='head'>                  
            <img src="./ironman.jpg" class='userpic' alt="">
            <h3>Park Taehwan</h3>
          </section>
          <hr class='hr'>
          <section class='account-info'>
            <div class='posts'>
              <h4>120</h4>
              <span class='heart1'><span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>
            </span>              
            </div>
            <div class='followers'>
              <h4>1357</h4>
              <span class='heart2'><span class="glyphicon glyphicon-thumbs-down" aria-hidden="true"></span>
            </div>
            <a id="logout"  href="javascript:logout()" style="width: 30px;">
                <h4>LOGOUT</h4>
                <span class="glyphicon glyphicon-log-in" aria-hidden="true">
            </a>          
          </section>
          <div class='following' style="margin-top: 10px;">
            <button type="button" class="btn btn-info">마이 페이지</button>
          </div>        
      </div>

      <!--사이드바-->      
      <div ng-app='app' ng-controller='sidebar' class='sidebar'>
          <section class='account-info2'>
              <div>
                <a href="#">
                  <span class='eachpic'><img src="./side/cal.png" width="80%" style="border-radius: 10%;"></span>            
                </a>                
                <p id="menutext">내 공채달력</p>
              </div>
              <div>                
                <a href="#">
                  <span class='eachpic'><img src="./side/calcul.jpg" width="80%" style="border-radius: 10%;"></span>            
                </a>
                <p id="menutext">연봉 계산기</p> 
                <p id="menutext">퇴직금 계산기</p> 
              </div>               
            </section>
            <br>       
            <section class='account-info2'>
              <div>                
                <a href="#">
                  <span class='eachpic'><img src="./side/리뷰.jpg" width="80%" style="border-radius: 10%;"></span>            
                </a>
                <p id="menutext">합격 후기</p>             
              </div>
              <div>                
                <a href="#">
                  <span class='eachpic'><img src="./side/자소서.png" width="80%" style="border-radius: 10%;"></span>            
                </a>
                <p id="menutext">자소서 첨삭</p> 
              </div>                               
          </section>        
      </div>
    </div>
    <!--팀원들 적용 에어리어-->

  <div id="content">
        <h1>글쓰기</h1>
        <div id="board-write">
          <input type="hidden" name="writer">
        </div>
        <span id="search-img"> 
        </span>
        <div>
          <span>제목:</span> <input type="text" id="title" name="title" /><br>
          <span>회사명:</span> <input type="text" id="company" name="company"/>
        </div>
        
        <div>
          <span>지원분야:</span> <input type="text" id="choice" name="title" />
        
        </div>
        
        <div>
          <span>면접 난이도</span> <br>
          
  <div id="reviewStars-input">
      <input id="star-2" type="radio" name="reviewStars"/>
      <label title="regular" for="star-2"></label>
    
      <input id="star-1" type="radio" name="reviewStars"/>
      <label title="poor" for="star-1"></label>
    
      <input id="star-0" type="radio" name="reviewStars"/>
      <label title="bad" for="star-0"></label>
    </div>
  
  
  
        </div>
  
        <div>
        
          
          
        </div>
        <br>

<!-- 이미지 변경 폼? -->
        <div class="file-attach">
            <br><span>메인 이미지</span> <input type="file" id="file-attach" name="attach"
            multiple="multiple" />
  </div>
  


      <div class="col-half">
          <div class="input-icon" id="resume-photo-container">
              <img src='<c:url value="/img/interviewdefault.jpg" />' id="profile"/>
          </div>
          
     
      </div>
  








<textarea name="smarteditor" id="smarteditor" rows="10" cols="100" style="width:766px; height:412px;"> </textarea> 

<input type="button" id="savebutton" value="등록" />












<script>
        /* 스크랩 기능 */
        $(".list-container > table > tbody > tr > td:nth-child(1) > img").click(function () {
            var scrapFlag = $(this).attr("flag-data");
            if(scrapFlag == "true"){
                alert("취소");
                $(this).attr("src", "./img/noun_Star_2044877-02.png")
                       .attr("flag-data", "false");
            } else {
                alert("스크랩");
                $(this).attr("src", "./img/noun_Star_2044877-03.png")
                       .attr("flag-data", "true");
            }
        })
        
        /* 스크롤 이동 */
        // $("#goTop").click(function (e) {
        //     e.preventDefault();
        //     $("html, body").animate({scrollTop:0}, 400);
        // });
        // $("#goBottom").click(function (e) {
        //     e.preventDefault();
        //     var scrollPosition = $(".pagination").offset().top;
        //     $("html, body").animate({scrollTop:scrollPosition}, 400);
        // });
    </script>
    
    
    
    
    
    <!-- 스마트에디터 -->
    <script>
    $(document).ready(function() { var oEditors = []; // 개발되어 있는 소스에 맞추느라, 전역변수로 사용하였지만, 지역변수로 사용해도 전혀 무관 함. 
    // Editor Setting
    nhn.husky.EZCreator.createInIFrame({ oAppRef : oEditors,
    	// 전역변수 명과 동일해야 함. 
    	elPlaceHolder : "smarteditor", // 에디터가 그려질 textarea ID 값과 동일 해야 함. 
    	sSkinURI : "/jobstory/resources/edite/SmartEditor2Skin.html", // Editor HTML
    	fCreator : "createSEditor2", // SE2BasicCreator.js 메소드명이니 변경 금지 X 
    	htParams : { // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
    	bUseToolbar : true, // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
    	bUseVerticalResizer : true, // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음) 
    	bUseModeChanger : true,
    	} 
    }); 
    // 전송버튼 클릭이벤트
    $("#savebutton").click(function(){ //if(confirm("저장하시겠습니까?")) { // id가 smarteditor인 textarea에 에디터에서 대입
    oEditors.getById["smarteditor"].exec("UPDATE_CONTENTS_FIELD", []); 
    // 이부분에 에디터 validation 검증
    if(validation()) { $("#frm").submit();
    } //} 
    }) 
    }); 
    // 필수값 Check 
    function validation(){ var contents = $.trim(oEditors[0].getContents());
    if(contents === '<p>&bnsp;</p>' || contents === ''){ 
    	// 기본적으로 아무것도 입력하지 않아도 값이 입력되어 있음.
    	alert("내용을 입력하세요."); oEditors.getById['smarteditor'].exec('FOCUS'); 
    	return false;
    	} 
    return true; 
    }
    </script>

    
    
    
    <!-- 이미지 변경 스크립트 -->
    
    <script>

function readURL(input) {
              if(input.files && input.files[0]) {
                 var reader = new FileReader();
                 reader.onload = function (e) {
                    $("#profile").attr("src", e.target.result);
                 }
                 console.log($("#profile").attr("src"))
                 reader.readAsDataURL(input.files[0]);
              }
           };
           $("input[type='file']").change(function () {
              readURL(this);
           })
</script>
    
    
    
    
    
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
    <script src="../../assets/js/vendor/holder.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>