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
							<col style="width:462px;" />
							<col style="width:154px;" />
							<col style="width:154px;" />
							<col style="width:155px;" />
							<col style="width:155px;" />
						</colgroup>

						<thead>
							<tr>
								<th scope="col">상품정보</th>
								<th scope="col">상품금액</th>
								<th scope="col">수량</th>
								<th scope="col">쿠폰</th>
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
												<strong class="subject dotdot">인디고 클러치 for 아이패드 (Indigo Clutch for Ipad)</strong><!-- 상품 이름 -->
												<small class="option">옵션 : 색상 - 엘로우,  사이즈 -  xl</small><!-- 상품 옵션 -->
											</figcaption>
										</figure>
									</a>
								</td>
								<td>
									<del data-fn="price">12000원</del>
									<span data-fn="price">10000원</span>
								</td>
								<td>1</td><!-- 상품 수량 -->
								<td data-fn="price">2000원</td><!-- 할인/쿠폰금액 -->
								<td data-fn="price">8000원</td><!-- 주문금액 -->
							</tr>
							<!-- // 반복영역 -->

							<!-- 배송비 영역 : 2016-03-11 : 추가 //  -->
							<tr class="delevery">
								<td colspan="7">
									<!-- 2016-04-21 :수정 // -->
									<em>배송비<span class="delivery_sale">(배송비 쿠폰할인 금액)</span> <span data-fn="price">0</span>원 <span class="delivery_sale">(1,500원)</span></em>
									<!-- // 2016-04-21 :수정 -->
								</td>
							</tr>
							<!-- // 배송비 영역 -->
						</tbody>

						<!-- 결제금액 영역 // -->
						<tfoot>
							<tr class="price">
								<td colspan="5">
									<table>
										<caption>결제금액</caption>

										<colgroup>
											<col style="width:20%;" />
											<col style="width:20%;" />
											<col style="width:20%;" />
											<col style="width:20%;" />
											<col style="width:20%;" />
										</colgroup>

										<thead>
											<tr>
												<th scope="col">총 상품금액</th>
												<th scope="col">총 상품할인금액</th>
												<th scope="col">총 쿠폰할인금액</th>
												<th scope="col">배송비</th>
												<th scope="col">최종 결제금액</th>
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

												<td class="discount" data-fn="price">0원</td> <!-- 2016-03-11 : 추가 -->

												<td class="delivery" data-fn="price">0원</td><!-- 배송비 -->

												<td class="total" data-fn="price">153000원</td><!-- 최종 결제금액 -->
											</tr>
										</tbody>
									</table>
								</td>
							</tr>

							<!-- 추가 배송비가 있을때 : 2016-04-21 : 추가 // -->
							<tr class="price">
								<td colspan="5">
									<table>
										<caption>결제금액</caption>

										<colgroup>
											<col style="width:187px;" />
											<col style="width:219px;" />
											<col style="width:218px;" />
											<col style="width:263px;" />
											<col style="width:187px;" />
										</colgroup>

										<thead>
											<tr>
												<th scope="col">총 상품금액</th>
												<th scope="col">총 상품할인금액</th>
												<th scope="col">총 쿠폰할인금액</th>
												<th scope="col">배송비<small class="delivery_add">(추가배송비)</small></th>
												<th scope="col">최종 결제금액</th>
											</tr>
										</thead>

										<tbody>
											<tr>
												<td class="final" data-fn="price">185000원</td><!-- 주문금액 -->

												<td class="discount"><!-- 총 할인금액 -->
													<span data-fn="price">32000원</span>
												</td>

												<td class="discount" data-fn="price">0원</td> <!-- 2016-03-11 : 추가 -->

												<td class="delivery"><span data-fn="price">0</span>원<small class="delivery_add">(6,000원)</small></td><!-- 배송비 -->

												<td class="total" data-fn="price">153000원</td><!-- 최종 결제금액 -->
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<!-- // 추가 배송비가 있을때 : 2016-04-21 : 추가 -->
						</tfoot>
						<!-- // 결제금액 영역 -->
					</table>

					<!-- 배송 정보 // -->
					<section class="delivery_info">
						<h4>주문고객/배송 정보</h4>

						<table>
							<caption>배송 정보 내역</caption>

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
									<th scope="row">주소</th>
									<td colspan="3">
										123 - 456<br />
										서울시 마포구 서강대길3
									</td>
								</tr>

								<tr>
									<th scope="row">배송시 요구사항</th>
									<td colspan="3">부재시 경비실에 맡겨 주세요.</td>
								</tr>
							</tbody>
						</table>
					</section>
					<!-- // 배송 정보 -->

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
									<tr class="last">
										<td colspan="2">
											<p>결제수단을 가상 계좌로 선택하신 경우, 입금예정일까지 입금하지 않으시면 주문이 자동 취소됩니다.</p>
											<p>수량 한정 상품의 경우는 결제된 순서대로 배송 진행되며, 결제가 늦어지신 경우 결제가 되었더라도 품절 및 재고 부족으로 주문이 취소될 수 있습니다.</p>
											<p>일반 상품 반품은 상품을 수령하신 날로부터 7일 이내에 신청 가능합니다.</p>
											<p class="caution">* 공연/전시/체험 예매 취소는 게시판 및 고객센터를 이용하여 반품이 가능합니다.</p>
										</td>
									</tr>
								</tbody>
							</table>
						</section>
						<!-- // 결제정보 -->

						<!-- 배송 안내 // -->
						<section class="delivery_guide">
							<h4>배송 안내</h4>

							<table>
								<caption>배송 안내</caption>

								<colgroup>
									<col style="width:80px;" />
									<col />
								</colgroup>

								<tbody>
									<tr>
										<th>배송사</th>
										<td>CJ대한통운</td>
									</tr>

									<tr>
										<th>배송비</th>
										<td>2,500원(단, 제주도 및 도서산간지역은 추가 운임료 발생) </td>
									</tr>

									<tr>
										<th>배송기간</th>
										<td>입금 완료 확인 후 2-5일 이내에 배송됩니다.<br />(단, 제주도 및 도서산간 지역은 추가 기간 발생) 고객님의 연락 두절 및 부재 등으로 인하여 반송된 경우에는 왕복 택배비가 부과됩니다.</td>
									</tr>

									<tr class="last">
										<td colspan="2">
											<div class="btn_area">
												<a href="#" id="btn_list" class="big type1">주문내역 확인</a>
												<a href="#" id="btn_continue" class="big type4">쇼핑 계속하기</a>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</section>
						<!-- // 배송 안내 -->
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
