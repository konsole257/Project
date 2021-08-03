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
	<main id="wrap" class="order step2">
		<div id="contents" class="">

			<div class="tit_area">
				<h2 class="tit"><span>Order Completed</span>주문완료</h2>

				<ol class="progress">
					<li>장바구니</li>
					<li>주문결제</li>
					<li class="now">주문완료</li>
				</ol>
			</div>

			<div class="txt_area">
				<p class="txt">주문이 정상적으로 완료되었습니다.<br/>(Your order has been completed normally.)</p>
				<p class="number">Order No. <span>1234567890</span></p>

				<section class="deposit_area">
					<h2 class="tit">입금정보</h2>

					<ul class="deposit_list">
						<li><span>입금은행</span><span> : 국민은행</span></li>
						<li><span>입금 계좌번호</span><span> : 123456-12-123456 (예금주 : 한국후지필름)</span></li>
						<li><span>입금기한</span><span> : 2018.02.25 <br>기한 내에 입금 하시면 주문이 완료됩니다.</span></li>
						<li><span>총 결제금액</span><span> : <span>&#8361; 38,000</span></span></li>
					</ul>
				</section>
			</div>

			<div class="form_area">
				<!-- 수정 : 2018.04.27 // -->
				<section class="list_field">
					<h2 class="tit">주문 상품</h2>

					<ul>
						<li>
							<figure class="img_area">
							<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
							</figure>

							<div class="info_area">
								<span class="subject">[젝스키스] The studio 은지원 no.1The studio 은지원 no.1</span>

								<dl class="option">
									<dt>Option</dt>
									<dd>Post – 매트</dd>

									<dt>수량</dt>
									<dd>3</dd>

									<dt>금액</dt>
									<dd>&#8361; 5,000</dd>
								</dl>
							</div>
						</li>

						<li>
							<figure class="img_area">
							<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
							</figure>

							<div class="info_area">
								<span class="subject">[젝스키스] The studio 은지원 no.1</span>

								<dl class="option">
									<dt>Option</dt>
									<dd>Post – 매트</dd>

									<dt>수량</dt>
									<dd>3</dd>

									<dt>금액</dt>
									<dd>&#8361; 5,000</dd>
								</dl>
							</div>
						</li>

						<li>
							<figure class="img_area">
							<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
							</figure>

							<div class="info_area">
								<span class="subject">[젝스키스] The studio 은지원 no.1</span>

								<dl class="option">
									<dt>Option</dt>
									<dd>Post – 매트</dd>

									<dt>수량</dt>
									<dd>3</dd>

									<dt>금액</dt>
									<dd>&#8361; 5,000</dd>
								</dl>
							</div>
						</li>

						<li>
							<figure class="img_area">
							<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
							</figure>

							<div class="info_area">
								<span class="subject">[젝스키스] The studio 은지원 no.1</span>

								<dl class="option">
									<dt>Option</dt>
									<dd>Post – 매트</dd>

									<dt>수량</dt>
									<dd>3</dd>

									<dt>금액</dt>
									<dd>&#8361; 5,000</dd>
								</dl>
							</div>
						</li>
					</ul>
				</section>
				<!-- // 수정 -->

				<!-- 수정 : 2018.04.26 // -->
				<div class="bottom_area">
					<!-- 할인혜택 // -->
					<section class="delivery_field">
						<h2 class="tit">배송지 정보</h2>

						<table class="tbl_type2">
							<colgroup>
								<col style="width:185px;">
								<col style="width:295px;">
							</colgroup>

							<tbody>
								<tr>
									<th>이름</th>
									<td>홍길동</td>
								</tr>
								<tr>
									<th>휴대폰 번호</th>
									<td>010-1234-5678</td>
								</tr>
								<tr>
									<th>이메일</th>
									<td>hongho1201@gmail.com</td>
								</tr>
								<tr>
									<th>우편번호</th>
									<td>04111</td>
								</tr>
								<tr>
									<th>주소</th>
									<td>서울시 마포구 서강대길3 서강빌딩<br>6층 코너스톤인터랙티브</td>
								</tr>
								<tr>
									<th>배송요청사항</th>
									<td>배송 전 연락바랍니다.</td>
								</tr>
								<tr>
									<th>상품명 표시여부</th>
									<td>상품명 표시 안 함</td>
								</tr>
							</tbody>
						</table>
					</section>
					<!-- // 할인혜택 -->

					<div class="right_area">
						<!-- 결제 수단 // -->
						<section class="pay_field">
							<h2 class="tit">결제 정보</h2>

							<table class="tbl_type2">
								<colgroup>
									<col style="width:185px;">
									<col style="width:295px;">
								</colgroup>

								<tbody>
									<tr>
										<th>결제수단</th>
										<td>카드결제</td>
									</tr>
									<tr>
										<th>결제내역</th>
										<td>현대카드 / 무이자 3개월</td>
									</tr>
									<tr>
										<th>승인일시</th>
										<td>2018.03.13 14:38</td>
									</tr>
								</tbody>
							</table>
						</section>
						<!-- // 결제 수단 -->
					</div>
				</div>

				<!-- 결제금액 // -->
				<section class="price_field">
					<h2 class="tit">결제금액</h2>

					<div class="price_area">
						<dl>
							<dt class="subtotal">총 주문금액<span>Subtotal</span></dt>
							<dd>&#8361; 119,000</dd>

							<dt class="discount">할인금액<span>Discount</span></dt>
							<dd>&#8361; 10,000</dd>

							<dt class="shipping">배송비<span>Shipping</span></dt>
							<dd>&#8361; 2,500</dd>

							<dt class="total">총 결제금액<span>Total</span></dt>
							<dd>&#8361; 111,500</dd>
						</dl>
					</div>
				</section>
				<!-- // 결제금액 -->
				<!-- // 수정 -->
			</div>

			<div class="btn_area">
				<a href="/w/" class="btn_main"><span>메인<span>Main</span></span></a>
				<a href="/w/" class="btn_orderlist"><span>주문내역<span>Order List</span></span></a>
			</div>

			<!-- 추가 : 2018.06.07_2 // -->
			<div class="text_area">
				<strong>주문취소 안내 (Information on how to cancel orders)</strong>
				<p>신속한 배송 및 꼼꼼한 검수를 위해 <span>결제완료 시점부터 60분 후에 제작이 진행</span>됩니다.
					<br/>(For prompt shipping and careful inspection, production starts 60 minutes after payment is completed.)</p>
				<p>제작 진행중인 상태인  <span>“상품준비중” 으로 변경되면 주문취소가 불가능</span>합니다.
					<br/>(Once the status is shown as "Preparing item," it is impossible to cancel the order.)
				</p>
				<p>립스 서비스는 주문제작 상픔으로 충분한 고려 후 구매 부탁 드립니다.
					<br/>(LIPSS Service is custom-made. Please purchase after due consideration.)
				</p>
			</div>
			<!-- // 추가 : 2018.06.07_2 -->

		</div>
	</main>
	<!-- // wrap -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>

</html>
