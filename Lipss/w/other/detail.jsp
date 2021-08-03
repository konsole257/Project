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
	<main id="wrap" class="other detail">
		<div id="contents" class="">

			<!-- 일반상품 상세 // -->
			<div class="other_view_area">
				<!-- 상품 주요정보 //-->
				<div class="product">

					<div class="img_area">
						<figure id="picture">
							<img src="/w/pjtCom/images/temp/img_other_440x440.jpg" alt="" class="img">
						</figure>
					</div>

					<div class="info_area">
						<header class="header">
							<ol class="progress">
								<li>GOODS</li>
								<li>앨범</li>
							</ol>

							<button type="button" class="btn_like" onclick="$(this).toggleClass('active');">1,001</button><!-- 내가 love 를 클릭했을때 active 추가 -->
							<button type="button" class="btn_share">공유</button>
							<div class="share_area">
								<div class="inner">
									<button type="button" class="btn_close">접기</button>
									<button type="button" class="btn_facebook">페이스북</button>
									<button type="button" class="btn_kakao">카카오톡</button>
									<button type="button" class="btn_twitter">트위터</button>
									<button type="button" class="btn_url">URL</button>
								</div>
							</div>

							<h2 class="subject">
								<!-- 수정 : 2018.11.23 // -->
								<b>SECHSKIES(젝스키스) 은지원 화보컷 액자</b>

								<!-- 상태아이콘 // -->
								<div class="icon_area">
									<span class="icon_only">ONLY</span>
									<span class="icon_new">NEW</span>
									<%-- <span class="icon_soldout">SOLD OUT</span>
									<span class="icon_end">종료예정</span>
									<span class="icon_sale">판매예정</span> --%>
								</div>
								<!-- // 상태아이콘 -->
								<!-- // 수정 : 2018.11.23 -->
							</h2>
						</header>

						<form>
							<table>
								<caption class="hide">상품주요정보</caption>
								<colgroup>
									<col style="width:158px">
									<col>
								</colgroup>

								<tbody>
									<tr>
										<th>수량</th>
										<td>
											<fieldset class="option_ea_area">
												<legend class="hide">수량 선택</legend>

												<div class="ea_area">
													<input type="number" title="수량 입력" value="1" readonly>
													<button type="button" class="btn_down" onclick="fn.optionEaDown(this);">수량 낮추기</button>
													<button type="button" class="btn_up" onclick="fn.optionEaUp(this);">수량 올리기</button>
												</div>
												<span class="txt-num">(남은 수량 : 999개)</span>
											</fieldset>
										</td>
									</tr>
									<tr>
										<th>배송정보</th>
										<td>
											배송료  ₩2,500 (₩30,000원 이상 주문 시 무료배송)
										</td>
									</tr>
									<tr class="total_price">
										<th>총 상품금액</th>
										<td>
											<del>5,000,000</del><!-- 추가 : 2018.11.27 -->
											<span>5,000,000</span>원
										</td>
									</tr>
								</tbody>
							</table>

							<div class="btn_area">
								<button type="button" class="btn_cart">장바구니<span>Cart</span></button>
								<button type="button" class="btn_buy">구매하기<span>Buy</span></button>
								<button type="button" class="btn_wish">찜<span>Wish List</span></button><!-- 위시리스트에 있는경우 class="on" -->
							</div>

							<!-- 판매예정일경우 // -->
							<!--
							<div class="btn_area">
								<button type="button" class="btn_cart" disabled>장바구니<span>Cart</span></button>
								<button type="button" class="btn_buy" disabled>구매하기<span>Buy</span></button>
								<button type="button" class="btn_wish">찜하기</button>
							</div>
							-->
							<!-- // 판매예정일경우 -->

							<!-- 판매종료일경우 // -->
							<!--
							<div class="btn_area">
								<button type="button" class="btn_soldout" disabled>품절<span>SOLD OUT</span></button>
							</div>
							-->
							<!-- // 판매종료일경우 -->

							<p class="notice">해당 제품은 SPECIAL EDITION으로 ID 1개당 10개의 수량 제한이 있습니다.</ class="notice">
						</form>
					</div>
				</div>
				<!-- // 상품 주요정보 -->

				<!-- 상품 상세 //-->
				<div class="pdetail">
					<ul class="tab_menu">
						<li><a href="#detailInfo">상품상세정보</a></li>
						<li><a href="#reView" class="on">상품후기(33)</a></li>
						<li><a href="#returnInfo">배송/교환/반품</a></li>
						<li><a href="#infoNoti">상품정보고시</a></li>
					</ul>

					<!-- 상품상세정보 // -->
					<div id="detailInfo" class="tab_contents detailinfo">
						상품상세정보 내용
					</div>
					<!-- // 상품상세정보 -->

					<!-- 상품후기 // -->
					<div id="reView" class="tab_contents review show">
						<div class="view-tabs">
							<a href="#" class="on">ALL(30)</a> <!-- 활성화 on 추가 -->
							<a href="#">프리미엄</a>
						</div>

						<!-- list// -->
						<ul>

							<!-- 상품평이 없을경우 // -->
							<!-- <li class="nodata">상품평이 없습니다.</li> -->
							<!-- // 상품평이 없을경우 -->

							<!-- 반복영역 // -->
							<li>
								<div class="user">
									<div class="grade_heart">
										<span><span style="width:20%;">1하트</span></span>
									</div>
									<span class="txt_name">이*동</span>
									<span class="txt_date">2018.09.10</span>
								</div>

								<!-- 상품평 사진 있는 경우 노출 // -->
								<div class="img">
									<figure>
										<img src="/w/pjtCom/images/temp/img_review.jpg" alt="">
									</figure>
								</div>
								<!-- // 상품평 사진 있는 경우 노출 -->

								<a href="#user_review" onclick="fn.popupOpen('#user_review');">
									<div class="retxt ellipsis">정말 기다리고 기다리던 20주면 리미티드 사진을 받았습니다. 두근거리는 설레임을 안고 짜짠~~~ 와 포장지부터가 달랐어요정말 기다리고 기다리던 20주면 리미티드 사진을 받았습니다. 두근거리는 설레임을 안고 짜짠~~~ 와 포장지부터가 달랐어요 너무 좋아요!!정말 기다리고 기다리던 20주면 리미티드 사진을 받았습니다. 두근거리는 설레임을 안고 짜짠~~~ 와 포장지부터가 달랐어요 너무 좋아요!!정말 기다리고 기다리던 20주면 리미티드 사진을 받았습니다. 두근거리는 설레임을 안고 짜짠~~~ 와 포장지부터가 달랐어요 너무 좋아요!!</div>
								</a>
							</li>
							<!-- // 반복영역 -->

							<li>
								<div class="user">
									<div class="grade_heart">
										<span><span style="width:40%;">2하트</span></span>
									</div>
									<span class="txt_name">이*동</span>
									<span class="txt_date">2018.09.10</span>
								</div>

								<a href="#user_review" onclick="fn.popupOpen('#user_review');">
									<div class="retxt ellipsis">와 포장지부터가 달랐어요 너무 좋아요!!와 포장지부터가 달랐어요 너무 좋아요!!와 포장지부터가 달랐어요 너무 좋아요!!와 포장지부터가 달랐어요 너무 좋아요!!와 포장지부터가 달랐어요 너무 좋아요!!</div>
								</a>
							</li>
							<li>
								<div class="user">
									<div class="grade_heart">
										<span><span style="width:60%;">3하트</span></span>
									</div>
									<span class="txt_name">이*동</span>
									<span class="txt_date">2018.09.10</span>
								</div>

								<div class="img">
									<figure>
										<img src="/w/pjtCom/images/temp/img_review.jpg" alt="">
									</figure>
								</div>

								<a href="#user_review" onclick="fn.popupOpen('#user_review');">
									<div class="retxt ellipsis">와 포장지부터가 달랐어요 너무 좋아요!!</div>
								</a>
							</li>
							<li>
								<div class="user">
									<div class="grade_heart">
										<span><span style="width:80%;">4하트</span></span>
									</div>
									<span class="txt_name">이*동</span>
									<span class="txt_date">2018.09.10</span>
								</div>

								<div class="img">
									<figure>
										<img src="/w/pjtCom/images/temp/img_review.jpg" alt="">
									</figure>
								</div>

								<a href="#user_review" onclick="fn.popupOpen('#user_review');">
									<div class="retxt ellipsis">와 포장지부터가 달랐어요 너무 좋아요!!와 포장지부터가 달랐어요 너무 좋아요!!와 포장지부터가 달랐어요 너무 좋아요!!와 포장지부터가 달랐어요 너무 좋아요!!와 포장지부터가 달랐어요 너무 좋아요!!</div>
								</a>
							</li>
						</ul>

						<div class="paging">
							<a href="#" class="btn_prev">이전</a>
							<span class="num">
								<a href="#" class="on">1</a>
								<a href="#">2</a>
								<a href="#">3</a>
							</span>
							<a href="#" class="btn_next">다음</a>
						</div>
						<!-- // list -->
					</div>
					<!-- // 상품후기 -->

					<!-- 배송/교환/반품 // -->
					<div id="returnInfo" class="tab_contents returninfo">
						배송/교환/반품 내용
					</div>
					<!-- // 배송/교환/반품 -->

					<!-- 상품정보고시 // -->
					<div id="infoNoti" class="tab_contents infonoti">
						상품정보고시 내용
					</div>
					<!-- // 상품정보고시 -->

				</div>
				<!-- // 상품 상세 -->
			</div>
			<!-- // 일반상품 상세 -->

			<!-- 추천상품 리스트 // -->
			<div class="recommend_area">
				<strong>Recommend<br>Item</strong>
				<div class="pro_list">
					<div class="swiper-container recommend_swiper">
						<div class="swiper-wrapper">
							<!-- 반복영역 // -->
							<div class="swiper-slide">
								<a href="#">
									<figure><img src="/w/pjtCom/images/temp/img_other_440x440.jpg" alt="" class="img"></figure>

									<div class="info_area">
										<span class="txt_ti ellipsis">SECHSKIES(젝스키스) - 2016 RE-ALBUM</span>
										<span class="txt_price">46,000원</span>
									</div>
								</a>
							</div>
							<!-- // 반복영역 -->

							<div class="swiper-slide">
								<a href="#">
									<figure><img src="/w/pjtCom/images/temp/img_other_440x440.jpg" alt="" class="img"></figure>

									<div class="info_area">
										<span class="txt_ti ellipsis">WINNER(위너) SECOND ALBUM EVERYD4Y</span>
										<span class="txt_price">46,000원</span>
									</div>
								</a>
							</div>
							<div class="swiper-slide">
								<a href="#">
									<figure><img src="/w/pjtCom/images/temp/img_other_440x440.jpg" alt="" class="img"></figure>

									<div class="info_area">
										<span class="txt_ti ellipsis">WINNER(위너) SECOND ALBUM EVERYD4Y WINNER(위너) SECOND ALBUM EVERYD4Y</span>
										<span class="txt_price">46,000원</span>
									</div>
								</a>
							</div>
							<div class="swiper-slide">
								<a href="#">
									<figure><img src="/w/pjtCom/images/temp/img_other_440x440.jpg" alt="" class="img"></figure>

									<div class="info_area">
										<span class="txt_ti ellipsis">WINNER(위너) SECOND ALBUM EVERYD4Y WINNER(위너) SECOND ALBUM EVERYD4Y</span>
										<span class="txt_price">46,000원</span>
									</div>
								</a>
							</div>
							<div class="swiper-slide">
								<a href="#">
									<figure><img src="/w/pjtCom/images/temp/img_other_440x440.jpg" alt="" class="img"></figure>

									<div class="info_area">
										<span class="txt_ti ellipsis">WINNER(위너) SECOND ALBUM EVERYD4Y WINNER(위너) SECOND ALBUM EVERYD4Y</span>
										<span class="txt_price">46,000원</span>
									</div>
								</a>
							</div>
							<div class="swiper-slide">
								<a href="#">
									<figure><img src="/w/pjtCom/images/temp/img_other_440x440.jpg" alt="" class="img"></figure>

									<div class="info_area">
										<span class="txt_ti ellipsis">WINNER(위너) SECOND ALBUM EVERYD4Y WINNER(위너) SECOND ALBUM EVERYD4Y</span>
										<span class="txt_price">46,000원</span>
									</div>
								</a>
							</div>
						</div>
					</div>
					<div class="swiper-button-next"></div>
					<div class="swiper-button-prev"></div>
				</div>
			</div>
			<!-- // 추천상품 리스트 -->
		</div>
	</main>
	<!-- // wrap -->

	<!-- 상품평 // -->
	<div id="user_review" class="popup user_review">
		<div class="inner">
			<header class="header">
				<h2 class="tit">LIPSS TALK</h2>

				<button type="button" class="btn_close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<div class="top">
					<span class="txt_id">sss***</span>
					<div class="grade_heart">
						<span><span style="width:80%;">4하트</span></span>
					</div>
					<a href="#">상품보기 &gt;</a>
				</div>

				<div class="reviewpic"><img src="/w/pjtCom/images/temp/img_user_review_440X292.jpg"></div>

				<div class="scrollbar-macosx">
					<p class="reviewtxt">
						이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
						이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
						이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
						이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
						이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
						이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
					</p>
				</div>
			</div>
		</div>
	</div>
	<!-- // 상품평 -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->

</body>

</html>
