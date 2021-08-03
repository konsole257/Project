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
	<main id="wrap" class="mypage main">
		<div id="contents" class="">

			<div class="tit_area">
				<h2 class="tit"><span>My page</span>마이페이지</h2>

				<!-- menu // -->
				<%@ include file="/w/inCom/menu_mypage.jsp" %>
				<!-- // menu -->
			</div>

			<div class="dashboard_area">
				<div class="txt_area">
					<p class="txt"><b>김승혜</b>님,<br>안녕하세요!</p>
					<a href="#" class="btn_modify">회원정보수정</a>
				</div>

				<dl class="payment">
					<dt>결제완료</dt>
					<dd>3</dd>
				</dl>

				<dl class="delivery">
					<dt>배송 중</dt>
					<dd>1</dd>
				</dl>

				<dl class="cancel">
					<dt>취소/교환/반품</dt>
					<dd>0</dd>
				</dl>

				<dl class="wish">
					<dt>위시리스트</dt>
					<dd>5</dd>
				</dl>
			</div>

			<section class="myheart_area">
				<!-- 수정 : 2018.05.31 : 2018.05.29 // -->
				<h2 class="tit">MY HEART <a href="#" class="btn_tooltip">설명 보기</a></h2>

				<p class="tooltip">
					<a href="#" class="btn_close">닫기</a>
					내가 구매한 이미지를 확인할 수 있습니다.<br>
					본 사이트에 판매중인 모든 이미지에 대한 저작권은 LIPSS 또는 해당 이미지의 원 저작권자에게 있으며,<br>
					저작권 정책에 따라 서비스 이용이 제한 될 수 있습니다.
				</p>
				<!-- // 수정 : 2018.05.31 : 2018.05.29 -->

				<ul class="myheart_list">
					<li>
						<!-- 추가 : 2018.05.29 // -->
						<div class="icon_area">
							<span class="icon_soldout">SOLD OUT</span>
						</div>
						<!-- // 추가 : 2018.05.29 -->

						<a href="#"><img src="/w/pjtCom/images/temp/img_goods_213x320_B.jpg" alt="" class="img"></a>
						<div class="menu_area">
							<div class="inner">
								<a href="#cart_option2" class="btn_cart">장바구니</a>
								<a href="#" class="btn_view">상세보기</a>
							</div>
						</div>

						<div class="option">옵션사이즈 - 옵션면종</div><!-- 추가 : 2018.05.29 -->
					</li>
					<li>
						<a href="#"><img src="/w/pjtCom/images/temp/img_goods_480x320_B.jpg" alt="" class="img"></a>
						<div class="menu_area">
							<div class="inner">
								<a href="#cart_option2" class="btn_cart">장바구니</a>
								<a href="#" class="btn_view">상세보기</a>
							</div>
						</div>

						<div class="option">옵션사이즈 - 옵션면종</div>
					</li>
				</ul>

				<button type="button" class="btn_more">더보기</button>
			</section>

		</div>
	</main>
	<!-- // wrap -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>

</html>
