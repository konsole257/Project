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
						<legend class="tit">주문 상품</legend>

						<%-- <table class="tbl_type1">
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

											<!-- 삭제 : 2018.04.26
											<dl class="option">
												<dt>Option</dt>
												<dd>Stand – 매트 (8X12)</dd>
											</dl>
											-->
										</div>
									</td>
									<td>3</td>
									<td class="price">
										<span>&#8361; 5,000</span>
										<a href="#order_goods" class="btn_orderview" onclick="fn.popupOpen('#order_goods');"><span>주문상품보기<span>Detail</span></span></a>
									</td>
								</tr>
							</tbody>
						</table> --%>

						<!-- 수정 : 2018.04.27 // -->
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

						<strong class="subtotal">총 주문금액 : &#8361; 43,000</strong>
						<!-- // 수정 -->
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
									<th>이름</th>
									<td><input type="text" value="홍길동" class="txt_type1 write_name"></td>
									<th>휴대폰 번호</th>
									<td><input type="text" value="01012345678" class="txt_type1 write_phone"></td>
									<th>이메일</th>
									<td>
										<!-- 수정 : 2018.04.26 // -->
										<input type="text" placeholder="이메일 (E-mail)" title="이메일 입력" class="txt_type1 write_mail1">
										<span class="at">@</span>
										<label class="select write_mail2">
											<select>
												<option>naver.com</option>
												<option>daum.net</option>
												<option>gmail.com</option>
												<option>nate.com</option>
												<option value="self">직접입력</option>
												<input type="text" placeholder="직접입력">
											</select>
										</label>
										<!-- // 수정 -->
									</td>
								</tr>
							</tbody>
						</table>
					</fieldset>
					<!-- // 주문자 정보 -->

					<!-- 배송지 정보 // -->
					<fieldset class="delivery_field">
						<legend class="tit">배송지 정보</legend>
						<input type="checkbox" class="chk_type2" id="info_same" checked><label for="info_same" class="info_same">주문자 정보와 동일</label>

						<table class="tbl_type2">
							<caption>배송지 정보 입력</caption>

							<colgroup>
								<col style="width:160px;">
								<col style="width:880px;">
							</colgroup>

							<tbody>
								<tr>
									<th>배송지 선택</th>
									<td>
										<input type="radio" class="rdo_type1" name="delivery" id="delivery_default" checked><label for="delivery_default" class="delivery_choose">기본 배송지</label>
										<input type="radio" class="rdo_type1" name="delivery" id="delivery_new"><label for="delivery_new" class="delivery_choose">새로운 배송지</label>
										<input type="radio" class="rdo_type1" name="delivery" id="delivery_office"><label for="delivery_office" class="delivery_choose">회사</label>
										<a href="#delivery_list" class="btn_delivery" onclick="fn.popupOpen('#delivery_list');">배송지목록</a>
									</td>
								</tr>
								<tr>
									<th>배송지명</th>
									<td><input type="text" class="txt_type1 write_delivery"></td>
								</tr>
								<tr>
									<th>이름</th>
									<td><input type="text" placeholder="이름 (Full name / 국,영문으로만 표기)" class="txt_type1 write_name"></td>
								</tr>
								<tr>
									<th>휴대폰 번호</th>
									<td><input type="text" placeholder="핸드폰 번호 (Mobile phone number / -없이 입력)" class="txt_type1 write_phone"></td>
								</tr>
								<tr>
									<th>주소</th>
									<td>
										<div>
											<input type="text" class="txt_type1 write_address1">
											<button type="button" class="btn_zip">우편번호</button>
											<a href="#" class="btn_women">여성안심택배함 위치 참고</a>
										</div>

										<div>
											<input type="text" class="txt_type1 write_address2">
											<input type="text" class="txt_type1 write_address3">
										</div>

										<input type="checkbox" class="chk_type2" id="delivery_add" checked><label for="delivery_add" class="delivery_fn">배송지 목록에 추가</label>
										<input type="checkbox" class="chk_type2" id="delivery_default_save" checked><label for="delivery_default_save" class="delivery_fn">기본 배송지 저장</label>
									</td>
								</tr>
								<tr>
									<th>배송요청사항</th>
									<td>
										<label class="select write_request">
											<select>
												<option>선택해주세요.</option>
												<option value="MAIL_KIND_ETC">직접입력</option>
											</select>
											<input type="text" class="txt_type1" title="배송요청사항 입력">
										</label>
										<input type="checkbox" class="chk_type2" id="delivery_noname" checked><label for="delivery_noname" class="delivery_noname">상품명 표시 안 함 <span>(택배상자에 상품명 표시 원하지 않을 경우 체크해주세요.)</span></label>
									</td>
								</tr>
							</tbody>
						</table>
					</fieldset>
					<!-- // 배송지 정보 -->

					<div class="bottom_area">
						<div class="left_area">
							<!-- 할인혜택 // -->
							<fieldset class="discount_field">
								<legend class="tit">할인혜택</legend>

								<table class="tbl_type2">
									<caption>쿠폰 사용</caption>

									<!-- 수정 : 2018.05.25 // -->
									<%-- <colgroup>
										<col style="width:160px;">
										<col style="width:320px;">
									</colgroup> --%>

									<tbody>
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
										<!-- // 수정 : 2018.05.25 -->
									</tbody>
								</table>
							</fieldset>
							<!-- // 할인혜택 -->

							<!-- 결제 수단 // -->
							<fieldset class="pay_field">
								<legend class="tit">결제 수단</legend>

								<div class="pay_choose">
									<input type="radio" class="rdo_type1" name="pay" id="pay_card" checked><label for="pay_card">신용카드</label>
									<input type="radio" class="rdo_type1" name="pay" id="pay_bank"><label for="pay_bank">계좌이체</label>
									<input type="radio" class="rdo_type1" name="pay" id="pay_virtual"><label for="pay_virtual">가상계좌</label>
									<input type="radio" class="rdo_type1" name="pay" id="pay_paypal"><label for="pay_paypal"><img src="/w/pjtCom/images/sub/logo_paypal.png" alt="paypal"></label>
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
									<!-- 주문동의 : 수정 : 2018.04.26 // -->
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

								<a href="\w\order\order_step2.jsp" class="btn_pay"><span>결제하기 <span>Check Out</span></span></a><!-- 수정 : 2018.04.26 -->
							</div>
						</fieldset>
						<!-- // 결제금액 -->
					</div>

					<!-- 결제진행중 : 추가 : 2018.05.25 // -->
					<!--
						결제 로딩 호출 함수
						fn.payLoading();
					-->
					<div class="pay_loading">
						<p>
							<b><span>결제가 진행중</span> 입니다.</b>
							<span>잠시만 기다려 주세요.</span>
						</p>
						<div class="progress"><div class="bar"></div></div>
					</div>
					<!-- // 결제진행중 -->

					<div class="txt_area">
						<strong>알려드립니다.</strong>
						<p>결제금액이 3만원 이상일 경우 배송비는 무료입니다.</p>
						<p>결제금액이 3만원 미만일 경우 배송비 2,500원이 부과됩니다. </p>
						<p>교환 및 반품은 물품 수령 후 7일 이내에 접수 후 당사에 입고 된 상품에 한하여 처리됩니다.</p>
					</div>
				</form>
			</div>

		</div>
	</main>
	<!-- // wrap -->

	<!-- 주문상품 보기 // -->
	<div id="order_goods" class="popup order_goods">
		<div class="inner">
			<header class="header">
				<h2 class="tit">주문상품 확인 <span>(Product Order Check)</span></h2>

				<button type="button" class="btn_close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="scroll_area scrollbar-macosx"><!-- 태그 추가 : 2018.04.26 -->
				<div class="contents">
					<table class="tbl_type1">
						<caption class="hide">주문결제 목록</caption>

						<colgroup>
							<col style="width:410px">
							<col style="width:110px">
							<col style="width:60px">
							<col style="width:140px">
						</colgroup>

						<thead>
							<tr>
								<th>상품명</th>
								<th>가격</th>
								<th>수량</th>
								<th>주문금액</th>
							</tr>
						</thead>

						<tbody>
							<!-- 반복영역 // -->
							<tr>
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
									</div>
								</td>
								<td class="price">
									<span>&#8361; 5,000</span>
								</td>
								<td>3</td>
								<td class="price">
									<span>&#8361; 5,000</span>
								</td>
							</tr>
							<!-- // 반복영역 -->

							<tr>
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
									</div>
								</td>
								<td class="price">
									<span>&#8361; 5,000</span>
								</td>
								<td>3</td>
								<td class="price">
									<span>&#8361; 5,000</span>
								</td>
							</tr>

							<tr>
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
									</div>
								</td>
								<td class="price">
									<span>&#8361; 5,000</span>
								</td>
								<td>3</td>
								<td class="price">
									<span>&#8361; 5,000</span>
								</td>
							</tr>

							<tr>
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
									</div>
								</td>
								<td class="price">
									<span>&#8361; 5,000</span>
								</td>
								<td>3</td>
								<td class="price">
									<span>&#8361; 5,000</span>
								</td>
							</tr>

							<tr>
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
									</div>
								</td>
								<td class="price">
									<span>&#8361; 5,000</span>
								</td>
								<td>3</td>
								<td class="price">
									<span>&#8361; 5,000</span>
								</td>
							</tr>

							<tr>
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
									</div>
								</td>
								<td class="price">
									<span>&#8361; 5,000</span>
								</td>
								<td>3</td>
								<td class="price">
									<span>&#8361; 5,000</span>
								</td>
							</tr>

						</tbody>
					</table>

					<!-- 삭제 : 2018.04.26
					<div class="paging">
						<a href="#" class="btn_prev">이전</a>
						<span class="num">
							<a href="#" class="on">1</a>
							<a href="#">2</a>
							<a href="#">3</a>
						</span>
						<a href="#" class="btn_next">다음</a>
					</div> -->

				</div>
			</div>
		</div>
	</div>
	<!-- // 주문상품 보기 -->

	<!-- 배송지 목록 // -->
	<div id="delivery_list" class="popup delivery_list">
		<div class="inner">
			<header class="header">
				<h2 class="tit">배송지 목록 <span>(Shipping list)</span></h2>

				<button type="button" class="btn_close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="scroll_area scrollbar-macosx"><!-- 태그 추가 : 2018.04.26 -->
				<div class="contents">
					<table class="tbl_type1">
						<caption class="hide">주문결제 목록</caption>

						<colgroup>
							<col style="width:110px">
							<col style="width:63px">
							<col style="width:286px">
							<col style="width:116px">
							<col style="width:148px">
						</colgroup>

						<thead>
							<tr>
								<th>배송지명</th>
								<th>수취인</th>
								<th>주소</th>
								<th>연락처</th>
								<th>선택</th>
							</tr>
						</thead>

						<tbody>
							<!-- 배송지 없음 : 추가 : 2018.05.29 // -->
							<tr>
								<td colspan="5" class="nodata">배송지 목록이 없습니다.</td>

							</tr>
							<!-- // 배송지 없음 -->

							<!-- 반복영역 // -->
							<tr>
								<td>집<span>(기본배송지)</span></td>
								<td>강유나나</td>
								<td>서울시 금천구 가산디지털1로 222(가산동) 어바니엘 2층</td>
								<td>010-1234-5678</td>
								<td><button type="button" class="btn_choose">배송지 선택</button></td>
							</tr>
							<!-- // 반복영역 -->

							<tr>
								<td>집</td>
								<td>Michael Jackson</td>
								<td>서울시 금천구 가산디지털1로 222(가산동) 어바니엘 2층</td>
								<td>010-1234-5678</td>
								<td><button type="button" class="btn_choose">배송지 선택</button></td>
							</tr>

							<tr>
								<td>집</td>
								<td>Michael Jackson</td>
								<td>서울시 금천구 가산디지털1로 222(가산동) 어바니엘 2층</td>
								<td>010-1234-5678</td>
								<td><button type="button" class="btn_choose">배송지 선택</button></td>
							</tr>

							<tr>
								<td>집</td>
								<td>Michael Jackson</td>
								<td>서울시 금천구 가산디지털1로 222(가산동) 어바니엘 2층</td>
								<td>010-1234-5678</td>
								<td><button type="button" class="btn_choose">배송지 선택</button></td>
							</tr>

							<tr>
								<td>집</td>
								<td>Michael Jackson</td>
								<td>서울시 금천구 가산디지털1로 222(가산동) 어바니엘 2층</td>
								<td>010-1234-5678</td>
								<td><button type="button" class="btn_choose">배송지 선택</button></td>
							</tr>

							<tr>
								<td>집</td>
								<td>Michael Jackson</td>
								<td>서울시 금천구 가산디지털1로 222(가산동) 어바니엘 2층</td>
								<td>010-1234-5678</td>
								<td><button type="button" class="btn_choose">배송지 선택</button></td>
							</tr>
						</tbody>
					</table>

					<!-- 삭제 : 2018.04.26
					<div class="paging">
						<a href="#" class="btn_prev">이전</a>
						<span class="num">
							<a href="#" class="on">1</a>
							<a href="#">2</a>
							<a href="#">3</a>
						</span>
						<a href="#" class="btn_next">다음</a>
					</div> -->

				</div>
			</div>
		</div>
	</div>
	<!-- // 배송지 목록 -->

	<!-- 장바구니쿠폰조회 : 추가 : 2018.05.25 // -->
	<div id="cart_coupon" class="popup_type2 cart_coupon">
		<div class="inner">
			<a href="#" class="btn_close" onclick="fn.popupClose();">닫기</a>

			<!-- pop-top -->
			<div class="pop-top">
				<h2>장바구니 쿠폰 조회<span>Coupon List</span></h2>
			</div>

			<!-- pop-mid -->
			<div class="pop-mid">
				<div class="name">장바구니 쿠폰</div>

				<label class="select">
					<select>
						<option>선택해주세요</option>
						<option>쿠폰1</option>
					</select>
				</label>

				<dl>
					<dt>할인금액 <span>(Discount)</span></dt>
					<dd>&#8361; 10,000</dd>
				</dl>
			</div>

			<!-- pop-btn -->
			<div class="pop-btn-wrap">
				<a href="#" class="btn_ok"><span>쿠폰적용<span>Apply</span></span></a>
			</div>
		</div>
	</div>
	<!-- // 장바구니쿠폰조회 -->

	<!-- 배송비쿠폰조회 : 추가 : 2018.05.25 // -->
	<div id="delivery_coupon" class="popup_type2 cart_coupon">
		<div class="inner">
			<a href="#" class="btn_close" onclick="fn.popupClose();">닫기</a>

			<!-- pop-top -->
			<div class="pop-top">
				<h2>배송비 쿠폰 조회<span>Coupon List</span></h2>
			</div>

			<!-- pop-mid -->
			<div class="pop-mid">
				<div class="name">배송비 쿠폰</div>

				<label class="select">
					<select>
						<option>선택해주세요</option>
						<option>쿠폰1</option>
					</select>
				</label>

				<dl>
					<dt>할인금액 <span>(Discount)</span></dt>
					<dd>&#8361; 10,000</dd>
				</dl>
			</div>

			<!-- pop-btn -->
			<div class="pop-btn-wrap">
				<a href="#" class="btn_ok"><span>쿠폰적용<span>Apply</span></span></a>
			</div>
		</div>
	</div>
	<!-- // 배송비쿠폰조회 -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->

	<script>
	fn.payLoading();
	</script>
</body>

</html>
