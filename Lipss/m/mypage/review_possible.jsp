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
<div id="wrap" class="review">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- menu//-->
		<div class="submenu">
			<h2 class="tit">LIPSS TALK</h2>

			<%@ include file="/m/inCom/_menu_mypage.jsp" %>
		</div>
		<!-- //menu -->

		<div class="view_area">

			<div class="tab_menu">
				<a href="#" class="on">작성가능한 후기(140)</a>
				<a href="#">작성한 후기(0)</a>
			</div>

			<div class="txt_area">
				<strong>립스토크 작성안내</strong>
				<ul>
					<li>립스 토크를 작성해주시면 <span>“혜택”</span>을 드립니다.(일반후기, 프리미엄후기)</li>
					<li>후기 작성은 [구매확정]을 하신 주문 상품에 대해서만 1회 작성 가능합니다.</li>
					<li>구매하신 상품과 관련 없는 내용을 작성할 경우 임의 삭제 될 수 있습니다.</li>
					<li>비방, 욕설 등 적절치 않은 단어 포함 시 임의 삭제됩니다.</li>
					<li>개인정보보호법에 의거 개인의 연락처, 메일주소, 카드 번호 등의 개인정보는 작성하지 말아주십시오.</li>
				</ul>
			</div>

			<ul class="list">
				<!--
				<li class="nodata">
					작성할 내역이 없습니다.
				</li>
				-->

				<li>
					<div class="bottom">
						<figure class="img_area">
							<img src="/m/mpjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
						</figure>

						<div class="info_area">
							<span class="subject">[젝스키스] The studio 은지원 no.1</span>

							<dl class="option">
								<dt>Option</dt>
								<dd>Stand – 매트 (8X12)</dd>
							</dl>

							<dl class="price">
								<dt>금액</dt>
								<dd>&#8361; 5,000</dd>

								<dt>수량</dt>
								<dd>1개</dd>
							</dl>

							<div class="total_price">&#8361; 38,000 <b class="state">구매확정<button type="button" class="btn_write" onclick="location.href='/m/mypage/review_write.jsp'">상품평작성</button></b></div>
						</div>
					</div>
				</li>

				<li>
					<div class="bottom">
						<figure class="img_area">
							<img src="/m/mpjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
						</figure>

						<div class="info_area">
							<span class="subject">[젝스키스] The studio 은지원 no.1</span>

							<dl class="option">
								<dt>Option</dt>
								<dd>Stand – 매트 (8X12)</dd>
							</dl>

							<dl class="price">
								<dt>금액</dt>
								<dd>&#8361; 5,000</dd>

								<dt>수량</dt>
								<dd>1개</dd>
							</dl>

							<div class="total_price">&#8361; 38,000 <b class="state">구매확정<button type="button" class="btn_write" onclick="location.href='/m/mypage/review_write.jsp'">상품평작성</button></b></div>
						</div>
					</div>
				</li>
			</ul>

			<div class="paging paging_type2">
				<a href="#" class="btn_prev">이전</a>
				<span class="num">
					<a href="javascript:" class="on">1</a>
					<a href="javascript:">2</a>
					<a href="javascript:">3</a>
					<a href="javascript:">4</a>
					<a href="javascript:">5</a>
				</span>
				<a href="#" class="btn_next">다음</a>
			</div>
		</div>
	</main>
	<!-- //content -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>

</body>
</html>