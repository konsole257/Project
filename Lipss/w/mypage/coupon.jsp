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
	<main id="wrap" class="mypage coupon">
		<div id="contents" class="">

			<div class="tit_area">
				<h2 class="tit"><span>Coupon</span>쿠폰</h2>

				<!-- menu // -->
				<%@ include file="/w/inCom/menu_mypage.jsp" %>
				<!-- // menu -->
			</div>

			<div class="tab_menu">
				<a href="#" class="on">사용 가능한 쿠폰 <span>(3)</span><small>(Available coupons)</small></a>
				<a href="#">7일 이내 만료 쿠폰 <span>(3)</span><small>(Coupons to be expired within seven days)</small></a>
				<a href="#">사용 만료된 쿠폰 <span>(3)</span><small>(Expired coupons)</small></a>
			</div>

			<div class="tab_contents">
				<ul class="coupon_list">
					<li>
						<!-- <div class="coupon delivery"> --> <!-- 무료배송 쿠폰 -->
						<div class="coupon price"><!-- 금액할인 쿠폰 -->
							<b>5,000원</b>
							장바구니 할인쿠폰
						</div>

						<div class="info_area">
							<b class="subject">장바구니 10,000원 할인쿠폰</b>
							<span class="date ">2018.06.05 까지 </span> <!-- 사용 전 -->
							<!-- <span class="date">2018.06.05 까지 <strong>(3일 후 소멸예정)</strong></span> --> <!-- 7일이내 만료 -->
							<!--<span class="date use">2018.06.05 사용 </span>--> <!-- 사용 후 -->
							<!--<span class="date">2018.06.05 만료 </span>--> <!-- 만료 -->

							<dl class="info_list">
								<dt>쿠폰종류</dt>
								<dd>장바구니</dd>

								<dt>최소 결제금액</dt>
								<dd>제한없음</dd>

								<dt>최대 할인금액</dt>
								<dd>10,000원</dd>
							</dl>
						</div>
					</li>

					<li>
						<div class="coupon price">
							<b>5,000원</b>
							장바구니 할인쿠폰
						</div>

						<div class="info_area">
							<b class="subject">장바구니 10,000원 할인쿠폰</b>
							<span class="date">2018.06.05 까지 <strong>(3일 후 소멸예정)</strong></span>

							<dl class="info_list">
								<dt>쿠폰종류</dt>
								<dd>장바구니</dd>

								<dt>최소 결제금액</dt>
								<dd>제한없음</dd>

								<dt>최대 할인금액</dt>
								<dd>10,000원</dd>
							</dl>
						</div>
					</li>

					<li>
						<div class="coupon delivery">
							<b>무료배송</b>
							무료배송 쿠폰
						</div>

						<div class="info_area">
							<b class="subject">장바구니 10,000원 할인쿠폰</b>
							<span class="date use">2018.06.05 사용 </span>

							<dl class="info_list">
								<dt>쿠폰종류</dt>
								<dd>장바구니</dd>

								<dt>최소 결제금액</dt>
								<dd>제한없음</dd>
							</dl>
						</div>
					</li>

					<li>
						<div class="coupon delivery">
							<b>무료배송</b>
							무료배송 쿠폰
						</div>

						<div class="info_area">
							<b class="subject">장바구니 10,000원 할인쿠폰</b>
							<span class="date">2018.06.05 만료</span>

							<dl class="info_list">
								<dt>쿠폰종류</dt>
								<dd>장바구니</dd>

								<dt>최소 결제금액</dt>
								<dd>제한없음</dd>

								<dt>최대 할인금액</dt>
								<dd>10,000원</dd>
							</dl>
						</div>
					</li>
				</ul>

				<div class="paging">
					<a href="#" class="btn_prev">이전</a>
					<span class="num">
						<a href="#" class="on">1</a>
						<a href="#">2</a>
						<a href="#">3</a>
					</span>
					<a href="#" class="btn_next">다음</a>
				</div>
			</div>

			<section class="use_info_area">
				<h2 class="tit">쿠폰 별 사용 안내</h2>

				<ul class="info_list">
					<li>쿠폰 별 사용 안내</li>
				</ul>
			</section>

		</div>
	</main>
	<!-- // wrap -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>

</html>
