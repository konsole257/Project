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
<div id="wrap" class="cart">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<h1 id="subTitle">장바구니 <span>Cart</span></h1>

	<!-- content// -->
	<main id="contents">

		<div class="cart_area">
			<div class="btn_area">
				<label><input type="checkbox" class="chk_type2 all"><span><span>전체선택</span></span></label>
				<button type="button" class="btn_del">선택삭제<span>Delete Option</span></button>
			</div>

			<ul class="cart_list">
				<li>
					<div class="goods_info">
						<div class="chk_area">
							<span class="txt_num">1</span>
							<label><input type="checkbox" class="chk_type2"><span></span></label>
						</div>

						<figure class="img_area">
							<img src="/m/mpjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
						</figure>

						<div class="info_area">
							<a href="#" class="subject">
								<span>[젝스키스]</span>
								<span>The studio 은지원 no.1</span>
							</a>

							<div class="price">&#8361; 38,000</div>
						</div>
					</div>

					<!-- 수정 : 2018.11.23 // -->
					<div class="option_area no_option"> <!-- 옵션이 없는 경우  no_option 클래스 추가 -->
					<!-- // 수정 : 2018.11.23 -->
						<div class="ea_area">
							<input type="number" title="수량 입력" value="1" readonly>
							<button type="button" class="btn_down" onclick="fn.optionEaDown(this);">수량 낮추기</button>
							<button type="button" class="btn_up" onclick="fn.optionEaUp(this);">수량 올리기</button>
						</div>
						<div class="price">&#8361; 114,000</div>
						<button type="button" class="btn_del">삭제</button>
					</div>
				</li>

				<li>
					<div class="goods_info">
						<!-- 수정 : 2018.11.22 // -->
						<div class="chk_area">
							<span class="txt_num">1</span>
							<label><input type="checkbox" class="chk_type2"><span></span></label>
						</div>
						<!-- // 수정 : 2018.11.22 -->

						<figure class="img_area">
							<img src="/m/mpjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
						</figure>

						<div class="info_area">
							<a href="#" class="subject">
								<span>[젝스키스]</span>
								<span>The studio 은지원 no.1</span>
							</a>

							<div class="price">&#8361; 38,000</div>
						</div>
					</div>

					<div class="option_area">
						<div class="name">Post - 매트</div>
						<div class="ea_area">
							<input type="number" title="수량 입력" value="1" readonly>
							<button type="button" class="btn_down" onclick="fn.optionEaDown(this);">수량 낮추기</button>
							<button type="button" class="btn_up" onclick="fn.optionEaUp(this);">수량 올리기</button>
						</div>
						<div class="price">&#8361; 114,000</div>
						<button type="button" class="btn_del">삭제</button>
					</div>

					<div class="option_choose">
						<div class="select">
							<select>
								<option>옵션변경</option>
								<option>Post - 매트</option>
								<option>Stand - 매트</option>
								<option>Stand - 플렉스</option>
								<option>Frame - 매트</option>
								<option>Frame - 플렉스</option>
								<option>Frame - 캔버스</option>
							</select>
						</div>
					</div>
				</li>

				<li>
					<div class="goods_info">
						<!-- 수정 : 2018.11.22 // -->
						<div class="chk_area">
							<span class="txt_num">123456789</span>
							<label><input type="checkbox" class="chk_type2"><span></span></label>
						</div>
						<!-- // 수정 : 2018.11.22 -->

						<figure class="img_area">
							<img src="/m/mpjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
						</figure>

						<div class="info_area">
							<a href="#" class="subject">
								<span>[젝스키스]</span>
								<span>The studio 은지원 no.1</span>
							</a>

							<div class="price">&#8361; 38,000</div>
						</div>
					</div>

					<div class="option_area">
						<div class="name">Post - 매트</div>
						<div class="ea_area">
							<input type="number" title="수량 입력" value="1" readonly>
							<button type="button" class="btn_down" onclick="fn.optionEaDown(this);">수량 낮추기</button>
							<button type="button" class="btn_up" onclick="fn.optionEaUp(this);">수량 올리기</button>
						</div>
						<div class="price">&#8361; 114,000</div>
						<button type="button" class="btn_del">삭제</button>
					</div>

					<div class="option_choose">
						<div class="select">
							<select>
								<option>옵션변경</option>
								<option>Post - 매트</option>
								<option>Stand - 매트</option>
								<option>Stand - 플렉스</option>
								<option>Frame - 매트</option>
								<option>Frame - 플렉스</option>
								<option>Frame - 캔버스</option>
							</select>
						</div>
					</div>
				</li>
			</ul>

			<div class="price_area">
				<%-- <dl>
					<dt class="subtotal">총주문금액 <span>(Subtotal)</span></dt>
					<dd class="subtotal">&#8361; 119,000</dd>

					<dt class="discount">할인금액 <span>(Discount)</span></dt>
					<dd class="discount">&#8361; 10,000</dd>

					<dt class="shipping">배송비 <span>(Shipping)</span></dt>
					<dd class="shipping">&#8361; 2,500</dd>

					<dt class="total">총 결제금액 <span>(Total)</span></dt>
					<dd class="total">&#8361; 111,500</dd>
				</dl> --%>

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
			</div>

			<a href="#cost_guide" class="btn_guide" onclick="fn.popupOpen('#cost_guide');">Shipping Cost Guide &gt;</a><!-- 추가 : 2018.10.17 -->

			<div class="txt_area">
				<strong>알려드립니다. (Be informed)</strong>

				<ul>
					<li>장바구니 보관 기간은 60일 입니다. 60일 이후 자동 삭제 됩니다.<br>(Items can be stored in shopping cart for 60 days. Items are automatically deleted after 60 days.)</li>
					<!-- 수정 : 2018.10.17 // -->
					<li>배송국가에 따라 해외 배송비가 책정되며 주문서 작성에서 확인이 가능합니다.<br>(International shipping fees are set depending on the destination country. You can check while filling in an order form.)</li>
					<li>일반상품은 해외배송이 불가능하며 사진인화 상품만 가능합니다.<br>(General items are not available for international shipping but photo prints are available.)</li>
					<!-- // 수정 : 2018.10.17 -->
					<li>주문 취소 및 수정은 결제 후 1시간 이내에만 가능하며, 이후에는 주문 취소 및 수정이 불가합니다.<br>(Cancel/Change Order is available only within one hour after payment. After that, Cancel/Change Order is not allowed.)</li>
				</ul>
			</div>

			<!-- 수정 : 2018.10.17 // -->
			<!-- btn// -->
			<div class="bottom_btn_area">
				<button type="button" class="btn_abroad">해외배송<small>International Shipping</small></button>
				<button type="button" class="btn_buy" onclick="location.href='/m/order/order_step1.jsp'">구매하기<small>Domestic Shipping</small></button>
			</div>
			<!-- //btn -->
			<!-- // 수정 : 2018.10.17 -->
		</div>




	</main>
	<!-- //content -->

	<!-- // 추가 : 2018.10.17 -->
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
	<!-- 추가 : 2018.10.17 // -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>

</body>
</html>
