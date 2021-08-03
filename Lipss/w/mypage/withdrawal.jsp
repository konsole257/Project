<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- config // -->
	<%@ include file="/w/inCom/config.jsp" %>
	<!-- // config -->

	<link rel="stylesheet" type="text/css" href="/w/pjtCom/css/sub.css" />
</head>

<body class="sub">
	<!-- header // -->
	<%@ include file="/w/inCom/header.jsp" %>
	<!-- // header -->

	<!-- wrap -->
	<main id="wrap" class="mypage withdrawal">
		<div id="contents" class="">

			<div class="tit_area">
				<h2 class="tit"><span>Member Drawal</span>회원탈퇴</h2>

				<!-- menu // -->
				<%@ include file="/w/inCom/menu_mypage.jsp" %>
				<!-- // menu -->
			</div>

			<p class="txt1"><b>LIPSS</b>와 함께해 주셔서 감사합니다.</p>
			<div class="txt_area">
				<div class="inner">
					<p class="txt2">LIPSS를 이용하시는 동안 불편한 사항이 있으셨다면 더욱 향상된 서비스 제공을 위해 항상 노력하겠습니다.</p>
					<p class="txt3">회원 탈퇴 전 아래 사항을 확인해 주세요!</p>
				</div>
			</div>

			<ul class="item_list">
				<li class="caution">진행중인 주문 건이 있을 경우 탈퇴 처리가 불가능합니다.</li>
				<li>회원정보는 개인정보 보호방침ㆍ취급방침에 따라 안전하게 삭제됩니다.</li>
				<li>회원님의 동의 없이는 기재하신 회원정보가 공개되지 않습니다.</li>
				<li class="caution">한번 탈퇴한 아이디는 재 사용이 불가능합니다.</li>
				<li class="caution">탈퇴 시 보유하신 쿠폰은 모두 삭제 됩니다.</li>
			</ul>


			<div class="count_area"><span>2018년 03월 13일 기준</span><span>진행중인 주문 건 <b>3</b>건</span></div>

			<div class="reason_field">
				<form>
					<fieldset>
						<legend class="tit">탈퇴 사유(중복체크 가능)</legend>

						<ul>
							<li><input type="checkbox" id="reason1" class="chk_type2"><label for="reason1">다른 쇼핑몰에 비해 가격이 비쌈</label></li>
							<li><input type="checkbox" id="reason2" class="chk_type2"><label for="reason2">상품 품질이 안 좋음</label></li>
							<li><input type="checkbox" id="reason3" class="chk_type2"><label for="reason3">원하는 상품이 없음</label></li>
							<li><input type="checkbox" id="reason4" class="chk_type2"><label for="reason4">상품 찾기가 어려움</label></li>
							<li><input type="checkbox" id="reason5" class="chk_type2"><label for="reason5">배송이 늦음</label></li>
							<li><input type="checkbox" id="reason6" class="chk_type2"><label for="reason6">환불/반품에 대한 불만</label></li>
							<li><input type="checkbox" id="reason7" class="chk_type2"><label for="reason7">개인정보 유출우려</label></li>
							<li><input type="checkbox" id="reason8" class="chk_type2"><label for="reason8">자주 이용하지 않음</label></li>
							<li><input type="checkbox" id="reason9" class="chk_type2"><label for="reason9">개인정보 변경으로 인한 재가입</label></li>
							<li>
								<input type="checkbox" id="reason10" class="chk_type2"><label for="reason10">기타</label>
								<textarea></textarea>
							</li>
						</ul>

						<!-- 수정 : 2018.05.04 // -->
						<div class="btn_area">
							<button type="submit" class="btn_ok"><span>확인 <span>Ok</span></span></button>
							<a href="#" class="btn_cancel"><span>취소 <span>Cancel</span></span></a>
						</div>
						<!-- // -->
					</fieldset>
				</form>
			</div>
		</div>
	</main>
	<!-- // wrap -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>

</html>
