<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="";
	String path2="";
	String path3="";
	String path4="";
	String path1tit="주문완료";
	String path2tit="";
	String path3tit="";
	String path4tit="";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/shop.css" />
</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="mypage">
		<div class="pay complete">

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<span class="cart">01 장바구니</span>
						<span class="pay">02 주문/결제</span>
						<span class="complete on">03 주문완료</span>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">주문완료</h2>
					<!-- -->

					<p class="txt1">고객님의 <em>주문이</em> 정상적으로 <em>완료</em>되었습니다.</p>
					<p class="txt2">고객님의 주문번호는 <em>1234567890</em>번입니다.</p>

					<table>
						<caption>상품 주문/결제 내역</caption>

						<colgroup>
							<col />
							<col style="width:154px;" />
							<col style="width:154px;" />
							<col style="width:155px;" />
						</colgroup>

						<thead>
							<tr>
								<th scope="col">상품정보</th>
								<th scope="col">상품금액</th>
								<th scope="col">수량</th>
								<th scope="col">주문금액</th>
							</tr>
						</thead>

						<tbody>
							<!-- 반복영역 // -->
							<tr>
								<td class="info">
									<a href="#"><!-- 상품 링크 -->
										<figure>
											<img src="/avenueCom/images/temp/cart_product_thumb.jpg" alt="" /><!-- 상품 썸네일 -->
											<figcaption class="subject_area">
												<strong class="subject">인디고 클러치 for 아이패드 (Indigo Clutch for Ipad)</strong><!-- 상품 이름 -->
												<small class="option">옵션 : 색상 - 엘로우,  사이즈 -  xl</small><!-- 상품 옵션 -->
											</figcaption>
										</figure>
									</a>
								</td>
								<td>
									<del data-fn="price">12000원</del>
									<span data-fn="price">10000원</span>
								</td><!-- 상품 금액 -->
								<td>1</td><!-- 상품 수량 -->
								<td data-fn="price">8000원</td><!-- 주문금액 -->
							</tr>
							<!-- // 반복영역 -->
						</tbody>

						<!-- 결제금액 영역 // -->
						<tfoot>
							<tr class="price">
								<td colspan="5">
									<table>
										<caption>결제금액</caption>

										<colgroup>
											<col style="width:33.3%;" />
											<col style="width:33.3%;" />
											<col style="width:33.3%;" />
										</colgroup>

										<thead>
											<tr>
												<!-- 2016-03-11 : 수정 // -->
												<th scope="col">총 상품금액</th>
												<th scope="col">총 상품할인금액</th>
												<th scope="col">최종 결제금액</th>
												<!-- // 2016-03-11 : 수정 -->
											</tr>
										</thead>

										<tbody>
											<tr>
												<td class="final" data-fn="price">185000원</td><!-- 주문금액 -->

												<td class="discount"><!-- 총 할인금액 -->
													<span data-fn="price">32000원</span>
													<!-- 2016-03-11 : 삭제
													<em class="discount_list">
													상품할인 <span data-fn="price">2000</span>원 + 쿠폰할인 <span data-fn="price">30000</span>원
												</em>-->
												</td>

												<td class="total" data-fn="price">153000원</td><!-- 최종 결제금액 -->
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tfoot>
						<!-- // 결제금액 영역 -->
					</table>

					<!-- 예약 정보 // -->
					<section class="delivery_info">
						<h4>주문고객/예약 정보</h4>

						<table>
							<caption>예약 정보 내역</caption>

							<colgroup>
								<col style="width:150px;" />
								<col style="width:390px;" />
								<col style="width:150px;" />
								<col style="width:390px;" />
							</colgroup>

							<tbody>
								<tr>
									<th scope="row">주문하시는 분</th>
									<td>스탠드</td>

									<th scope="row">받으시는 분</th>
									<td>스탠드</td>
								</tr>

								<tr>
									<th scope="row">휴대폰</th>
									<td>010-8898-1985</td>
									<th scope="row">일반전화</th>
									<td>02-8898-1985</td>
								</tr>

								<tr>
									<th scope="row">기타</th>
									<td colspan="3">부재시 경비실에 맡겨 주세요.</td>
								</tr>
							</tbody>
						</table>
					</section>
					<!-- // 예약 정보 -->

					<div class="pay_area">
						<!-- 결제정보 // -->
						<section class="pay_method">
							<h4>결제정보</h4>

							<table>
								<caption>결제정보 내역</caption>

								<colgroup>
									<col style="width:150px;" />
									<col style="width:370px;" />
								</colgroup>

								<tbody>
									<tr>
										<th>결제방법</th>
										<td>카드</td>
									</tr>
									<tr>
										<th>결제내용</th>
										<td>국민 (할부 : 03개월)</td>
									</tr>
									<tr class="total_price">
										<th>결제금액</th>
										<td><strong data-fn="price">153,000원</strong></td>
									</tr>
								</tbody>
							</table>
						</section>
						<!-- // 결제정보 -->

						<!-- 예매 안내 // -->
						<section class="delivery_guide ticketing_info">
							<table>
								<caption>예매 안내</caption>

								<colgroup>
									<col />
								</colgroup>

								<tbody>
									<tr>
										<td>
											<p>결제수단을 가상 계좌로 선택하신 경우, 입금예정일까지 입금하지 않으시면 주문이 자동 취소됩니다.</p>
											<p>수량 한정 상품의 경우는 결제된 순서대로 배송 진행되며, 결제가 늦어지신 경우 결제가 되었더라도 품절 및 재고 부족으로 주문이 취소될 수 있습니다.</p>
											<p>일반 상품 반품은 상품을 수령하신 날로부터 7일 이내에 신청 가능합니다.</p>
											<p class="caution">* 공연/전시/체험 예매 취소는 게시판 및 고객센터를 이용하여 반품이 가능합니다.</p>
										</td>
									</tr>

									<tr class="last">
										<td>
											<div class="btn_area">
												<a href="#" id="btn_list" class="big type1">주문내역 확인</a>
												<a href="#" id="btn_continue" class="big type4">쇼핑 계속하기</a>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</section>
						<!-- // 예매 안내 -->
					</div>

					<div class="caution_area">
						<strong>알려드립니다.</strong>
						<div>
							<p>유효 기한 내 사용하지 않은 티켓은 취소, 변경, 환불이 불가능합니다.</p>
							<p>실물 티켓은 발송되지 않습니다. 현장에서 예매(주문)번호 확인 후 입장 가능합니다.</p>
							<p>예매(주문) 번호는 MY PAGE 에서 확인하실 수 있습니다. </p>
						</div>
					</div>

					<!-- -->
				</div>

			</section>

			<hr />

		</div>

	</main>
	<!-- //wrap -->

	<!-- footer -->
	<%@ include file="/avenueCom/_include/_footer.jsp" %>
	<!-- //footer -->
</body>
</html>
