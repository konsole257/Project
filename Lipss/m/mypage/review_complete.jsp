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
				<a href="#">작성가능한 후기(140)</a>
				<a href="#" class="on">작성한 후기(0)</a>
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
					작성한 내역이 없습니다.
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

							<div class="total_price">&#8361; 38,000</div>

							<div class="grade_heart">
								<span><span style="width:80%;">4하트</span></span>
							</div>
							<button type="button" class="btn_view" onclick="fn.popupOpen('#user_review');">상품평 보기</button>
							<div class="date">2018.03.13</div>
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

							<div class="grade_heart">
								<span><span style="width:80%;">4하트</span></span>
							</div>
							<button type="button" class="btn_view" onclick="fn.popupOpen('#user_review');">상품평 보기</button>
							<div class="date">2018.03.13</div>
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

	<!-- 상품평 // -->
	<div id="user_review" class="popup user_review">
		<div class="popup_area">
			<div class="inner">
				<button type="button" class="btn_close" onclick="fn.popupClose('#user_review')">닫기</button>
				<h3>LIPSS TALK</h3>

				<div class="contents">
					<div class="top">
						<span class="txt_id">sss***</span>
						<div class="grade_heart">
							<span><span style="width:80%;">4하트</span></span>
						</div>
						<a href="#">상품보기 &gt;</a>
					</div>

					<div class="reviewpic"><img src="/w/pjtCom/images/temp/img_user_review_440X292.jpg"></div>

					<div class="swiper-container popscroll"><div class="swiper-wrapper"><div class="swiper-slide">
						<p class="reviewtxt">
							이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
							이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
							이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
							이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
							이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
							이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
						</p>
					</div></div><div class="swiper-scrollbar"></div></div>
				</div>

				<div class="btn_area">
					<button type="submit" class="btn_ok"><span>수정 <span>Modify</span></span></button>
					<button type="button" class="btn_cancel" onclick="fn.popupClose();"><span>취소 <span>Cancel</span></span></button>
				</div>
			</div>
		</div>
	</div>
	<!-- // 상품평 -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>

</body>
</html>
