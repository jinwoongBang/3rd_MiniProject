<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<c:import url="/common/main_logout.jsp" />
<link href="<c:url value="/css/mypage_admin.css"/>" rel="stylesheet" type="text/css">
<link href="<c:url value="/css/footer.css"/>" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.2.1/css/bulma.min.css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<style>
html {
	background-color: white;
}

table th, table td {
	text-align: center;
	vertical-align: middle;
}
</style>
</head>
<body>
	<div class='columns' style="height: 282px;">
		<div class='container myprofile'>
			<div class='modal' id='edit-preferences-modal'>
				<div class='modal-background'></div>
				<div class='modal-card'>
					<header class='modal-card-head'>
					<p class='modal-card-title'>기업 회원 정보 수정</p>
					<button class='delete'></button>
					</header>
					<section class='modal-card-body'> <label class='label'>Name</label>
					<p class='control'>
						<input class='input' placeholder='Text input' type='text'>
					</p>
					<label class='label'>Password</label>
					<p class='control has-icon has-icon-right'>
						<input class='input' placeholder='Text input' type='password'
							value='pmillerk'>

					</p>
					<label class='label'>Password Correct</label>
					<p class='control has-icon has-icon-right'>
						<input class='input' placeholder='Email input' type='password'
							value='hello@'> <i class='fa fa-warning'></i> <span
							class='help is-danger'>This Password is invalid</span>
					</p>
					<div class='content'>
						<h1>Optional Information</h1>
					</div>
					<label class='label'>기업명</label>
					<p class='control has-icon has-icon-right'>
						<input class='input' placeholder='Text input' type='text'
							value='Greater Washington Publishing'>
					</p>
					<label class='label'>사업자 등록 번호</label>
					<p class='control has-icon has-icon-right'>
						<input class='input' placeholder='Text input' type='text'
							value='+1 *** *** 0535'>
					</p>
					<label class='label'>카카오톡 플러스 친구 URL</label>
					<p class='control has-icon has-icon-right'>
						<input class='input' placeholder='Text input' type='text'
							value='George Mason University'>
					</p>
					</section>
					<footer class='modal-card-foot'> <a
						class='button is-primary modal-save'>수정</a> <a
						class='button modal-cancel'>취소</a> </footer>
				</div>
			</div>
			<div class='section myprofile-heading'>
				<div class='columns is-mobile is-multiline'>
					<div class='column is-2'>
						<span class='header-icon user-myprofile-image'> <img
							alt='' src='../img/kakao/admin.jpg'
							style="border: 2px solid rgb(6, 133, 135); border-radius: 10%">
						</span>
					</div>
					<div class='column is-4-tablet is-10-mobile name'>
						<p style="margin-left: -52%; margin-top: 14%;">
							<span class='title is-bold' style="color: rgb(17, 47, 65);">관리자
								페이지</span> <br> <a class='button is-primary is-outlined' href='#'
								id='edit-preferences' style="margin: 10% 0"> 관리자 정보 수정 </a> <br>
						</p>
						<!-- <p style="font-size: 30px; margin-left: 14%; color: rgb(79,185,159); font-weight: bold; margin-top: -27%;">등록한 공고 리스트</p> -->
						<p class='tagline'>

							<!-- The users myprofile bio would go here, of course. It could be two lines or more or whatever. We should probably limit the amount of characters to ~500 at most though. -->
						</p>
					</div>
					<div class='column is-2-tablet is-4-mobile has-text-centered'
						style="border-left: 1px solid rgb(255, 255, 255, 0);">
						<p class='stat-val'>3</p>
						<p class='stat-key'>등록 대기</p>
					</div>
					<div class='column is-2-tablet is-4-mobile has-text-centered'>
						<p class='stat-val'>23</p>
						<p class='stat-key'>신고 내역</p>
					</div>
				</div>
			</div>

			<!--어드민페이지 내용-->
			<div class="list-container">
				<div class="title-container">
					<div id="list-title">등록 대기 게시물</div>
					<span id="list-count">총 0건</span>
				</div>
				<form>
					<table id="resume-list">
						<thead>
							<th>작성자</th>
							<th>제목</th>
							<th>작성일자</th>
							<th id="th1">승인</th>
						</thead>
						<tbody>
							<tr>
								<td>박태환</td>
								<td><a href="./board_com_reviewDetail.html">비트캠프
										취업후기입니다.</a></td>
								<td>2018.11.18 (일)</td>
								<td><button id="okay" type="button" class="btn btn-warning">승인</button></td>
							</tr>
							<tr>
								<td>박태환</td>
								<td>비트캠프 취업후기입니다.</td>
								<td>2018.11.18 (일)</td>
								<td><button id="okay" type="button" class="btn btn-warning">승인</button></td>
							</tr>
							<tr>
								<td>박태환</td>
								<td>비트캠프 취업후기입니다.</td>
								<td>2018.11.18 (일)</td>
								<td><button id="okay" type="button" class="btn btn-warning">승인</button></td>
							</tr>
							<tr>
								<td>박태환</td>
								<td>비트캠프 취업후기입니다.</td>
								<td>2018.11.18 (일)</td>
								<td><button id="okay" type="button" class="btn btn-warning">승인</button></td>
							</tr>
							<tr>
								<td>박태환</td>
								<td>비트캠프 취업후기입니다.</td>
								<td>2018.11.18 (일)</td>
								<td><button id="okay" type="button" class="btn btn-warning">승인</button></td>
							</tr>
						</tbody>
					</table>
				</form>
				<!--페이지네이션1-->
				<nav>
				<ul id="pagination1" class="pagination">
					<li class="disabled"><a href="#" aria-label="Previous"><span
							aria-hidden="true">&laquo;</span></a></li>
					<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#" aria-label="Next"> <span
							aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
				</nav>
			</div>
			<hr id="centerhr" class='centerhr'>
			<div class="attach-container">
				<div class="title-container">
					<div id="attach-title">신고 게시물 목록</div>
					<span id="attach-count">총 0건</span>
				</div>
				<form>
					<table id="attach-list">
						<thead>
							<th>작성자</th>
							<th>제목</th>
							<th>작성일자</th>
							<th id="th2">삭제</th>
						</thead>
						<tbody>
							<tr>
								<td>이득재</td>
								<td><a href="./board_com_reviewDetail.html">그린컴퓨터가 짱이야!</a></td>
								<td>2018.11.18 (일)</td>
								<td><button id="del" type="button" class="btn btn-danger">삭제</button></td>
							</tr>
							<tr>
								<td>이득재</td>
								<td>그린컴퓨터가 짱이야!</td>
								<td>2018.11.18 (일)</td>
								<td><button id="del" type="button" class="btn btn-danger">삭제</button></td>
							</tr>
							<tr>
								<td>이득재</td>
								<td>그린컴퓨터가 짱이야!</td>
								<td>2018.11.18 (일)</td>
								<td><button id="del" type="button" class="btn btn-danger">삭제</button></td>
							</tr>
							<tr>
								<td>이득재</td>
								<td>그린컴퓨터가 짱이야!</td>
								<td>2018.11.18 (일)</td>
								<td><button id="del" type="button" class="btn btn-danger">삭제</button></td>
							</tr>
							<tr>
								<td>이득재</td>
								<td>그린컴퓨터가 짱이야!</td>
								<td>2018.11.18 (일)</td>
								<td><button id="del" type="button" class="btn btn-danger">삭제</button></td>
							</tr>
						</tbody>
					</table>
				</form>
			</div>
		</div>
		<footer class="seungjae">
          <p>&copy; Job Story 2018</p>
        </footer>
	</div>

	<!--페이지네이션2-->
	<nav>
	<ul id="pagination2" class="pagination">
		<li class="disabled"><a href="#" aria-label="Previous"><span
				aria-hidden="true">&laquo;</span></a></li>
		<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
		<li><a href="#">2</a></li>
		<li><a href="#">3</a></li>
		<li><a href="#">4</a></li>
		<li><a href="#">5</a></li>
		<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
		</a></li>
	</ul>
	</nav>

