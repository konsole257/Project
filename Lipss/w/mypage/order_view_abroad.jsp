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
	<main id="wrap" class="mypage order_view">
		<div id="contents" class="">

			<div class="tit_area">
				<h2 class="tit"><span>Order List</span>주문내역조회</h2>

				<!-- menu // -->
				<%@ include file="/w/inCom/menu_mypage.jsp" %>
				<!-- // menu -->
			</div>

			<div class="view_area">
				<div class="top_area">
					<dl>
						<dt>주문번호</dt>
						<dd>20188456156324851644</dd>

						<dt>주문일</dt>
						<dd>2018.03.13</dd>
					</dl>

					<a href="#order_cancel" class="btn_cancel" onclick="fn.popupOpen('#order_cancel');">전체주문취소</a>
				</div>

				<div class="list_field">
					<table class="tbl_type1">
						<caption class="hide">주문결제 목록</caption>

						<colgroup>
							<col style="width:610px;">
							<col style="width:270px;">
							<col style="width:160px;">
						</colgroup>

						<thead>
							<tr>
								<th>상품정보</th>
								<th>주문금액</th>
								<th>상태</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td>
									<input type="checkbox" id="checkbox1" class="chk_type2"><label for="checkbox1">선택</label>

									<figure class="img_area">
										<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
									</figure>

									<div class="info_area">
										<span class="subject">[젝스키스] The studio 은지원 no.1(외 1건)</span>

										<dl class="option">
											<dt>Option</dt>
											<dd>Stand – 매트 (8X12)</dd>
										</dl>

										<dl class="price">
											<dt>금액</dt>
											<dd>&#8361; 5,000</dd>

											<dt>수량</dt>
											<dd>1개</dd>
										</dl>
									</div>
								</td>
								<td>&#8361; 5,000</td>
								<td>
									<span>결제완료</span>
								</td>
							</tr>
						</tbody>
					</table>

					<div class="btn_area">
						<input type="checkbox" id="chk_all" class="chk_type2"><label for="chk_all">선택</label>
						<button type="button" class="btn_repurchase">재구매</button>
					</div>
				</div>

				<div class="bottom_area abroad"> <!-- 해외배송일때 class명 abroad 추가 -->
					<div class="left_area">
						<!-- 배송지 정보 // -->
						<section class="delivery_field">
							<h2 class="tit">배송지 정보</h2>

							<a href="#delivery_change" class="btn_delivery" onclick="fn.popupOpen('#delivery_change');">배송지 변경</a>

							<table class="tbl_type2">
								<colgroup>
									<col style="width:180px;">
									<col style="width:300px;">
								</colgroup>

								<tbody>
									<tr>
										<th>이름</th>
										<td>홍길동</td>
									</tr>
									<tr>
										<th>휴대폰 번호</th>
										<td>000-000-000-0000</td>
									</tr>
									<tr>
										<th>우편번호</th>
										<td>90746</td>
									</tr>
									<tr>
										<th>주소</th>
										<td>Street Address +<br />City + State/Province</td>
									</tr>
									<tr>
										<th>국가</th>
										<td>Country</td>
									</tr>
								</tbody>
							</table>
						</section>
						<!-- // 배송지 정보 -->
					</div>

					<div class="right_area">
						<!-- 결제 정보 // -->
						<section class="pay_field">
							<h2 class="tit">결제 정보</h2>

							<table class="tbl_type2">
								<colgroup>
									<col style="width:155px;">
									<col style="width:325px;">
								</colgroup>

								<tbody>
									<tr>
										<th>총결제금액</th>
										<td class="total">&#8361; 38,000</td>
									</tr>
									<tr>
										<th>결제수단</th>
										<td>가상계좌 (미입금)</td>
									</tr>
									<tr>
										<th>입금은행</th>
										<td>국민은행</td>
									</tr>
									<tr>
										<th>입금계좌번호</th>
										<td>123456-12-123456 (예금주 : 한국후지필름)</td>
									</tr>
									<tr>
										<th>입금기한</th>
										<td>2018.03.14<br>기한 내에 입금하시면 주문이 완료됩니다.</td>
									</tr>
								</tbody>
							</table>
						</section>
						<!-- // 결제 정보 -->
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

			</div>

			<a href="#" class="btn_list"><span>목록<span>List</span></span></a>

		</div>
	</main>
	<!-- // wrap -->

	<!-- 배송지 변경 // -->
	<div id="delivery_change" class="popup delivery_change">
		<div class="inner">
			<header class="header">
				<h2 class="tit">배송지 변경 <span>(Shipping list)</span></h2>

				<button type="button" class="btn_close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<strong class="require">필수항목</strong>

				<form>
					<table class="tbl_type2">
						<colgroup>
							<col style="width:125px">
							<col style="width:405px">
						</colgroup>


						<tbody>
							<tr>
								<th class="require">상세주소</th>
								<td><input type="text" title="상세주소 입력" placeholder="Street Address" class="txt_type1"></td>
							</tr>
							<tr>
								<th class="require" rowspan="2">도시/주</th>
								<td>
									<input type="text" title="도시 입력" placeholder="City" class="txt_type1">
								</td>
							</tr>
							<tr>
								<td><input type="text" title="주 입력" placeholder="State/Province" class="txt_type1"></td>
							</tr>
							<tr>
								<th class="require">우편번호</th>
								<td><input type="text" title="우편번호 입력" placeholder="Zip/Postal Code" class="txt_type1"></td>
							</tr>
						</tbody>
					</table>

					<div class="btn_area">
						<button type="submit" class="btn_ok">확인 <span>Ok</span></button>
						<button type="button" class="btn_cancel" onclick="fn.popupClose();">취소 <span>Cancel</span></button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- // 배송지 목록 -->

	<!-- 전체주문취소 신청 // -->
	<div id="order_cancel" class="popup order_cancel">
		<div class="inner">
			<header class="header">
				<h2 class="tit">전체주문취소 신청 <span>(Cancel Order)</span></h2>

				<button type="button" class="btn_close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<strong class="require">필수항목</strong>

				<form>
					<table class="tbl_type2">
						<colgroup>
							<col style="width:145px">
							<col style="width:385px">
						</colgroup>


						<tbody>
							<tr>
								<th class="require">주문번호</th>
								<td>20188456156324851644</td>
							</tr>
							<tr>
								<th class="require">취소사유</th>
								<td>
									<label class="select write_reason">
										<select title="취소사유 선택">
											<option>선택하세요.</option>
											<option>단순변심</option>
											<option>재주문</option>
											<option>옵션 잘못 선택</option>
											<option>기타</option>
										</select>
									</label>
								</td>
							</tr>
							<tr>
								<th class="require">제목</th>
								<td><input type="text" title="제목 입력" class="txt_type1 write_subject"></td>
							</tr>
							<tr>
								<th class="require">내용</th>
								<td>
									<textarea class="write_txt" title="내용 입력"></textarea>
								</td>
							</tr>
							<tr>
								<th>환불예정금액</th>
								<td class="price">&#8361; <b>38,000</b></td>
							</tr>
							<tr>
								<th class="require">환불계좌</th>
								<td>
									<label class="select write_bank">
										<select title="은행 선택">
											<option>은행선택</option>
										</select>
									</label>

									<input type="text" title="계좌번호 입력" placeholder="계좌번호 (‘-’없이 숫자로만 입력 해주세요.)" class="txt_type1 write_account">
									<input type="text" title="예금주 입력" placeholder="예금주" class="txt_type1 write_name">
								</td>
							</tr>
						</tbody>
					</table>

					<div class="btn_area">
						<button type="submit" class="btn_ok">확인 <span>Ok</span></button>
						<button type="button" class="btn_cancel" onclick="fn.popupClose();">취소 <span>Cancel</span></button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- // 전체주문취소 신청 -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>

</html>
