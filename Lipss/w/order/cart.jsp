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
	<main id="wrap" class="order cart">
		<div id="contents" class="">

			<div class="tit_area">
				<h2 class="tit"><span>Cart</span>장바구니</h2>

				<ol class="progress">
					<li class="now">장바구니</li>
					<li>주문결제</li>
					<li>주문완료</li>
				</ol>
			</div>

			<div class="form_area">
				<form>
					<fieldset class="list_field">
						<legend class="hide">장바구니</legend>

						<table class="tbl_type1">
							<caption class="hide">장바구니 목록</caption>

							<colgroup>
								<col style="width:520px">
								<col style="width:120px">
								<col style="width:80px">
								<col style="width:160px">
								<col style="width:160px">
							</colgroup>

							<thead>
								<tr>
									<th>상품정보</th>
									<th>가격</th>
									<th>수량</th>
									<th>주문금액</th>
									<th>주문</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td colspan="5" class="no_data">
										장바구니에 담긴 상품이 없습니다.<br />No items contained in Shopping Cart
									</td>
								</tr>
								<!-- 반복영역 // -->
								<tr>
									<td>
										<!-- 수정 : 2018.11.22 // -->
										<div class="chk_area">
											<span class="txt_num">1</span>
											<input type="checkbox" id="checkbox1" class="chk_type2"><label for="checkbox1">선택</label><!-- 2018.04.19 : 수정 -->
										</div>
										<!-- // 수정 : 2018.11.22 -->

										<figure class="img_area">
											<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
										</figure>

										<div class="info_area">
											<!-- 상태아이콘 : 추가 : 2018.04.25 // -->
											<div class="icon_area">
												<span class="icon_only">ONLY</span>
												<span class="icon_new">NEW</span>
												<%-- <span class="icon_soldout">SOLD OUT</span>
												<span class="icon_end">종료예정</span>
												<span class="icon_sale">판매예정</span> --%>
											</div>
											<!-- // 상태아이콘 -->

											<a href="#" class="subject">[젝스키스] The studio 은지원 no.1</a>

											<!-- 삭제 : 2018.04.26
											<dl class="option">
												<dt>Option</dt>
												<dd>Stand – 매트 (8X12)</dd>
											</dl>
											-->

											<a href="#cart_option1" class="btn_option" onclick="fn.cartOptionOpen('#cart_option1');">옵션변경(Change Option)</a><!-- 2018.04.19 : 수정 -->
										</div>

										<!-- 옵션 변경 : 2018.04.30 : 2018.04.19 : 수정  // -->
										<div id="cart_option1" class="popup cart_option">
											<div class="inner">
												<header class="header">
													<h2 class="tit">Option <span>(Size – Type)</span></h2><!-- 수정 : 2018.06.05 -->

													<button type="reset" class="btn_close" onclick="fn.cartOptionClose();">닫기</button><!-- 수정 : 2018.05.09 -->
												</header>

												<div class="contents">
													<input type="checkbox" id="list_post_matt1" name="list_option1" class="chk_type2 ori_checked" disabled><label for="list_post_matt1">Post - 매트 <span>&#8361; 5,000</span></label><!-- 장바구니 담을때 선택했던 옵션 <input type="radio" class="ori_checked" disabled> -->
													<input type="checkbox" id="list_stand_matt1" name="list_option1" class="chk_type2"><label for="list_stand_matt1">Stand - 매트 <span>&#8361; 5,000</span></label>
													<input type="checkbox" id="list_stand_flex1" name="list_option1" class="chk_type2"><label for="list_stand_flex1">Stand - 플렉스 <span>&#8361; 5,000</span></label>
													<input type="checkbox" id="list_frame_matt1" name="list_option1" class="chk_type2"><label for="list_frame_matt1">Frame - 매트 <span>&#8361; 5,000</span></label>
													<input type="checkbox" id="list_frame_flex1" name="list_option1" class="chk_type2"><label for="list_frame_flex1">Frame - 플렉스 <span>&#8361; 5,000</span></label>
													<input type="checkbox" id="list_frame_canvas1" name="list_option1" class="chk_type2"><label for="list_frame_canvas1">Frame - 캔버스 <span>&#8361; 5,000</span></label>

													<div class="btn_area">
														<button type="button" class="btn_cart"><span>담기 <span>Add to cart</span></span></button><!-- 수정 : 2018.05.09 -->
														<button type="reset" class="btn_cancel" onclick="fn.cartOptionClose();"><span>취소 <span>Cancel</span></span></button><!-- 추가 : 2018.05.09 -->
													</div>
												</div>
											</div>
										</div>
										<!-- // 옵션 변경 -->
									</td>
									<td class="price">&#8361; 5,000</td>
									<td>
										<div class="ea_area">
											<input type="number" title="수량 입력" value="1" readonly>
											<button type="button" class="btn_down" onclick="fn.optionEaDown(this);">수량 낮추기</button>
											<button type="button" class="btn_up" onclick="fn.optionEaUp(this);">수량 올리기</button>
										</div>
									</td>
									<td class="price">&#8361; 5,000</td>
									<td class="btn">
										<%-- <button type="button" class="btn_buy">구매하기<span>Buy</span></button> --%>
										<button type="button" class="btn_buy" disabled>구매하기<span>Buy</span></button><!-- 구매 불가 : 추가 : 2018.05.15 -->
										<!-- <button type="button" class="btn_soldout" disabled>품절<span>Sold Out</span></button>--> <!-- 품절시 -->
										<button type="button" class="btn_del">삭제</button>
									</td>
								</tr>
								<!-- // 반복영역 -->

								<tr>
									<td>
										<!-- 수정 : 2018.11.22 // -->
										<div class="chk_area">
											<span class="txt_num">1234567</span>
											<input type="checkbox" id="checkbox2" class="chk_type2"><label for="checkbox2">선택</label>
										</div>
										<!-- // 수정 : 2018.11.22 -->

										<figure class="img_area">
											<img src="/w/pjtCom/images/temp/img_goods_440x294.jpg" alt="" class="img">
										</figure>

										<div class="info_area">
											<div class="icon_area">
												<span class="icon_soldout">SOLD OUT</span>
											</div>

											<a href="#" class="subject">[젝스키스] The studio 은지원 no.1</a>

											<a href="#cart_option2" class="btn_option" onclick="fn.cartOptionOpen('#cart_option2');">옵션변경(Change Option)</a>
										</div>

										<div id="cart_option2" class="popup cart_option">
											<div class="inner">
												<header class="header">
													<h2 class="tit">Option <span>(Size – Type)</span></h2>

													<button type="reset" class="btn_close" onclick="fn.cartOptionClose();">닫기</button>
												</header>

												<div class="contents">
													<input type="checkbox" id="list_post_matt2" name="list_option2" class="chk_type2" disabled><label for="list_post_matt2">Post - 매트</label>
													<input type="checkbox" id="list_stand_matt2" name="list_option2" class="chk_type2" disabled><label for="list_stand_matt2">Stand - 매트</label>
													<input type="checkbox" id="list_stand_flex2" name="list_option2" class="chk_type2" disabled><label for="list_stand_flex2">Stand - 플렉스</label>
													<input type="checkbox" id="list_frame_matt2" name="list_option2" class="chk_type2" disabled><label for="list_frame_matt2">Frame - 매트</label>
													<input type="checkbox" id="list_frame_flex2" name="list_option2" class="chk_type2" disabled><label for="list_frame_flex2">Frame - 플렉스</label>
													<input type="checkbox" id="list_frame_canvas2" name="list_option2" class="chk_type2" disabled><label for="list_frame_canvas2">Frame - 캔버스</label>

													<div class="btn_area">
														<button type="button" class="btn_cart"><span>변경 <span>Change</span></span></button>
														<button type="reset" class="btn_cancel" onclick="fn.cartOptionClose();"><span>취소 <span>Cancel</span></span></button>
													</div>
												</div>
											</div>
										</div>
									</td>
									<td class="price">&#8361; 5,000</td>
									<td>
										<div class="ea_area">
											<input type="number" title="수량 입력" value="1" readonly>
											<button type="button" class="btn_down" onclick="fn.optionEaDown(this);">수량 낮추기</button>
											<button type="button" class="btn_up" onclick="fn.optionEaUp(this);">수량 올리기</button>
										</div>
									</td>
									<td class="price">&#8361; 5,000</td>
									<td class="btn">
										<button type="button" class="btn_soldout" disabled>품절<span>Sold Out</span></button>
										<button type="button" class="btn_del">삭제</button>
									</td>
								</tr>
							</tbody>
						</table>

						<div class="btn_area">
							<input type="checkbox" id="chk_all" class="chk_type3"><label for="chk_all">선택</label>
							<button type="button" class="btn_del">선택삭제<span>Delete Option</span></button>
							<!-- // 추가 : 2018.10.17 -->
							<a href="#cost_guide" class="btn_guide" onclick="fn.popupOpen('#cost_guide');">Shipping Cost Guide &gt;</a>
							<div id="cost_guide" class="popup cost_guide">
								<div class="inner">
									<header class="header">
										<h2 class="tit">Shipping Cost Guide</h2>

										<button type="button" class="btn_close" onclick="fn.popupClose ('#cost_guide');">닫기</button>
									</header>

									<div class="contents">
									</div>
								</div>
							</div>
							<!-- // 추가 : 2018.10.17 -->
						</div>

						<p class="txt_alert">결제금액 3만원 이상일 경우 배송비 무료</p><!-- 추가 : 2018.10.17 -->
					</fieldset>

					<fieldset class="price_field">
						<legend class="hide">결제내역</legend>

						<dl class="subtotal">
							<dt>총 상품금액<span>Subtotal</span></dt>
							<dd>&#8361; 43,000</dd>
						</dl>

						<%-- <dl class="discount">
							<dt>할인금액<span>Discount</span></dt>
							<dd>&#8361; 10,000</dd>
						</dl> --%>

						<dl class="shipping">
							<dt>배송비<span>Shipping</span></dt>
							<dd>&#8361; 2,500</dd>
						</dl>

						<dl class="total">
							<dt>최종 결제금액<span>Total</span></dt>
							<dd>&#8361; 143,000</dd>
						</dl>
					</fieldset>

					<div class="btn_area">
						<!-- <button type="button" class="btn_nomember">비회원 구매하기<span>Guest Order</span></span></button> --> <!-- 삭제 : 2018.05.09 -->
						<button type="button" class="btn_abroad"><span>해외배송<span>International Shipping</span></span></button><!-- 추가 : 2018.10.17 -->
						<a href="\w\order\order_step1.jsp" class="btn_member"><span>구매하기<span>Domestic Shipping</span></span></a>
					</div>
				</form>
			</div>

			<div class="text_area">
				<strong>알려드립니다.(Be informed)</strong>
				<p>장바구니 보관 기간은 60일 입니다. 60일 이후 자동 삭제 됩니다.<br>(Items can be stored in shopping cart for 60 days. Items are automatically deleted after 60 days.)</p>
				<!-- 수정 : 2018.10.17 // -->
				<p>배송국가에 따라 해외 배송비가 책정되며 주문서 작성에서 확인이 가능합니다.<br>(International shipping fees are set depending on the destination country. You can check while filling in an order form.)</p>
				<p>일반상품은 해외배송이 불가능하며 사진인화 상품만 가능합니다.<br>(General items are not available for international shipping but photo prints are available.)</p>
				<p>주문 취소 및 수정은 결제 후 1시간 이내에만 가능하며, 이후에는 주문 취소 및 수정이 불가합니다.<br>(Cancel/Change Order is available only within one hour after payment. After that, Cancel/Change Order is not allowed.)</p>
				<!-- // 수정 : 2018.10.17 -->
			</div>

		</div>
	</main>
	<!-- // wrap -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>

</html>
