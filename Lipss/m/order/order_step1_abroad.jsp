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
<div id="wrap" class="order_step1">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<h1 id="subTitle">주문결제 <span>Payment</span></h1>

	<!-- content// -->
	<main id="contents">

		<div class="order_area">
			<section class="goods_area">
				<h2>주문 상품</h2>

				<a href="#order_view" class="btn_orderview" onclick="fn.popupOpen('#order_view');">주문상품보기</a>

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

			<section class="orderer_area">
				<h2>주문자 정보</h2>

				<table>
					<colgroup>
						<col style="width:90px;">
						<col style="">
					</colgroup>

					<tbody>
						<tr>
							<th>이름(Name)</th>
							<td><input type="text" title="이름 입력" class="inp_type1" placeholder="Full Name" /></td>
						</tr>

						<tr>
							<th>휴대폰 번호(Mobile Number)</th>
							<td><input type="text" title="휴대폰 번호 입력" class="inp_type1" placeholder="Mobile Number" /></td>
						</tr>
						<tr>
							<th>이메일(Email Address)</th>
							<td>
								<input type="text" title="이메일 입력" class="inp_type1" placeholder="Email Address" />
							</td>
						</tr>
					</tbody>
				</table>
			</section>

			<section class="delivery_area abroad"><!-- 해외배송일때 class명 abroad 추가 -->
				<h2>배송지 정보</h2>
				<p class="txt_alert">배송지 관련 모든 정보는 반드시 영문으로 작성해 주셔야 합니다.</p>

				<table>
					<colgroup>
						<col style="width:90px;">
						<col style="">
					</colgroup>

					<tbody>
						<tr>
							<th>국가<br />(Country)</th>
							<td>
								<div class="select country">
									<select title="국가 선택">
										<option>국가 선택</option>
										<option>국가 선택1</option>
										<option>국가 선택2</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th>총중량<br />(Weight)</th>
							<td class="txt_cell">1.06kg</td>
						</tr>
						<tr>
							<th>배송료<br />(EMS Cost)</th>
							<td class="txt_cell"><span>&#8361; 27,370원</span><a href="#cost_guide" class="btn_guide" onclick="fn.popupOpen('#cost_guide');">Shipping Cost Guide &gt;</a></td>
						</tr>
						<tr>
							<th>이름</th>
							<td><input type="text" title="이름 입력" class="inp_type1" placeholder="Full Name" /></td>
						</tr>

						<!-- 추가 : 2018.11.27 // -->
						<tr>
							<th>Email<br>Address</th>
							<td><input type="text" title="메일 입력" class="inp_type1" placeholder="Email Address" /></td>
						</tr>
						<!-- // 추가 : 2018.11.27 -->

						<tr>
							<th>휴대폰 번호</th>
							<td>
								<div class="select country">
									<select title="국가번호 선택">
										<option>국가번호선택</option>
										<option>국가번호선택1</option>
										<option>국가번호선택2</option>
									</select>
								</div>
								<input type="text" title="휴대폰 번호 입력" class="inp_type1 write_abroad_phone" placeholder="Mobile Number" />
							</td>
						</tr>
						<tr>
							<th>상세주소</th>
							<td><input type="text" title="주 입력" class="inp_type1" placeholder="Street Address" /></td>
						</tr>
						<tr>
							<th rowspan="2">도시/주</th>
							<td><input type="text" title="도 입력" class="inp_type1" placeholder="City" /></td>
						</tr>
						<tr>
							<td><input type="text" title="주 입력" class="inp_type1" placeholder="State/Province" /></td>
						</tr>
						<tr>
							<th>우편번호</th>
							<td><input type="text" title="우편번호 입력" class="inp_type1" placeholder="Zip/Postal Code" /></td>
						</tr>
						<tr>
							<th>주문메세지<br />(100자 이내)</th>
							<td>
								<textarea class="textarea"></textarea>
							</td>
						</tr>
					</tbody>
				</table>

				<!-- 해외배송 약관 동의 // -->
				<div class="terms_abroad">
					<div class="agree_cont">
						<div class="agree_head">
							<label><input type="checkbox" class="chk_type1" /><span>Agree to International Shipping Terms <b>(Required)</b></span></label>
						</div>
						<div class="agree_body">
							<ol>
								<li>1. 해외배송 시 고객이 직접 입력한 배송지 정보로 물품이 배송되며 배송지 정보를 잘못 입력한 경우 모든 책임은 고객이 부담합니다.</li>
								<li>2. 국가별 세법에 따라 세금을 징수할 수 있습니다. 그 부담은 상품을 받는 사람이 지게 됩니다.</li>
								<li>3. 해외에서 상품을 받으신 후 반송을 해야 할 경우 고객센터로 연락주시기 바라며, 반품 시 발생하는 EMS요금은 고객 부담입니다.</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- // 해외배송 약관 동의 -->
			</section>

			<section class="benefit_area">
				<h2>할인혜택</h2>

				<table>
					<tbody>
						<tr>
							<th>장바구니쿠폰 <small>(Shopping Cart Coupon)</small><br />(보유쿠폰 <small>(available coupon)</small> <span>1</span>장)</th>
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
								<input type="text" placeholder="Coupon Number" title="프로모션 코드 입력" class="txt_type1 write_code"> <!-- 2018.11.27 : 수정 -->
								<button type="button" class="btn_apply"><span>등록<span>Sign up</span></span></button>
								<button type="button" class="btn_cancel"><span>초기화<span>Initialize</span></span></button>
								<p class="txt_promotion">프로모션 코드와 장바구니 쿠폰은 중복사용이 불가합니다.<br />(The promotion code and shopping cart coupon cannot be used in duplicate.)</p>
							</td>
						</tr>
					</tbody>

				</table>

				<%-- <div class="btn_area">
					<button type="button" class="btn_apply">적용<span>Ok</span></button>
					<button type="button" class="btn_cancel">취소<span>Cancel</span></button>
				</div> --%>
			</section>

			<section class="pay_area abroad"><!-- 해외배송일때 class명 abroad 추가 -->
				<h2>결제수단</h2>

				<label><input type="radio" name="pay" class="rdo_type1"><span>신용카드</span></label>
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

			<section class="agree_area">
				<div class="agree_cont active">
					<div class="agree_head">
						<label><input type="checkbox" class="chk_type1" /><span>주문동의 <b>(필수)</b></span></label>
					</div>
					<div class="agree_body">
						주문할 상품의 상품명, 상품가격, 배송 정보를 확인하였으며, 구매에 동의하시겠습니까?<br>
						(전자상거래법 제 8조 2항)
					</div>
				</div>
			</section>

			<section class="txt_area">
				<strong>알려드립니다.</strong>

				<ul>
					<li>결제금액이 3만원 이상일 경우 배송비는 무료입니다.</li>
					<li>결제금액이 3만원 미만일 경우 배송비 2,500원이 부과됩니다.</li>
					<li>교환 및 반품은 물품 수령 후 7일 이내에 접수 후 당사에 입고 된 상품에 한하여 처리됩니다.</li>
				</ul>
			</section>

			<a href="/m/order/order_step2.jsp" class="btn_purple">결제하기<span>Check Out</span></a>
		</div>

	</main>
	<!-- //content -->

	<!-- 주문상품 확인// -->
	<div id="order_view" class="popup order_view">
		<div class="popup_area">
			<div class="inner">
				<button type="button" class="btn_close" onclick="fn.popupClose('#order_view')">닫기</button>
				<h3>주문상품 확인 <span>Product Order Check</span></h3>

				<div class="swiper-container popscroll scroll_area"><div class="swiper-wrapper"><div class="swiper-slide">
					<div class="txt">
						<ul class="order_list">
							<!-- 반복영역 // -->
							<li>
								<div class="goods_info">
									<figure class="img_area">
										<img src="/m/mpjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
									</figure>

									<div class="info_area">
										<span class="subject">
											[젝스키스] The studio 은지원 no.1
										</span>

										<div class="option">Stand – 매트 (8X12)</div>

										<dl>
											<dt>금액</dt>
											<dd>&#8361; 15,000</dd>
										</dl>

										<dl>
											<dt>수량</dt>
											<dd>7개</dd>
										</dl>

										<dl>
											<dt>주문금액</dt>
											<dd>&#8361; 115,000</dd>
										</dl>
									</div>
								</div>
							</li>
							<!-- // 반복영역 -->

							<li>
								<div class="goods_info">
									<figure class="img_area">
										<img src="/m/mpjtCom/images/temp/img_goods_440x294.jpg" alt="" class="img">
									</figure>

									<div class="info_area">
										<span class="subject">
											[젝스키스] The studio 은지원 no.1
										</span>

										<div class="option">Stand – 매트 (8X12)</div>

										<dl>
											<dt>금액</dt>
											<dd>&#8361; 15,000</dd>
										</dl>

										<dl>
											<dt>수량</dt>
											<dd>7개</dd>
										</dl>

										<dl>
											<dt>주문금액</dt>
											<dd>&#8361; 115,000</dd>
										</dl>
									</div>
								</div>
							</li>

							<li>
								<div class="goods_info">
									<figure class="img_area">
										<img src="/m/mpjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
									</figure>

									<div class="info_area">
										<span class="subject">
											[젝스키스] The studio 은지원 no.1
										</span>

										<div class="option">Stand – 매트 (8X12)</div>

										<dl>
											<dt>금액</dt>
											<dd>&#8361; 15,000</dd>
										</dl>

										<dl>
											<dt>수량</dt>
											<dd>7개</dd>
										</dl>

										<dl>
											<dt>주문금액</dt>
											<dd>&#8361; 115,000</dd>
										</dl>
									</div>
								</div>
							</li>

							<li>
								<div class="goods_info">
									<figure class="img_area">
										<img src="/m/mpjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
									</figure>

									<div class="info_area">
										<span class="subject">
											[젝스키스] The studio 은지원 no.1
										</span>

										<div class="option">Stand – 매트 (8X12)</div>

										<dl>
											<dt>금액</dt>
											<dd>&#8361; 15,000</dd>
										</dl>

										<dl>
											<dt>수량</dt>
											<dd>7개</dd>
										</dl>

										<dl>
											<dt>주문금액</dt>
											<dd>&#8361; 115,000</dd>
										</dl>
									</div>
								</div>
							</li>

							<li>
								<div class="goods_info">
									<figure class="img_area">
										<img src="/m/mpjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
									</figure>

									<div class="info_area">
										<span class="subject">
											[젝스키스] The studio 은지원 no.1
										</span>

										<div class="option">Stand – 매트 (8X12)</div>

										<dl>
											<dt>금액</dt>
											<dd>&#8361; 15,000</dd>
										</dl>

										<dl>
											<dt>수량</dt>
											<dd>7개</dd>
										</dl>

										<dl>
											<dt>주문금액</dt>
											<dd>&#8361; 115,000</dd>
										</dl>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div></div><div class="swiper-scrollbar"></div></div>
			</div>
		</div>
	</div>
	<!-- //주문상품 확인-->

	<!-- 로딩 // -->
	<div class="pay_loading" id="pay_loading">
		<div class="inner">
			<p>
				<b><span>결제가 진행중</span> 입니다.</b>
				<span>잠시만 기다려 주세요.</span>
			</p>
			<div class="progress"><div class="bar"></div></div>
		</div>
	</div>
	<!-- // 로딩 -->

	<!-- Shipping Cost Guide// -->
	<div id="cost_guide" class="popup cost_guide">
		<div class="popup_area">
			<div class="inner">
				<button type="button" class="btn_close" onclick="fn.popupClose('#cost_guide')">닫기</button>
				<h3>Shipping Cost Guide</h3>

			</div>
		</div>
	</div>
	<!-- //Shipping Cost Guide-->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>

</body>
</html>
