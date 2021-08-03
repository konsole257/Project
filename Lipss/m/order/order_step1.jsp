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
							<th>이름</th>
							<td><input type="text" title="이름 입력" class="inp_type1" value="홍길동"  placeholder="이름 (Full name)" /></td>
						</tr>
						<tr>
							<th>휴대폰 번호</th>
							<td><input type="text" title="휴대폰 번호 입력" class="inp_type1" value="010-1234-5678" /></td>
						</tr>
						<tr>
							<th>이메일</th>
							<td>
								<input type="text" title="이메일 입력" class="inp_type1" value="hongho1201@gmail.com" />

								<!-- 비회원 메일 입력 // -->
								<!-- <div class="email_area">
									<input type="text" title="이메일 입력" placeholder="이메일 (E-mail)" class="inp_type1">
									<span class="at">@</span>
									<div class="select email">
										<select title="이메일 도메인 선택">
											<option>직접입력</option>
											<option>daum.net</option>
											<option>gmail.com</option>
											<option>nate.com</option>
											<option>naver.com</option>
										</select>
										<input type="text" class="sel_txt" title="이메일 도메인 직접 입력" placeholder="직접입력">
									</div>
								</div>
								-->
								<!-- // 비회원 메일 입력 -->
							</td>
						</tr>
					</tbody>
				</table>
			</section>

			<section class="delivery_area">
				<h2>배송지 정보</h2>
				<label><input type="checkbox" class="chk_type1" checked><span>주문자 정보와 동일</span></label>

				<table>
					<colgroup>
						<col style="width:90px;">
						<col style="">
					</colgroup>

					<tbody>
						<tr>
							<td colspan="2">
								<label><input type="radio" name="delivery" class="rdo_type1" checked><span>기본배송지</span></label>
								<label><input type="radio" name="delivery" class="rdo_type1"><span>새로운 배송지</span></label>
								<label><input type="radio" name="delivery" class="rdo_type1"><span>회사</span></label>
								<a href="#delivery_choose" class="btn_delivery" onclick="fn.popupOpen('#delivery_choose');">배송지목록</a>
							</td>
						</tr>

						<tr>
							<th>배송지명</th>
							<td><input type="text" title="배송지명 입력" class="inp_type1" /></td>
						</tr>
						<tr>
							<th>이름</th>
							<td><input type="text" title="휴대폰 번호 입력" class="inp_type1" placeholder="이름 (Full name)" /></td>
						</tr>
						<tr>
							<th>휴대폰 번호</th>
							<td><input type="text" title="휴대폰 번호 입력" class="inp_type1" /></td>
						</tr>
						<tr>
							<th>주소</th>
							<td>
								<input type="text" title="우편번호 입력" class="inp_type1 write_zip" /><button type="button" class="btn_zip">우편번호검색<span>Zip Code Search</span></button>
								<a href="#" class="btn_women">여성안심택배함 위치 참고</a>
								<input type="text" title="주소 입력" class="inp_type1 write_address1" />
								<input type="text" title="주소 입력" class="inp_type1 write_address2" />
								<label><input type="checkbox" class="chk_type1" checked><span>배송지 목록에 추가</span></label>
								<label><input type="checkbox" class="chk_type1" checked><span>기본 배송지 저장</span></label>
							</td>
						</tr>
						<tr>
							<th>배송요청사항</th>
							<td>
								<div class="select email">
									<select title="배송요청사항 선택">
										<option>선택해주세요</option>
										<option value="MAIL_KIND_ETC">직접입력</option>
									</select>
									<input type="text" class="sel_txt" title="취소사유 직접 입력" placeholder="직접입력" />
								</div>
								<label><input type="checkbox" class="chk_type1" checked><span>상품명 표시 안 함</span></label>
								<p class="txt">(택배상자에 상품명 표시 원하지 않을 경우 체크해 주세요.)</p>
							</td>
						</tr>
					</tbody>
				</table>
			</section>

			<section class="benefit_area">
				<h2>할인혜택</h2>

				<table>
					<%-- <colgroup>
						<col style="width:90px;">
						<col style="">
					</colgroup> --%>

					<tbody>
						<%-- <tr>
							<th>쿠폰</th>
							<td>
								<div class="select email">
									<select title="사용 가능 쿠폰 선택">
										<option>사용 가능 쿠폰 선택</option>
										<option>사용 가능 쿠폰 선택</option>
									</select>
								</div>
							</td>
						</tr>
						<tr>
							<th>무료배송쿠폰</th>
							<td><input type="text" title="쿠폰 번호 입력" class="inp_type1" placeholder="Coupon Number" /></td>
						</tr> --%>


						<tr>
							<th>장바구니쿠폰 (보유쿠폰 <span>1</span>장)</th>
						</tr>

						<tr>
							<td>
								<input type="text" placeholder="0" title="장바구니쿠폰 사용" class="txt_type1 write_number">
								<button type="button" class="btn_apply" onclick="fn.popupOpen('#cart_coupon')">사용</button>
								<button type="button" class="btn_cancel">초기화</button>
							</td>
						</tr>

						<tr>
							<th>프로모션 코드</th>
						</tr>

						<tr>
							<td>
								<input type="text" placeholder="프로모션 코드 등록" title="프로모션 코드 입력" class="txt_type1 write_code">
								<button type="button" class="btn_apply">등록</button>
								<button type="button" class="btn_cancel">초기화</button>
								<p class="txt_promotion">프로모션 코드와 장바구니 쿠폰은 중복사용이 불가합니다.</p>
							</td>
						</tr>

						<tr>
							<th>무료배송 쿠폰 (보유쿠폰 <span>1</span>장)</th>
						</tr>

						<tr>
							<td>
								<input type="text" placeholder="0" title="무료배송쿠폰 사용" class="txt_type1 write_number">
								<button type="button" class="btn_apply" onclick="fn.popupOpen('#delivery_coupon')">사용</button>
								<button type="button" class="btn_cancel">초기화</button>
								<p class="txt_delivery">총 주문금액 &#8361;10,000 초과 시 배송비 쿠폰 사용 가능합니다.</p>
								<p class="txt_delivery">총 주문금액 &#8361;30,000 미만인 경우 배송비가 부과됩니다.</p>
							</td>
						</tr>
					</tbody>

				</table>

				<%-- <div class="btn_area">
					<button type="button" class="btn_apply">적용<span>Ok</span></button>
					<button type="button" class="btn_cancel">취소<span>Cancel</span></button>
				</div> --%>
			</section>

			<section class="pay_area">
				<h2>결제수단</h2>

				<label><input type="radio" name="pay" class="rdo_type1"><span>신용카드</span></label>
				<label><input type="radio" name="pay" class="rdo_type1"><span>실시간 계좌이체</span></label>
				<label><input type="radio" name="pay" class="rdo_type1"><span>가상계좌</span></label>
				<label><input type="radio" name="pay" class="rdo_type1"><span><img src="/m/mpjtCom/images/sub/paypal.png" alt="PAYPAL" class="paypal"></span></label>
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

			<!-- -->
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

	<!-- 로딩 : 추가 : 2018.06.14 // -->
	<div class="pay_loading" id="pay_loading">
		<div class="inner">
			<p>
				<b><span>결제가 진행중</span> 입니다.</b>
				<span>잠시만 기다려 주세요.</span>
			</p>
			<div class="progress"><div class="bar"></div></div>
		</div>
	</div>
	<!-- // 로딩 : 추가 : 2018.06.14 -->

	<!-- 배송지 목록// -->
	<div id="delivery_choose" class="popup delivery_choose">
		<div class="popup_area">
			<div class="inner">
				<button type="button" class="btn_close" onclick="fn.popupClose('#delivery_choose')">닫기</button>
				<h3>배송지 목록 <span>Shipping List</span></h3>

				<div class="swiper-container popscroll scroll_area"><div class="swiper-wrapper"><div class="swiper-slide">
					<div class="txt">
						<ul class="delivery_list">
							<!-- 배송지 없음 : 추가 : 2018.06.04 // -->
							<li class="nodata">
								배송지 목록이 없습니다.
							</li>
							<!-- // 배송지 없음 -->

							<!-- 반복영역 // -->
							<li>
								<span>집 <span>(기본배송지)</span></span>
								<dl>
									<dt>수취인</dt>
									<dd>강유나</dd>

									<dt>연락처</dt>
									<dd>010-1234-5678</dd>

									<dt>주소</dt>
									<dd>서울시 금천구 가산디지털1로 222(가산동)<br>어바니엘 2층</dd>
								</dl>
								<a href="#" class="btn_choose on">배송지선택</a>
							</li>
							<!-- // 반복영역 -->

							<li>
								<span>집 <span></span></span>
								<dl>
									<dt>수취인</dt>
									<dd>강유나</dd>

									<dt>연락처</dt>
									<dd>010-1234-5678</dd>

									<dt>주소</dt>
									<dd>서울시 금천구 가산디지털1로 222(가산동)<br>어바니엘 2층</dd>
								</dl>
								<a href="#" class="btn_choose">배송지선택</a>
							</li>

							<li>
								<span>집 <span></span></span>
								<dl>
									<dt>수취인</dt>
									<dd>강유나</dd>

									<dt>연락처</dt>
									<dd>010-1234-5678</dd>

									<dt>주소</dt>
									<dd>서울시 금천구 가산디지털1로 222(가산동)<br>어바니엘 2층</dd>
								</dl>
								<a href="#" class="btn_choose">배송지선택</a>
							</li>

							<li>
								<span>집 <span></span></span>
								<dl>
									<dt>수취인</dt>
									<dd>강유나</dd>

									<dt>연락처</dt>
									<dd>010-1234-5678</dd>

									<dt>주소</dt>
									<dd>서울시 금천구 가산디지털1로 222(가산동)<br>어바니엘 2층</dd>
								</dl>
								<a href="#" class="btn_choose">배송지선택</a>
							</li>

							<li>
								<span>집 <span></span></span>
								<dl>
									<dt>수취인</dt>
									<dd>강유나</dd>

									<dt>연락처</dt>
									<dd>010-1234-5678</dd>

									<dt>주소</dt>
									<dd>서울시 금천구 가산디지털1로 222(가산동)<br>어바니엘 2층</dd>
								</dl>
								<a href="#" class="btn_choose">배송지선택</a>
							</li>
						</ul>
					</div>

				</div></div><div class="swiper-scrollbar"></div></div>
			</div>
		</div>
	</div>
	<!-- //배송지 목록-->

	<!-- 배송비 쿠폰 조회 : 2018.06.01 // -->
	<div id="delivery_coupon" class="popup delivery_coupon">
		<div class="popup_area">
			<div class="inner">
				<button type="button" class="btn_close" onclick="fn.popupClose('#delivery_coupon')">닫기</button>
				<h3>배송비 쿠폰 조회 <span>Coupon List</span></h3>

				<div class="name">배송비 쿠폰</div>

				<div class="select email">
					<select title="쿠폰선택">
						<option>쿠폰선택</option>
						<option>쿠폰선택</option>
					</select>
				</div>

				<dl>
					<dt>할인금액 <span>(Discount)</span></dt>
					<dd>&#8361; 10,000</dd>
				</dl>

				<a href="#" class="btn_purple btn_apply"><span>쿠폰적용<span>Apply</span></span></a>
			</div>
		</div>
	</div>
	<!-- //배송비 쿠폰 조회 -->

	<!-- 장바구니 쿠폰 조회 : 2018.06.01 // -->
	<div id="cart_coupon" class="popup cart_coupon">
		<div class="popup_area">
			<div class="inner">
				<button type="button" class="btn_close" onclick="fn.popupClose('#cart_coupon')">닫기</button>
				<h3>장바구니 쿠폰 조회 <span>Coupon List</span></h3>

				<div class="name">장바구니쿠폰</div>

				<div class="select email">
					<select title="쿠폰선택">
						<option>쿠폰선택</option>
						<option>쿠폰선택</option>
					</select>
				</div>

				<dl>
					<dt>할인금액 <span>(Discount)</span></dt>
					<dd>&#8361; 10,000</dd>
				</dl>

				<a href="#" class="btn_purple btn_apply"><span>쿠폰적용<span>Apply</span></span></a>
			</div>
		</div>
	</div>
	<!-- //장바구니 쿠폰 조회 -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>

</body>
</html>
