<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
	<!-- config// -->
	<%@ include file="/m/inCom/_config.jsp" %>
	<!-- //config -->
	<link rel="stylesheet" type="text/css" href="/m/mpjtCom/css/sub.css" />

</head>
<body class="mypage">
<div id="wrap" class="modify withdrawal">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- menu//-->
		<div class="submenu">
			<h2 class="tit">회원정보 수정</h2>

			<%@ include file="/m/inCom/_menu_mypage.jsp" %>
		</div>
		<!-- //menu -->

		<section class="withdrawal_area">
			<h3 class="tit">회원탈퇴 <span>Member Drawal</span></h3>

			<p class="txt1">LIPSS와 함께해 주셔서 감사합니다.</p>
			<p class="txt2">
				LIPSS를 이용하시는 동안 불편한 사항이 있으셨다면<br>
				더욱 향상된 서비스 제공을 위해 항상 노력하겠습니다.
			</p>

			<ul class="item_list">
				<li class="caution">진행중인 주문 건이 있을 경우 탈퇴 처리가 불가능합니다.</li>
				<li>회원정보는 개인정보 보호방침ㆍ취급방침에 따라 안전하게 삭제됩니다.</li>
				<li>회원님의 동의 없이는 기재하신 회원정보가 공개되지 않습니다.</li>
				<li class="caution">한번 탈퇴한 아이디는 재 사용이 불가능합니다.</li>
				<li class="caution">탈퇴 시 보유하신 쿠폰은 모두 삭제 됩니다.</li>
			</ul>

			<div class="count_area"><span>2018년 03월 13일 기준</span><b>진행중인 주문 건 <span>3</span>건</b></div>

			<h4>탈퇴 사유(중복체크 가능)</h4>
			<ul class="reason_list">
				<li><label><input type="checkbox"class="chk_type1"><span>다른 쇼핑몰에 비해 가격이 비쌈</span></label></li>
				<li><label><input type="checkbox"class="chk_type1"><span>상품 품질이 안 좋음</span></label></li>
				<li><label><input type="checkbox"class="chk_type1"><span>원하는 상품이 없음</span></label></li>
				<li><label><input type="checkbox"class="chk_type1"><span>상품 찾기가 어려움</span></label></li>
				<li><label><input type="checkbox"class="chk_type1"><span>배송이 늦음</span></label></li>
				<li><label><input type="checkbox"class="chk_type1"><span>환불/반품에 대한 불만</span></label></li>
				<li><label><input type="checkbox"class="chk_type1"><span>개인정보 유출우려</span></label></li>
				<li><label><input type="checkbox"class="chk_type1"><span>자주 이용하지 않음</span></label></li>
				<li><label><input type="checkbox"class="chk_type1"><span>개인정보 변경으로 인한 재가입</span></label></li>
				<li>
					<label><input type="checkbox"class="chk_type1"><span>기타</span></label>
					<textarea></textarea>
				</li>
			</ul>

			<div class="btn_area">
				<a href="#" class="btn_purple">확인<span>Ok</span></a>
				<a href="#" class="btn_cancel">취소<span>Cancel</span></a>
			</div>

		</section>

	</main>
	<!-- //content -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>

</body>
</html>
