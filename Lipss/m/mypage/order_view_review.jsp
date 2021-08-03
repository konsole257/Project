<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
	<!-- config// -->
	<%@ include file="/m/inCom/_config.jsp" %>
	<!-- //config -->
	<link rel="stylesheet" type="text/css" href="/m/mpjtCom/css/sub.css" />

</head>
<body class="mypage">
<div id="wrap" class="order_view">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- menu//-->
		<div class="submenu">
			<h2 class="tit">주문내역조회</h2>

			<%@ include file="/m/inCom/_menu_mypage.jsp" %>
		</div>
		<!-- //menu -->

		<div class="order_area">
			<!-- 추가 : 2018.11.07 // -->
			<div class="top">
				<div class="ord_no">
					<div>주문번호 : <span>20188456156324851643</span></div>
					2018.03.13
				</div>

				<div class="state">
					<span class="txt_decide">구매확정</span>
				</div>
			</div>

			<div class="bottom">
				<label><input type="checkbox" class="chk_type2"><span></span></label>

				<figure class="img_area">
					<img src="/m/mpjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
				</figure>

				<div class="info_area">
					<span class="subject">[젝스키스] The studio 은지원 no.1</span>

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

					<div class="total_price">&#8361; 38,000 <b class="state">구매확정<button type="button" class="btn_write" onclick="location.href='/m/mypage/review_write.jsp'">상품평작성</button></b></div><!-- 수정 : 2018.11.09 -->

				</div>
			</div>
			<!-- // 추가 : 2018.11.07 -->

			<div class="bottom">
				<label><input type="checkbox" class="chk_type2"><span></span></label>

				<figure class="img_area">
					<img src="/m/mpjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
				</figure>

				<div class="info_area">
					<span class="subject">[젝스키스] The studio 은지원 no.1</span>

					<dl class="option">
						<dt>Option</dt>
						<dd>Stand – 매트 (8X12)</dd>
					</dl>

					<!-- 추가 : 2018.05.11 // -->
					<dl class="price">
						<dt>금액</dt>
						<dd>&#8361; 5,000</dd>

						<dt>수량</dt>
						<dd>1개</dd>
					</dl>
					<!-- // 추가 -->

					<div class="total_price">&#8361; 38,000 <b class="state">배송중</b></div><!-- 수정 : 2018.05.11 -->

				</div>
			</div>

			<div class="bottom">
				<label><input type="checkbox" class="chk_type2"><span></span></label>

				<figure class="img_area">
					<img src="/m/mpjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
				</figure>

				<div class="info_area">
					<span class="subject">[젝스키스] The studio 은지원 no.1</span>

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

					<div class="total_price">&#8361; 38,000 <b class="state">배송중</b></div>
				</div>
			</div>

			<div class="repurchase_area">
				<label><input type="checkbox" class="chk_type2"><span></span></label>
				<button type="button" class="btn_repurchase">재구매</button>
			</div>

			<section class="pay_area">
				<h2 class="tit">결제내역</h2>

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

			<section class="pay_area">
				<h2 class="tit">환불내역</h2>

				<table>
					<colgroup>
						<col style="width:50%;">
						<col style="width:50%;">
					</colgroup>

					<tbody>
						<tr>
							<th>환불금액 <span>(Subtotal)</span></th>
							<td class="total">&#8361; 119,000</td>
						</tr>
						<tr>
							<th>환불할인금액 <span>(Discount)</span></th>
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

			<section class="delivery_area">
				<h2 class="tit">배송지 정보</h2>

				<a href="#" class="btn_delivery">배송지 변경</a>
				<%-- <button type="button" class="btn_deliveryfind">배송추적</button> --%>

				<table>
					<colgroup>
						<col style="width:120px;">
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
							<td>(04111) 서울시 마포구 서강대길3<br>서강빌딩 6층 코너스톤인터랙티브</td>
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

			<section class="payinfo_area">
				<h2 class="tit">결제정보</h2>

				<table>
					<colgroup>
						<col style="width:120px;">
						<col style="">
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
							<td>123456-12-123456</td>
						</tr>
						<tr>
							<th>예금주</th>
							<td>한국후지필름</td>
						</tr>
						<tr>
							<th>입금기한</th>
							<td>2018.03.14<br><span>기한 내에 입금하시면 주문이 완료됩니다.</span></td>
						</tr>
					</tbody>
				</table>
			</section>

			<a href="#" class="btn_list">목록<span>List</span></a>
		</div>
	</main>
	<!-- //content -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>

</body>
</html>
