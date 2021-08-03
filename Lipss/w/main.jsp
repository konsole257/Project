<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- config // -->
	<%@ include file="/w/inCom/config.jsp" %>
	<!-- // config -->

	<link rel="stylesheet" type="text/css" href="/w/pjtCom/css/main.css" />
</head>

<body class="main">
	<!-- header // -->
	<%@ include file="/w/inCom/header.jsp" %>
	<!-- // header -->

	<!-- wrap -->
	<main id="wrap">
		<div id="contents">
			<div class="main_area">

				<!-- 수정 : 2018.05.31 // -->
				<div class="img_list">
					<div class="img show">
						<img src="/w/pjtCom/images/temp/img_main_1816x988.jpg" alt="">
						<a href="#" class="btn_goods">상세보기</a>
					</div>
					<div class="img">
						<img src="/w/pjtCom/images/temp/img_main_1816x988_2.jpg" alt="">
						<a href="#" class="btn_goods">상세보기</a>
					</div>
					<div class="img">
						<img src="/w/pjtCom/images/temp/img_main_1816x988_4.jpg" alt="">
						<a href="#" class="btn_goods">상세보기</a>
					</div>
				</div>
				<!-- // 수정 : 2018.05.31 -->

				<ul class="img_thumb_list">
					<li class="on">
						<div class="txt_area">
							<span>NOW, HERE We - in Hawaii</span>
							SECHSKIES
						</div>
						<div class="img_area"><img src="/w/pjtCom/images/temp/img_main_thumb.png" alt="" class="img"></div>
					</li>

					<li>
						<div class="txt_area">
							<span>NOW, HERE We - in Hawaii</span>
							IKON
						</div>
						<div class="img_area"><img src="/w/pjtCom/images/temp/img_main_thumb.png" alt="" class="img"></div>
					</li>

					<li>
						<div class="txt_area">
							<span>DO DISTURB</span>
							JUNG YOUNG HWA
						</div>
						<div class="img_area"><img src="/w/pjtCom/images/temp/img_main_thumb4.png" alt="" class="img"></div>
					</li>
				</ul>
			</div>
		</div>
	</main>
	<!-- // wrap -->

	<!-- 팝업 : 추가 : 2018.05.31 // -->
	<div id="main_popup1" class="main_popup">
		<div class="inner">
			<img src="/w/pjtCom/images/temp/img_popup.jpg" alt="">

			<div class="bottom">
				<input type="checkbox" class="chk_type2" id="today"><label for="today">오늘 하루 닫기</label>
				<button type="button" class="btn_close" onclick="$('#main_popup1').hide();">닫기</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 -->

	<!-- 비밀번호변경 팝업 : 추가 : 2018.05.31 // -->
	<div id="password" class="popup_type2 password" style="display:block;">
		<div class="inner">
			<a href="#" class="btn_close" onclick="fn.popupClose();">닫기</a>

			<!-- pop-top -->
			<div class="pop-top">
				<h2>비밀번호 변경<span>Change Password</span></h2>
			</div>

			<!-- pop-mid -->
			<div class="pop-mid">
				<p>개인정보 보호를 위해 <span>비밀번호를 변경</span>해 주세요! </p>

				<div>
					<span>현재 비밀번호</span>
					<input type="text" placeholder="Current Password" title="현재 비밀번호 입력" class="txt_type1">
				</div>

				<div>
					<span>새 비밀번호</span>
					<input type="text" placeholder="New Password" title="새 비밀번호 입력" class="txt_type1">
				</div>

				<div>
					<span>새 비밀번호 재입력</span>
					<input type="text" placeholder="Re-enter New Password" title="새 비밀번호 입력" class="txt_type1">
				</div>
			</div>

			<!-- pop-btn -->
			<div class="pop-btn-wrap">
				<button type="button" class="btn_later"><span>다음에 변경<span>Later</span></span></button>
				<button type="button" class="btn_change"><span>지금변경<span>Change</span></span></button>
			</div>

			<p class="txt">
				개인정보를 안전하게 관리하여 개인정보 도용으로 인한<br>
				피해를 방지하고자 비밀번호 변경을 적극 권장하고 있습니다.
			</p>
		</div>
	</div>
	<!-- // 비밀번호변경 팝업 -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>

</html>
