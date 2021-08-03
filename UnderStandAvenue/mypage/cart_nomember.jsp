<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="cart";
	String path2="";
	String path3="";
	String path4="";
	String path1tit="장바구니";
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
		<div class="cart">

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<span class="cart on">01 장바구니</span>
						<span class="pay">02 주문/결제</span>
						<span class="complete">03 주문완료</span>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">장바구니</h2>
					<p class="con_tit_txt">로그인하시면 보유하신 쿠폰 적용이 가능합니다.</p>
					<!-- -->

					<!-- 탭 // -->
					<div class="cart_tab" data-ui="tab">

						<!-- 상품 탭 // -->
						<section class="on">
							<h3 data-ui="tab_menu" data-fn="tab_menu"><a href="#product">상품</a></h3>

							<div data-ui="tab_content" id="product">
								<form>
									<fieldset>
										<legend>상품 장바구니</legend>

										<table>
											<caption>상품 장바구니 내역</caption>

											<colgroup>
												<!-- 2016-03-11 : 수정 // -->
												<col style="width:46px;" />
												<col />
												<col style="width:119px;" />
												<col style="width:135px;" />
												<col style="width:135px;" />
												<col style="width:135px;" />
												<!-- // 2016-03-11 : 수정 -->
											</colgroup>

											<thead>
												<tr>
													<th><input type="checkbox" title="전체선택" data-fn="allCheck" /></th>
													<!-- 2016-03-11 : 수정 // -->
													<th>상품정보</th>
													<th>상품금액</th>
													<th>수량</th>
													<th>주문금액</th>
													<th>주문하기</th>
													<!-- // 2016-03-11 : 수정 -->
												</tr>
											</thead>

											<tbody>
												<!-- 담긴상품이 없을때 : 2016-03-25 : 추가 // -->
												<tr>
													<td colspan="6" class="no_data">
														<p>
															장바구니에 담긴 상품이 없습니다.
														</p>
														<div class="btn_area">
															<a href="#" class="big type3 btn_continue">계속 쇼핑하기</a>
														</div>
													</td>
												</tr>
												<!-- // 2016-03-25 : 추가 -->

												<!-- 반복영역 // -->
												<tr>
													<td><input type="checkbox" title="상품 선택" /></td><!-- 상품 선택 -->

													<td class="info">
														<a href="#"><!-- 상품 링크 -->
															<figure>
																<img src="/avenueCom/images/temp/cart_product_thumb.jpg" alt="" /><!-- 상품 썸네일 -->
																<figcaption class="subject_area">
																	<small class="genre type4">COUPON</small><!-- 2016-03-11 : 추가 -->
																	<strong class="subject dotdot">인디고 클러치 for 아이패드 (Indigo Clutch for Ipad)인디고 클러치 for 아이패드 (Indigo Clutch for Ipad)인디고</strong><!-- 상품 이름 -->
																	<small class="option">옵션 : 색상 - 엘로우,  사이즈 -  xl</small><!-- 상품 옵션 -->
																</figcaption>
															</figure>
														</a>
													</td>

													<td data-fn="price">10000원</td><!-- 상품 금액 : 2016-03-11 : 위치변경 -->

													<td><!-- 상품 수량 -->
														<span class="quantity">
															<input title="수량" type="text" value="1" data-type="onlyNumber" />
															<a class="btn_plus" href="javascript:void('0');">수량 +</a>
															<a class="btn_minus" href="javascript:void('0');">수량 -</a>
														</span>

														<div class="btn_area">
															<button type="button" class="small type3 btn_quantity">변경</button>
														</div>
													</td>

													<!-- 할인/쿠폰금액 : 2016-03-11 : 삭제
													<td>
														<span data-fn="price">2000원</span>
														<div class="btn_area">
															<a href="#product_coupon" class="small type3 btn_coupon" data-fn="popupBtnOpen">쿠폰변경</a> 쿠폰 적용 후
															<a href="#product_coupon" class="small type3 btn_coupon" data-fn="popupBtnOpen">쿠폰적용</a> 쿠폰 적용 전
														</div>
													</td>
													-->

													<td data-fn="price">8000원</td><!-- 주문금액 -->

													<td><!-- 주문하기 -->
														<div class="btn_area">
															<button type="submit" class="small type1 btn_order">주문</button>
															<button type="button" class="small type4 btn_del">삭제</button>
														</div>
													</td>
												</tr>
												<!-- // 반복영역 -->

												<!-- 배송비 영역 // -->
												<tr class="delevery">
													<td colspan="7">
														<!-- 2016-03-11 : 수정 //-->
														<em>배송비 <span data-fn="price">0</span>원</em>
														<!-- // 2016-03-11 : 수정 -->
														<span class="btn_area">
															<button type="button" class="small type4 btn_choice_del">선택상품 삭제</button>
														</span>
													</td>
												</tr>
												<!-- // 배송비 영역 -->
											</tbody>

											<!-- 결제금액 영역 // -->
											<tfoot>
												<tr class="price">
													<td colspan="7">
														<table>
															<caption>결제금액</caption>

															<colgroup>
																<col style="width:25%;" />
																<col style="width:25%;" />
																<col style="width:25%;" />
																<col style="width:25%;" />
															</colgroup>

															<thead>
																<tr>
																	<!-- 2016-03-11 : 수정 // -->
																	<th>총 상품금액</th>
																	<th>총 상품할인금액</th>
																	<th>배송비</th>
																	<th>최종 결제금액</th>
																	<!-- // 2016-03-11 : 수정 -->
																</tr>
															</thead>

															<tbody>
																<tr>
																	<td class="final" data-fn="price">185000원</td><!-- 주문금액 -->

																	<td class="discount"><!-- 총 할인금액 -->
																		<span data-fn="price">32000원</span>
																	</td>

																	<td class="delivery" data-fn="price">0원</td><!-- 배송비 -->

																	<td class="total" data-fn="price">153000원</td><!-- 최종 결제금액 -->
																</tr>
															</tbody>
														</table>
													</td>
												</tr>

												<!-- 할인, 배송비가 0원일때 최종금액만 표시 : 2016-03-11 추가
												<tr class="price">
													<td colspan="7">
														<table>
															<caption>결제금액</caption>

															<colgroup>
																<col style="width:100%;" />
															</colgroup>

															<thead>
																<tr>
																	<th>최종 결제금액</th>
																</tr>
															</thead>

															<tbody>
																<tr>
																	<td class="total" data-fn="price">153000원</td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>-->
											</tfoot>
											<!-- // 결제금액 영역 -->
										</table>

										<div class="btn_area">
											<button type="submit" class="big type2 btn_choice_order">선택상품 주문</button>
											<button type="submit" class="big type1 btn_all_order">전체상품 주문</button>
										</div>
									</fieldset>
								</form>
							</div>
						</section>
						<!-- // 상품 탭 -->

						<!-- 전시/공연/체험 탭 // -->
						<section>
							<h3 data-ui="tab_menu" data-fn="tab_menu"><a href="#ticket">전시/공연/체험</a></h3>

							<div data-ui="tab_content" id="ticket">
							<form>
									<fieldset>
										<legend>상품 장바구니</legend>

										<table>
											<caption>상품 장바구니 내역</caption>

											<colgroup>
												<!-- 2016-03-11 : 수정 // -->
												<col style="width:46px;" />
												<col />
												<col style="width:119px;" />
												<col style="width:135px;" />
												<col style="width:135px;" />
												<col style="width:135px;" />
												<!-- // 2016-03-11 : 수정 -->
											</colgroup>

											<thead>
												<tr>
													<th><input type="checkbox" title="전체선택" data-fn="allCheck" /></th>
													<!-- 2016-03-11 : 수정 // -->
													<th>상품정보</th>
													<th>상품금액</th>
													<th>수량</th>
													<th>주문금액</th>
													<th>주문하기</th>
													<!-- // 2016-03-11 : 수정 -->
												</tr>
											</thead>

											<tbody>
												<!-- 반복영역 // -->
												<tr>
													<td><input type="checkbox" title="상품 선택" /></td><!-- 상품 선택 -->

													<td class="info">
														<a href="#"><!-- 상품 링크 -->
															<figure>
																<img src="/avenueCom/images/temp/cart_ticket_thumb.jpg" alt="" /><!-- 상품 썸네일 -->
																<figcaption class="subject_area">
																	<small class="genre type1">전시</small>
																	<!--<small class="genre type2">공연</small>-->
																	<!--<small class="genre type3">체험</small>-->
																	<small class="genre type4">COUPON</small><!-- 2016-03-11 : 추가 -->
																	<strong class="subject">360stadium “Hello 2016”</strong><!-- 상품 이름 -->
																	<small class="option">옵션 : 날짜 - <time>2016-01-16</time>, 시간 - <time>13:00</time></small><!-- 상품 옵션 -->
																</figcaption>
															</figure>
														</a>
													</td>

													<td data-fn="price">10000원</td><!-- 상품 금액 : 2016-03-11 위치변경 -->

													<td><!-- 상품 수량 -->
														<span class="quantity">
															<input title="수량" type="text" value="1" data-type="onlyNumber" />
															<a class="btn_plus" href="javascript:void('0');">수량 +</a>
															<a class="btn_minus" href="javascript:void('0');">수량 -</a>
														</span>

														<div class="btn_area">
															<button type="button" class="small type3 btn_quantity">변경</button>
														</div>
													</td>

													<!-- 할인/쿠폰금액 : 2016-03-11 : 삭제
													<td>
														<span data-fn="price">2000원</span>
														<div class="btn_area">
															<a href="#product_coupon" class="small type3 btn_coupon" data-fn="popupBtnOpen">쿠폰적용</a>
														</div>
													</td>-->

													<td data-fn="price">8000원</td><!-- 주문금액 -->

													<td><!-- 주문하기 -->
														<div class="btn_area">
															<button type="submit" class="small type1 btn_order">주문</button>
															<button type="button" class="small type4 btn_del">삭제</button>
														</div>
													</td>
												</tr>
												<!-- // 반복영역 -->

												<!-- 배송비 영역 // -->
												<tr class="delevery">
													<td colspan="7">
														<span class="btn_area">
															<button type="button" class="small type4 btn_choice_del">선택상품 삭제</button>
														</span>
													</td>
												</tr>
												<!-- // 배송비 영역 -->
											</tbody>

											<!-- 결제금액 영역 // -->
											<tfoot>
												<tr class="price">
													<td colspan="7">
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
																	<th>총 상품금액</th>
																	<th>총 상품할인금액</th>
																	<th>최종 결제금액</th>
																	<!-- // 2016-03-11 : 수정 -->
																</tr>
															</thead>

															<tbody>
																<tr>
																	<td class="final" data-fn="price">185000원</td><!-- 주문금액 -->

																	<td class="discount"><!-- 총 할인금액 -->
																		<span data-fn="price">32000원</span>
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

										<div class="btn_area">
											<button type="submit" class="big type2 btn_choice_order">선택상품 주문</button>
											<button type="submit" class="big type1 btn_all_order">전체상품 주문</button>
										</div>
									</fieldset>
								</form>
							</div>
						</section>
						<!-- // 전시/공연/체험 탭 -->
					</div>
					<!-- // 탭 -->

					<!-- 2016-03-11 : 추가 // -->
					<div class="caution_area">
						<div class="text_area">
							<strong>알려드립니다.</strong>
							<div>
								<p>장바구니에 담긴 상품은 30일간 보관됩니다. (회원 전용 서비스)</p>
								<p>장바구니 보관 기간 중 상품 가격이나 혜택이 변동될 수 있습니다.</p>
								<p>쿠폰은 “MY PAGE > WALKSHOP > 쿠폰”에서 다운로드 후 사용 가능합니다.</p>
							</div>
						</div>

						<div class="btn_area">
							<a href="#" class="midium type4 btn_coupon">쿠폰다운</a>
						</div>
					</div>
					<!-- // 2016-03-11 : 추가 -->

					<!-- 상품쿠폰 팝업 // -->
					<div id="product_coupon" class="popup" data-ui="popup">
						<section class="popup_inner">
							<h2 class="popup_tit">상품 쿠폰선택</h2>

							<div class="popup_content">
								<!-- -->
								<form>
									<fieldset>
										<legend>상품 쿠폰</legend>

										<table>
											<caption>상품 쿠폰 리스트</caption>

											<colgroup>
												<col style="width:256px;" />
												<col style="width:216px;" />
												<col style="width:108px;" />
											</colgroup>

											<thead>
												<tr>
													<th>상품정보</th>
													<th>쿠폰선택</th>
													<th>쿠폰할인금액</th>
												</tr>
											</thead>

											<tbody>
												<tr>
													<td colspan="3" class="list">
														<div data-fn="overflow">
															<table>
																<caption>상품 쿠폰 리스트</caption>

																<colgroup>
																	<col style="width:256px;" />
																	<col style="width:216px;" />
																	<col style="width:108px;" />
																</colgroup>
																<!-- 반복영역 // -->
																<tr>
																	<td class="info">
																		<figure>
																			<img src="/avenueCom/images/temp/cart_product_thumb.jpg" alt="" /><!-- 상품 썸네일 -->
																			<figcaption class="subject_area">
																				<strong class="subject">인디고 클러치 for 아이패드 (Indigo Clutch for Ipad)</strong><!-- 상품 이름 -->
																				<small class="option">색상 - 엘로우,  사이즈 -  xl</small><!-- 상품 옵션 -->
																			</figcaption>
																		</figure>
																	</td>
																	<td>
																		<select>
																			<!--<option>쿠폰이 없습니다.</option>--><!-- 쿠폰이 없을때 -->
																			<!--<option>사용안함.</option>--><!-- 쿠폰사용안함 -->
																			<option>쿠폰을 선택하세요.</option>
																			<option>1</option>
																			<option>2</option>
																		</select>
																	</td>
																	<td data-fn="price">2500원</td>
																</tr>
																<!-- // 반복영역 -->

																<tr>
																	<td class="info">
																		<figure>
																			<img src="/avenueCom/images/temp/cart_product_thumb.jpg" alt="" /><!-- 상품 썸네일 -->
																			<figcaption class="subject_area">
																				<strong class="subject">인디고 클러치 for 아이패드 (Indigo Clutch for Ipad)</strong><!-- 상품 이름 -->
																				<small class="option">색상 - 엘로우,  사이즈 -  xl</small><!-- 상품 옵션 -->
																			</figcaption>
																		</figure>
																	</td>
																	<td>
																		<select>
																			<!--<option>쿠폰이 없습니다.</option>--><!-- 쿠폰이 없을때 -->
																			<option>쿠폰을 선택하세요.</option>
																			<option>1</option>
																			<option>2</option>
																		</select>
																	</td>
																	<td data-fn="price">2500원</td>
																</tr>

																<tr>
																	<td class="info">
																		<figure>
																			<img src="/avenueCom/images/temp/cart_product_thumb.jpg" alt="" /><!-- 상품 썸네일 -->
																			<figcaption class="subject_area">
																				<strong class="subject">인디고 클러치 for 아이패드 (Indigo Clutch for Ipad)</strong><!-- 상품 이름 -->
																				<small class="option">색상 - 엘로우,  사이즈 -  xl</small><!-- 상품 옵션 -->
																			</figcaption>
																		</figure>
																	</td>
																	<td>
																		<select>
																			<!--<option>쿠폰이 없습니다.</option>--><!-- 쿠폰이 없을때 -->
																			<option>쿠폰을 선택하세요.</option>
																			<option>1</option>
																			<option>2</option>
																		</select>
																	</td>
																	<td data-fn="price">2500원</td>
																</tr>

															</table>
														</div>
													</td>
												</tr>
											</tbody>
										</table>

										<div class="btn_area">
											<button type="button" class="midium type1" data-fn="popupBtnClose">쿠폰적용</button>
											<button type="button" class="midium type2 btn_cancel" data-fn="popupBtnClose">취소</button>
										</div>
									</fieldset>
								</form>
								<!-- -->

								<button type="button" class="btn_close" data-fn="popupBtnClose">닫기</button>
							</div>
						</section>
					</div>
					<!-- // 상품쿠폰 팝업 -->

					<!-- 배송비쿠폰 팝업 // -->
					<div id="delivery_coupon" class="popup" data-ui="popup">
						<section class="popup_inner">
							<h2 class="popup_tit">배송비 쿠폰선택</h2>

							<div class="popup_content">
								<!-- -->
								<form>
									<fieldset>
										<legend>배송비 쿠폰</legend>

										<table>
											<caption>배송비 쿠폰 리스트</caption>

											<colgroup>
												<col style="width:276px;" />
												<col style="width:164px;" />
											</colgroup>

											<thead>
												<tr>
													<th>쿠폰선택</th>
													<th>쿠폰할인금액</th>
												</tr>
											</thead>

											<tbody>
												<tr>
													<td>
														<select>
															<!--<option>쿠폰이 없습니다.</option>--><!-- 쿠폰이 없을때 -->
															<option>쿠폰을 선택하세요.</option>
															<option>1</option>
															<option>2</option>
														</select>
													</td>
													<td data-fn="price">2500원</td>
												</tr>
											</tbody>
										</table>

										<div class="btn_area">
											<button type="button" class="midium type1" data-fn="popupBtnClose">쿠폰적용</button>
											<button type="button" id="btn_cancel" class="midium type2" data-fn="popupBtnClose">취소</button>
										</div>
									</fieldset>
								</form>
								<!-- -->

								<button type="button" class="btn_close" data-fn="popupBtnClose">닫기</button>
							</div>
						</section>
					</div>
					<!-- // 배송비쿠폰 팝업 -->

					<script>
					$('.btn_del, .btn_choice_del').click(function(){
						var del = confirm('선택하신 상품을 장바구니에서 삭제하시겠습니까?');

						if ( del ) {

						}
					});
					</script>

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
