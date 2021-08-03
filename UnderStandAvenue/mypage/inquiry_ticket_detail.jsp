<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="mypage";
	String path2="shop";
	String path3="ticket";
	String path4="";
	String path1tit="MY PAGE";
	String path2tit="CULTURE 예매내역";
	String path3tit="";
	String path4tit="";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="mypage">
		<div class="inquiry ticket detail">
      <!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_mypage.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
            <a href="/mypage/mypage.jsp">MY PAGE</a>
            <a href="/mypage/order_list.jsp">WALKSHOP</a>
						<a href="/mypage/order_list.jsp"><strong>CULTURE 예매내역</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">CULTURE 예매내역</h2>

					<p class="con_tit_txt">CULTURE 예매내역을 조회할 수 있습니다.</p>

					<!-- -->
          <div class="caution_area">
            <strong>꼭 읽어주세요</strong>
            <p>예매취소는 고객센터로 문의주세요.</p>
            <p>고객님께서 직접 구매확정 하지 않은 경우 관람일 기준 익일에 자동 전환됩니다. </p>
            <p>구매확정 후 상품후기 작성이 가능합니다.</p>
          </div>

          <table>
            <caption>상품 주문/결제 내역</caption>

            <colgroup>
              <col style="width:450px;" />
              <col style="width:113px;" />
              <col style="width:112px;" />
              <col style="width:113px;" />
              <col style="width:112px;" />
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
                  <a href="#">
                    <figure>
                      <img src="/avenueCom/images/temp/cart_ticket_thumb.jpg" alt="" />
                      <figcaption class="subject_area">
                        <small class="genre type1">전시</small>
                        <!--<small class="genre type2">공연</small>-->
                        <!--<small class="genre type3">체험</small>-->
                        <small class="genre type4">COUPON</small>
                        <strong class="subject">360stadium “Hello 2016”</strong>
                        <small class="option">날짜 - <time>2016-01-16</time>, 시간 - <time>13:00</time></small>
                      </figcaption>
                    </figure>
                  </a>
                </td>

                <td>
                  <del data-fn="price">12000원</del>
                  <span data-fn="price">10000원</span>
                </td>

                <td>1</td>

                <td>
                  <span data-fn="price">2000원</span>
                </td>

                <td data-fn="price">8000원</td>
              </tr>
              <!-- // 반복영역 -->
            </tbody>

            <tfoot>
              <tr class="price">
                <td colspan="5">
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
                        <th scope="col">총 상품금액</th>
                        <th scope="col">총 상품할인금액</th>
                        <th scope="col">총 쿠폰할인금액</th>
                        <th scope="col">최종 결제금액</th>
                      </tr>
                    </thead>

                    <tbody>
                      <tr>
                        <td class="final" data-fn="price">185000원</td>

                        <td class="discount">
                          <span data-fn="price">32000원</span>
                        </td>

                        <td class="discount" data-fn="price">0원</td>

                        <td class="total" data-fn="price">153000원</td>
                      </tr>
                    </tbody>
                  </table>
                </td>
              </tr>
            </tfoot>
          </table>

					<!-- 취소내역 // -->
					<section class="delivery_info">
						<h4>취소내역</h4>

						<table>
							<caption>취소내역</caption>

							<colgroup>
								<col style="width:150px;" />
								<col style="width:390px;" />
								<col style="width:150px;" />
								<col style="width:390px;" />
							</colgroup>

							<tbody>
								<tr>
									<th scope="row">취소구분</th>
									<td>스탠드</td>

									<th scope="row">취소금앰</th>
									<td>-500원</td>
								</tr>

								<tr>
									<th scope="row">취소수량</th>
									<td>-1장</td>
									<th scope="row">취소일시</th>
									<td>2016년04월22일 15시52분37초</td>
								</tr>
							</tbody>
						</table>
					</section>
					<!-- // 취소내역 -->

          <!-- 예약 정보 // -->
					<section class="delivery_info">
						<h4>주문고객/예약 정보</h4>

						<table>
							<caption>예약 정보 내역</caption>

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
									<th scope="row">기타</th>
									<td colspan="3">부재시 경비실에 맡겨 주세요.</td>
								</tr>
							</tbody>
						</table>
					</section>
					<!-- // 예약 정보 -->

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
										<td>카드
											<span class="btn_area">
												<a href="#" class="small type3 btn_receipt">매출전표</a><!-- 카드일때 -->
												<!--<a href="#" class="small type3 btn_receipt">현금영수증</a>  가상계좌일때 -->
											</span>
										</td>
									</tr>
									<tr>
										<th>결제내용</th>
										<td>국민 (할부 : 03개월)</td>
									</tr>
									<tr class="total_price">
										<th>결제금액</th>
										<td><strong data-fn="price">153,000원</strong></td>
									</tr>
								</tbody>
							</table>
						</section>
						<!-- // 결제정보 -->

						<!-- 예매 안내 // -->
						<section class="delivery_guide ticketing_info">
							<table>
								<caption>예매 안내</caption>

								<colgroup>
									<col />
								</colgroup>

								<tbody>
									<tr>
										<td>
											<p>결제수단을 가상계좌로 선택하신 경우, 입금예정일까지 입금하지 않으시면 주문이 자동취소 됩니다.</p>
											<p>수량 한정 상품의 경우는 결제된 순서대로 배송 진행되며, 결제가 늦어지신 경우 결제가 되었더라도 품절 및 재고부족으로 주문이 취소될 수 있습니다.</p>
											<p>일반 상품 반품은 상품을 수령하신 날로부터 7일 이내에 신청 가능 합니다.</p>
											<p class="caution">공연/전시/체험 예매 취소는 게시판 및 고객센터를 이용하여 반품이 가능합니다.</p>
										</td>
									</tr>

									<tr class="last">
                    <td>
											<div class="btn_area">
												<a href="#" class="midium type4 btn_bbs_list">목록</a>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</section>
						<!-- // 예매 안내 -->
					</div>

					<div class="caution_area2">
						<strong>알려드립니다.</strong>
						<div>
							<p>유효 기한 내 사용하지 않은 티켓은 취소, 변경, 환불이 불가능합니다.</p>
							<p>실물 티켓은 발송되지 않습니다. 현장에서 예매(주문)번호 확인 후 입장 가능합니다.</p>
							<p>예매(주문) 번호는 MY PAGE 에서 확인 하실 수 있습니다.</p>
						</div>
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
