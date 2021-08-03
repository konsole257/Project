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
	<main id="wrap" class="order step1">
		<div id="contents" class="">

			<div class="tit_area">
				<h2 class="tit"><span>Payment</span>주문결제</h2>

				<ol class="progress">
					<li>장바구니</li>
					<li class="now">주문결제</li>
					<li>주문완료</li>
				</ol>
			</div>

			<div class="form_area">
				<form>
					<fieldset class="list_field">
						<legend class="hide">주문 상품</legend>
						<button type="button" class="btn_order_inquiry">1개 주문상품 더보기</button>

						<table class="tbl_type1">
							<caption class="hide">주문결제 목록</caption>

							<colgroup>
								<col style="width:560px">
								<col style="width:80px">
								<col style="width:400px">
							</colgroup>

							<thead>
								<tr>
									<th>주문상품</th>
									<th>수량</th>
									<th>총 주문금액</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td>
										<figure class="img_area">
											<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
										</figure>

										<div class="info_area">
											<span class="subject">[젝스키스] The studio 은지원 no.1The studio 은지원 no.1The studio 은지원 no.1 (외 1건)</span>
											<dl class="option">
												<dt>Option</dt>
												<dd>Stand – 매트 (8X12)</dd>
											</dl>
										</div>
									</td>
									<td>3</td>
									<td class="price">
										<span>&#8361; 5,000</span>
									</td>
								</tr>
							</tbody>
						</table>

						<strong class="subtotal">총 주문금액 : &#8361; 43,000</strong>
					</fieldset>

					<!-- 주문자 정보 // -->
					<fieldset class="orderer_field">
						<legend class="tit">주문자 정보</legend>

						<table class="tbl_type2">
							<caption>주문자 정보 입력</caption>

							<colgroup>
								<col style="width:85px;">
								<col style="width:196px;">
								<col style="width:131px;">
								<col style="width:189px;">
								<col style="width:97px;">
								<col style="width:343px;">
							</colgroup>

							<tbody>
								<tr>
									<th>이름(Name)</th>
									<td><input type="text" placeholder="Full name" class="txt_type1 write_name"></td>
									<th>휴대폰 번호(Mobile phone number)</th>
									<td><input type="text" placeholder="Mobile number" class="txt_type1 write_phone"></td>
									<th>이메일(Email Address)</th>
									<td>
										<input type="text" placeholder="Email Address" title="이메일 입력" class="txt_type1 write_mail1 long">
									</td>
								</tr>
							</tbody>
						</table>
					</fieldset>
					<!-- // 주문자 정보 -->

					<!-- 배송지 정보 // -->
					<fieldset class="delivery_field">
						<legend class="tit">배송지 정보</legend>
						<p class="txt_alert">배송지 관련 모든 정보는 반드시 영문으로 작성해 주셔야 합니다.</ class="txt_are"p>

						<table class="tbl_type2">
							<caption>배송지 정보 입력</caption>

							<colgroup>
								<col style="width:200px;">
								<col style="width:860px;">
							</colgroup>

							<tbody>
								<tr>
									<th>국가(Country)</th>
									<td>
										<label class="select write_country">
											<select>
												<option>국가선택</option>
												<option></option>
												<option></option>
											</select>
										</label>
									</td>
								</tr>
								<tr>
									<th>총중량(Weight)</th>
									<td class="txt_cell">1.06kg</td>
								</tr>
								<tr>
									<th>배송료(EMS Cost)</th>
									<td class="txt_cell">
										&#8361; 27,370원 <a href="#cost_guide" class="btn_guide" onclick="fn.popupOpen('#cost_guide');">Shipping Cost Guide &gt;</a>
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
									</td>
								</tr>
								<tr>
									<th>이름</th>
									<td><input type="text" placeholder="Full name" class="txt_type1 write_name"></td>
								</tr>

								<!-- 추가 : 2018.11.27 // -->
								<tr>
									<th>Email Address</th>
									<td><input type="text" placeholder="Email Address" class="txt_type1 write_name"></td>
								</tr>
								<!-- // 추가 : 2018.11.27 -->

								<tr class="line_two">
									<th>Mobile phone<br />number</th>
									<td>
										<label class="select write_abroad_phone">
											<select>
												<option>= Choose Country Code =</option>
											</select>
											<input type="text" placeholder="Mobile number" class="txt_type1">
										</label>
									</td>
								</tr>
								<tr>
									<th>상세주소</th>
									<td><input type="text" placeholder="Street Address" class="txt_type1 write_address4"></td>
								</tr>
								<tr>
									<th>도시/주</th>
									<td>
										<div>
											<input type="text" placeholder="City" class="txt_type1 write_address2">
											<input type="text" placeholder="State/Province" class="txt_type1 write_address3">
										</div>
									</td>
								</tr>
								<tr>
									<th>우편번호</th>
									<td><input type="text" placeholder="Zip/Postal Code" class="txt_type1 write_zip"></td>
								</tr>
								<tr class="line_two">
									<th>Order message<br />(within 100 characters)</th>
									<td><input type="text" class="txt_type1 write_msg" title="주문메시지 입력" placeholder="100 characters"></td>
								</tr>
							</tbody>
						</table>
					</fieldset>
					<!-- // 배송지 정보 -->

					<!-- 해외배송 약관 동의 // -->
					<div class="terms_abroad">
						<div class="agree_area">
							<input type="checkbox" id="terms" class="chk_type2" checked><label for="terms">해외배송 약관 동의 <strong class="required">(필수)</strong></label>
						</div>
						<div class="content">
							<div class="inner">
								<ol>
									<li>1. 해외배송 시 고객이 직접 입력한 배송지 정보로 물품이 배송되며 배송지 정보를 잘못 입력한 경우 모든 책임은 고객이 부담합니다.</li>
									<li>2. 국가별 세법에 따라 세금을 징수할 수 있습니다. 그 부담은 상품을 받는 사람이 지게 됩니다.</li>
									<li>3. 해외에서 상품을 받으신 후 반송을 해야 할 경우 고객센터로 연락주시기 바라며, 반품 시 발생하는 EMS요금은 고객 부담입니다.</li>
								</ol>
							</div>
						</div>
					</div>
					<!-- // 해외배송 약관 동의 -->

					<div class="bottom_area">
						<div class="left_area">
							<!-- 할인혜택 // -->
							<fieldset class="discount_field">
								<legend class="tit">할인혜택 (Discount Benefits)</legend>

								<table class="tbl_type2">
									<caption>쿠폰 사용</caption>

									<tbody>
										<tr>
											<th>장바구니쿠폰 <small>(Shopping Cart Coupon)</small> (보유쿠폰 <small>(available coupon)</small> <span>1</span>장)</th>
										</tr>

										<tr>
											<td>
												<input type="text" placeholder="0" title="장바구니쿠폰 사용" class="txt_type1 write_number">
												<button type="button" class="btn_apply" onclick="fn.popupOpen('#cart_coupon')"><span>사용<span>Use</span></span></button>
												<button type="button" class="btn_cancel"><span>초기화<span>Initialize</span></span></button>
											</td>
										</tr>

										<tr>
											<th>프로모션 코드 <small>(Promotion code)</small></th>
										</tr>

										<tr>
											<td>
												<input type="text" placeholder="Coupon Number" title="프로모션 코드 입력" class="txt_type1 write_code"><!-- 2018.11.27 : 수정 -->
												<button type="button" class="btn_apply"><span>등록<span>Sign up</span></span></button>
												<button type="button" class="btn_cancel"><span>초기화<span>Initialize</span></span></button>
												<p class="txt_promotion">프로모션 코드와 장바구니 쿠폰은 중복사용이 불가합니다.<br />(The promotion code and shopping cart coupon cannot be used in duplicate.)</p>
											</td>
										</tr>
									</tbody>
								</table>
							</fieldset>
							<!-- 결제 수단 // -->
							<fieldset class="pay_field">
								<legend class="tit">결제 수단</legend>

								<div class="pay_choose abroad"><!-- 해외배송일때 class명 abroad 추가 -->
									<input type="radio" class="rdo_type1" name="pay" id="pay_card" checked><label for="pay_card">신용카드</label>
								</div>
							</fieldset>
							<!-- // 결제 수단 -->
						</div>

						<!-- 결제금액 // -->
						<fieldset class="price_field">
							<legend class="tit">결제금액</legend>

							<div class="price_area">
								<table>
									<caption>결제 내역</caption>

									<colgroup>
										<col style="width:50%">
										<col style="width:50%">
									</colgroup>

									<tbody>
										<tr>
											<th>총 주문금액 <span>(Subtotal)</span></th>
											<td>&#8361; 43,000</td>
										</tr>

										<tr>
											<th>총 할인금액 <span>(Discount)</span></th>
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
											<td>&#8361; 40,500</td>
										</tr>
									</tfoot>
								</table>

								<!-- 비회원 주문 약관 // -->
								<div class="terms_area">
									<!-- 주문동의  -->
									<div class="terms_order open">
										<div class="agree_area">
											<input type="checkbox" id="order" class="chk_type2" checked><label for="order">주문동의 <strong class="required">(필수)</strong></label>
										</div>
										<div class="content">
											<div class="inner">
												주문할 상품의 상품명, 상품가격, 배송 정보를 확인하였으며, 구매에 동의하시겠습니까? (전자상거래법 제 8조 2항)
											</div>
										</div>
									</div>
									<!-- // 주문동의 -->
								</div>
								<!-- // 비회원 주문 약관 -->

								<a href="\w\order\order_step2.jsp" class="btn_pay"><span>결제하기 <span>Check Out</span></span></a>
							</div>
						</fieldset>
						<!-- // 결제금액 -->
					</div>

					<div class="txt_area">
						<strong>Be informed.</strong>
						<p>"Exchange items for international shipping" are available only for the items that are received within 20 days after they are out of warehouse (shipping completed).</p>
						<p>Cancel/Change Order is available only within one hour after payment. After that, Cancel/Change Order is not allowed.</p>
					</div>
				</form>
			</div>

		</div>
	</main>
	<!-- // wrap -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->

	<script>
	fn.payLoading();
	</script>
</body>

</html>
