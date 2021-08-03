<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
	<!-- config// -->
	<%@ include file="/m/inCom/_config.jsp" %>
	<!-- //config -->
	<link rel="stylesheet" type="text/css" href="/m/mpjtCom/css/sub.css?20180509" />

</head>
<body class="order">
<div id="wrap" class="order_step2">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<h1 id="subTitle">주문완료 <span>Order Completed</span></h1>

	<!-- content// -->
	<main id="contents">

		<div class="order_area">
			<div class="txt_area">
				<p class="txt">주문이 정상적으로 완료되었습니다.<br/> (Your order has been completed normally.)</p>

				<p class="number">Order No. <span>1234567890</span></p>

				<section class="deposit_area">
					<h2 class="tit">입금정보</h2>

					<ul class="deposit_list">
						<li><span>입금은행</span><span> : 국민은행</span></li>
						<li><span>입금 계좌번호</span><span> : 123456-12-123456 (예금주 : 한국후지필름)</span></li>
						<li><span>입금기한</span><span> : 2018.02.25 (기한 내에 입금 하시면 주문이 완료됩니다.)</span></li>
						<li><span>총 결제금액</span><span> : <span>₩ 38,000</span></span></li>
					</ul>
				</section>
			</div>

			<section class="goods_area">
				<h2>주문 상품</h2>

				<div class="goods_info">
					<figure class="img_area">
						<img src="/m/mpjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
					</figure>

					<div class="info_area">
						<a href="#" class="subject">
							<span>[젝스키스]</span>
							<span>The studio 은지원 no.1</span>
						</a>

						<dl>
							<dt>금액</dt>
							<dd>&#8361; 38,000</dd>

							<dt>수량</dt>
							<dd>7개</dd>
						</dl>
					</div>
				</div>
			</section>

			<section class="delivery_area">
				<h2>배송지 정보</h2>

				<table>
					<colgroup>
						<col style="width:121px;">
						<col style="">
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
							<td>hongho1201@gamil.com</td>
						</tr>
						<tr>
							<th>주소</th>
							<td>
								(04111) 서울시 마포구 서강대길3<br>
								서강빌딩 6층 코너스톤인터랙티브
							</td>
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

			<section class="pay_area">
				<h2>결제 정보</h2>

				<table>
					<colgroup>
						<col style="width:121px;">
						<col style="">
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

			<section class="price_area">
				<h2>결제금액</h2>

				<table>
					<colgroup>
						<col style="width:50%;">
						<col style="width:50%;">
					</colgroup>

					<tbody>
						<tr>
							<th>총주문금액 <span>(Subtotal)</span></th>
							<td class="total">&#8361; 119,000</td>
						</tr>
						<tr>
							<th>할인금액 <span>(Discount)</span></th>
							<td class="discount">&#8361; 10,000</td>
						</tr>
						<tr>
							<th>배송비 <span>(Shipping)</span></th>
							<td class="shipping">&#8361; 2,500</td>
						</tr>
					</tbody>

					<tfoot>
						<tr>
							<th>총 결제금액 <span>(Total)</span></th>
							<td>&#8361; 10,000</td>
						</tr>
					</tfoot>
				</table>
			</section>

			<!-- 추가 : 2018.06.07_2 // -->
			<div class="txt_area">
				<strong>주문취소 안내 (Information on how to cancel orders)</strong>
				<ul>
					<li>신속한 배송 및 꼼꼼한 검수를 위해 <span>결제완료 시점부터 60분 후에 제작이 진행</span>됩니다.
						<br/>(For prompt shipping and careful inspection, production starts 60 minutes after payment is completed.)
					</li>
					<li>제작 진행중인 상태인  <span>“상품준비중” 으로 변경되면 주문취소가 불가능</span>합니다.
						<br/>(Once the status is shown as "Preparing item," it is impossible to cancel the order.)
					</li>
					<li>립스 서비스는 주문제작 상픔으로 충분한 고려 후 구매 부탁 드립니다.
						<br/>(LIPSS Service is custom-made. Please purchase after due consideration.)
					</li>
				</ul>
			</div>
			<!-- // 추가 : 2018.06.07_2 -->

			<div class="btn_area">
				<button type="button" class="btn_main">메인<span>Main</span></button>
				<button type="button" class="btn_purple">주문내역<span>Order List</span></button>
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
