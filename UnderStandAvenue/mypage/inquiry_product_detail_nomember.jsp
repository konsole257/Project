<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="mypage";
	String path2="shop";
	String path3="product";
	String path4="";
	String path1tit="MY PAGE";
	String path2tit="주문/배송 조회";
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
		<div class="inquiry product detail">
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
            <a href="/mypage/inquiry_product_list.jsp">WALKSHOP</a>
						<a href="/mypage/inquiry_product_list.jsp"><strong>주문/배송 조회</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">주문/배송 조회</h2>

					<p class="con_tit_txt">주문/배송 내역을 조회할 수 있습니다.</p>

					<!-- -->
          <div class="caution_area">
            <strong>꼭 읽어주세요</strong>
            <p>주문취소는 배송 시작 전 단계에서만 기능합니다. 주문내역에서 취소 가능합니다.</p>
            <p>이후에는 반품으로 진행되며, 단순변심으로 인한 반품일 경우 반품배송비가 추가 발생할 수 있습니다.</p>
            <p>고객님께서 직접 구매확정 하지 않은 경우 배송완료 후 7일에 자동 전환됩니다.</p>
            <p>구매확정 후 상품후기 작성이 가능합니다.</p>
          </div>

					<!-- 주문정보 // -->
					<table class="bbs list type1 nomember_info">
						<caption>상품 주문/결제 내역</caption>

            <colgroup>
              <col style="width:112px;" />
							<col style="width:338px;" />
              <col style="width:113px;" />
              <col style="width:112px;" />
              <col style="width:225px;" />
            </colgroup>

            <thead>
              <tr>
                <th scope="col">주문번호</th>
								<th scope="col">주문상품정보</th>
								<th scope="col">수량</th>
                <th scope="col">결제금액</th>
                <th scope="col">주문/배송상태</th>
              </tr>
            </thead>

            <tbody>
							<tr>
								<td class="number">
									<span><a href="#">9876534098</a></span>
								</td>
								<td class="subject">
									<a href="#" class="dotdot">인디고 클러치 for 아이패드 (Indigo Clutch for.인디고인디고</a>
								</td>
								<td>1</td>
								<td data-fn="price">45000원</td>
								<td class="status">
									<span>입금대기</span>
									<div class="btn_area">
										<a href="#" class="small type3 btn_delivery">배송조회</a>
										<a href="#" class="small type1 btn_comfirm">구매확정</a>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<!-- // 주문정보 -->

					<!-- 상품정보 // -->
          <table>
            <caption>상품 내역</caption>

            <colgroup>
              <col style="" />
              <col style="width:112px;" />
              <col style="width:113px;" />
              <col style="width:112px;" />
            </colgroup>

            <thead>
              <tr>
                <th scope="col">상품정보</th>
                <th scope="col">수량</th>
                <th scope="col">상품금액</th>
                <th scope="col">주문금액</th>
              </tr>
            </thead>

            <tbody>
              <!-- 반복영역 // -->
              <tr>
                <td class="info">
                  <a href="#">
                    <figure>
                      <img src="/avenueCom/images/temp/cart_product_thumb.jpg" alt="" />
                      <figcaption class="subject_area">
                        <strong class="subject">인디고 클러치 for 아이패드 (Indigo Clutch for Ipad)</strong>
                        <small class="option">색상 - 엘로우,  사이즈 -  xl</small>
                      </figcaption>
                    </figure>
                  </a>
                </td>

                <td>
                  <del data-fn="price">12000원</del>
                  <span data-fn="price">10000원</span>
                </td>

                <td>1</td>

                <td data-fn="price">8000원</td>
              </tr>
              <!-- // 반복영역 -->

              <tr class="delevery">
                <td colspan="7">
									<!-- 2016-04-21 :수정 // -->
                  <em>배송비<span class="delivery_sale">(배송비 쿠폰할인 금액)</span> <span data-fn="price">0</span>원 <span class="delivery_sale">(1,500원)</span></em>
									<!-- // 2016-04-21 :수정 -->
                </td>
              </tr>
            </tbody>

            <tfoot>
              <tr class="price">
                <td colspan="5">
                  <table>
                    <caption>결제금액</caption>

                    <colgroup>
                      <col style="width:235px;" />
                      <col style="width:235px;" />
                      <col style="width:195px;" />
                      <col style="width:260px;" />
                    </colgroup>

                    <thead>
                      <tr>
                        <th scope="col">총 상품금액</th>
                        <th scope="col">총 상품할인금액</th>
                        <th scope="col">배송비</th>
                        <th scope="col">최종 결제금액</th>
                      </tr>
                    </thead>

                    <tbody>
                      <tr>
                        <td class="final" data-fn="price">185000원</td>

                        <td class="discount">
                          <span data-fn="price">32000원</span>
                        </td>

                        <td class="delivery" data-fn="price">0원</td>

                        <td class="total" data-fn="price">153000원</td>
                      </tr>
                    </tbody>
                  </table>
                </td>
              </tr>

							<!-- 추가 배송비가 있을때 : 2016-04-21 : 추가 // -->
							<tr class="price delivery_add_price">
								<td colspan="5">
									<table>
										<caption>결제금액</caption>

										<colgroup>
											<col style="width:235px;" />
                      <col style="width:235px;" />
                      <col style="width:235px;" />
                      <col style="width:220px;" />
										</colgroup>

										<thead>
											<tr>
												<th scope="col">총 상품금액</th>
												<th scope="col">총 상품할인금액</th>
												<th scope="col">배송비<small class="delivery_add">(추가배송비)</small></th>
												<th scope="col">최종 결제금액</th>
											</tr>
										</thead>

										<tbody>
											<tr>
												<td class="final" data-fn="price">185000원</td><!-- 주문금액 -->

												<td class="discount"><!-- 총 할인금액 -->
													<span data-fn="price">32000원</span>
												</td>

												<td class="delivery"><span data-fn="price">0</span>원<small class="delivery_add">(6,000원)</small></td><!-- 배송비 -->

												<td class="total" data-fn="price">153000원</td><!-- 최종 결제금액 -->
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
							<!-- // 추가 배송비가 있을때 : 2016-04-21 : 추가 -->
            </tfoot>
          </table>
					<!-- // 상품정보 -->

					<!-- 취소내역 : 2016-05-02 : 추가 // -->
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

          <!-- 배송 정보 // -->
					<section class="delivery_info">
						<h4>주문고객/배송 정보</h4>

						<table>
							<caption>배송 정보 내역</caption>

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
									<th scope="row">주소</th>
									<td colspan="3">
										123 - 456<br />
										서울시 마포구 서강대길3
									</td>
								</tr>

								<tr>
									<th scope="row">배송시 요구사항</th>
									<td colspan="3">부재시 경비실에 맡겨 주세요.</td>
								</tr>
							</tbody>
						</table>
					</section>
					<!-- // 배송 정보 -->

					<div class="pay_area">
						<!-- 결제정보 // -->
						<section class="pay_method">
							<h4>결제정보</h4>

							<table>
								<caption>결제정보 내역</caption>

								<colgroup>
									<col style="width:150px;" />
									<col style="width:290px;" />
								</colgroup>

								<tbody>
									<tr>
										<th>결제방법</th>
										<td>카드</td>
									</tr>
									<tr>
										<th>결제내용</th>
										<td>국민 (할부 : 03개월)</td>
									</tr>
									<tr class="total_price">
										<th>결제금액</th>
										<td><strong data-fn="price">153,000원</strong></td>
									</tr>
									<tr class="last">
										<td colspan="2">
											<p>결제수단을 가상계좌로 선택하신 경우, 입금예정일까지 입금하지 않으시면 주문이 자동취소 됩니다.</p>
											<p>수량 한정 상품의 경우는 결제된 순서대로 배송 진행되며, 결제가 늦어지신 경우 결제가 되었더라도 품절 및 재고부족으로 주문이 취소될 수 있습니다.</p>
											<p>일반 상품 반품은 상품을 수령하신 날로부터 7일 이내에 신청 가능 합니다.</p>
											<p class="caution">공연/전시/체험 예매 취소는 게시판 및 고객센터를 이용하여 반품이 가능합니다.</p>
										</td>
									</tr>
								</tbody>
							</table>
						</section>
						<!-- // 결제정보 -->

						<!-- 배송 안내 // -->
						<section class="delivery_guide">
							<h4>배송 안내</h4>

							<table>
								<caption>배송 안내</caption>

								<colgroup>
									<col style="width:80px;" />
									<col />
								</colgroup>

								<tbody>
									<tr>
										<th>배송사</th>
										<td>한진택배</td>
									</tr>

									<tr>
										<th>배송비</th>
										<td>2,500원(단, 제주도 및 도서산간지역은 추가 운임료 발생) </td>
									</tr>

									<tr>
										<th>배송기간</th>
										<td>입금완료 확인 후 2-5일 이내에 배송됩니다.(단, 제주도 및 도서산간 지역은 추가기간 발생) 고객님의 연락두절 및 부재 등으로 인하 여 반송된 경 에는 왕복 택배비가 부과 됩니다.</td>
									</tr>

									<tr class="last">
										<td colspan="2">
											<div class="btn_area">
												<a href="#" class="midium type4 btn_bbs_list">목록</a>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</section>
						<!-- // 배송 안내 -->

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
