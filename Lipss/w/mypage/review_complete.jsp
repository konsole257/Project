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
	<main id="wrap" class="mypage review complete">
		<div id="contents" class="">

			<div class="tit_area">
				<h2 class="tit"><span>Lipss Talk</span>LIPSS TALK</h2>

				<!-- menu // -->
				<%@ include file="/w/inCom/menu_mypage.jsp" %>
				<!-- // menu -->
			</div>

			<div class="view_area">

				<div class="tab_menu">
					<a href="#">작성가능한 후기(140)</a>
					<a href="#" class="on">작성한 후기(0)</a>
				</div>

				<div class="text_area">
					<strong>립스토크 작성안내</strong>
					<p>립스 토크를 작성해주시면 <span>“혜택”</span>을 드립니다.(일반후기, 프리미엄후기)</p>
					<p>후기 작성은 [구매확정]을 하신 주문 상품에 대해서만 1회 작성 가능합니다.</p>
					<p>구매하신 상품과 관련 없는 내용을 작성할 경우 임의 삭제 될 수 있습니다.</p>
					<p>비방, 욕설 등 적절치 않은 단어 포함 시 임의 삭제됩니다.</p>
					<p>개인정보보호법에 의거 개인의 연락처, 메일주소, 카드 번호 등의 개인정보는 작성하지 말아주십시오.</p>
				</div>

				<div class="list_field">
					<table class="tbl_type1">
						<caption class="hide">작성한 후기 목록</caption>

						<colgroup>
							<col style="width:152px;">
							<col style="width:480px;">
							<col style="width:224px;">
							<col style="width:184px;">
						</colgroup>

						<thead>
							<tr>
								<th>주문일</th>
								<th>상품정보</th>
								<th>주문금액</th>
								<th>상태</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td>2018.03.13</td>
								<td>
									<figure class="img_area">
										<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
									</figure>

									<div class="info_area">
										<span class="subject">[젝스키스] The studio 은지원 no.1(외 1건)</span>

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
									</div>
								</td>
								<td>&#8361; 5,000</td>
								<td>
									<div class="grade_heart">
										<span><span style="width:80%;">4하트</span></span>
									</div>
									<button type="button" class="btn_view" onclick="fn.popupOpen('#user_review');">상품평 보기</button>
									<span>2018.08.01</span>
								</td>
							</tr>
							<tr>
								<td>2018.03.13</td>
								<td>
									<figure class="img_area">
										<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
									</figure>

									<div class="info_area">
										<span class="subject">[젝스키스] The studio 은지원 no.1(외 1건)</span>

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
									</div>
								</td>
								<td>&#8361; 5,000</td>
								<td>
									<div class="grade_heart">
										<span><span style="width:20%;">1하트</span></span>
									</div>
									<button type="button" class="btn_view" onclick="fn.popupOpen('#user_review');">상품평 보기</button>
									<span>2018.08.01</span>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

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
		</div>
	</main>
	<!-- // wrap -->

	<!-- 상품평 // -->
	<div id="user_review" class="popup user_review">
		<div class="inner">
			<header class="header">
				<h2 class="tit">LIPSS TALK</h2>

				<button type="button" class="btn_close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<div class="top">
					<span class="txt_id">sss***</span>
					<div class="grade_heart">
						<span><span style="width:80%;">4하트</span></span>
					</div>
					<a href="#">상품보기 &gt;</a>
				</div>

				<div class="reviewpic"><img src="/w/pjtCom/images/temp/img_user_review_440X292.jpg"></div>

				<div class="scrollbar-macosx"><!-- 이미지가 없을경우 div제거 : 2018.12.10 : 수정 -->
					<p class="reviewtxt">
						이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
						이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
						이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
						이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
						이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
						이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
					</p>
				</div>

				<!-- 2018.12.10 : 수정 // -->
				<div class="btn_area">
					<button type="submit" class="btn_ok"><span>수정 <span>Modify</span></span></button>
					<button type="button" class="btn_cancel" onclick="fn.popupClose();"><span>취소 <span>Cancel</span></span></button>
				</div>
				<!-- 2018.12.10 : 수정 -->
			</div>
		</div>
	</div>
	<!-- // 상품평 -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>

</html>
