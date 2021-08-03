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
<div id="wrap" class="coupon">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- menu//-->
		<div class="submenu">
			<h2 class="tit">쿠폰</h2>

			<%@ include file="/m/inCom/_menu_mypage.jsp" %>
		</div>
		<!-- //menu -->

		<div class="tab_menu">
			<div>
				<a href="#" class="on">사용 가능한 쿠폰 (3)<small>(Available coupons)</small></a><!-- 현재페이지 class="on" -->
				<a href="#">7일 이내 만료 쿠폰 (1)<small>(Coupons to be expired within seven days)</small></a>
			</div>
			<a href="#">사용 만료된 쿠폰 (3)<small>(Expired coupons)</small></a>
		</div>

		<ul class="coupon_list">
			<li>
				<!-- <div class="coupon delivery"> --> <!-- 무료배송 쿠폰 -->
				<div class="coupon price"><!-- 금액할인 쿠폰 -->
					<b>5,000원</b>
					장바구니 할인쿠폰
				</div>

				<div class="info_area">
					<b class="subject">장바구니 10,000원 할인쿠폰</b>

					<dl class="info_list">
						<dt>쿠폰종류</dt>
						<dd>장바구니</dd>

						<dt>최소 결제금액</dt>
						<dd>제한없음</dd>

						<dt>최대 할인금액</dt>
						<dd>10,000원</dd>

						<dt>만료일자</dt>
						<dd>2018.06.05 까지</dd>
						<!-- <dd>2018.06.05 까지<strong>(3일 후 소멸예정)</strong></dd>--> <!-- 7일이내 만료 -->
					</dl>
				</div>
			</li>

			<li>
				<div class="coupon delivery">
					<b>5,000원</b>
					장바구니 할인쿠폰
				</div>

				<div class="info_area">
					<b class="subject">장바구니 10,000원 할인쿠폰</b>

					<dl class="info_list">
						<dt>쿠폰종류</dt>
						<dd>장바구니</dd>

						<dt>최소 결제금액</dt>
						<dd>제한없음</dd>

						<dt>최대 할인금액</dt>
						<dd>10,000원</dd>

						<dt>만료일자</dt>
						<dd>2018.06.05 까지 <strong>(3일 후 소멸예정)</strong></dd>
					</dl>
				</div>
			</li>
		</ul>

	</main>
	<!-- //content -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>

</body>
</html>