<script>
  $(()  => {
	  $('#edit-preferences').click(function(){
	   $('#edit-preferences-modal').addClass('is-active');
	  });
	  $('.modal-card-head button.delete, .modal-save, .modal-cancel').click(function(){
	    $('#edit-preferences-modal').removeClass('is-active');
	  });
   });

     $(".link").click(function () {
       $(this).addClass('is-active');
       $(this).siblings().removeClass('is-active');
     });

  /* 이력서 등록 폼 이동 */
  $("#resume-btn").click(function () {
     alert("이력서 등록");
     location.href="./resumeWrite.html"
  });

  /* 첨부파일 등록 - 파일 찾기 */
  $("input[name=file]").click(function () {
     var val = $("input[name=file]:checked").val();
     if(val=="file"){
         alert(val);
         $(".attach-input").css("visibility", "visible");
         $(".url-input").css("visibility", "hidden");
     } else if (val=="url") {
         alert(val);
         $(".attach-input").css("visibility", "hidden");
         $(".url-input").css("visibility", "visible");
     }
  });

  /*sweet alert*/
  $("#okay").click(function(){
      swal(
      '승인완료!',
      '취업 후기 게시판에 등록되었습니다!',
      'success'
      )
  });
  $("#del").click(function(){
      swal(
      '삭제완료!',
      '신고 게시물이 삭제되었습니다!',
      'success'
      )
  });
</script>
</body>
</html>