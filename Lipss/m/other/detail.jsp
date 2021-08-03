<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
	<!-- config// -->
	<%@ include file="/m/inCom/_config.jsp" %>
	<!-- //config -->

	<link rel="stylesheet" type="text/css" href="/m/mpjtCom/css/sub.css" />
	<title>LIPSS</title>

	<script type="text/javascript" src="/m/mpjtCom/js/lib/hammer.min.js"></script>
	<script type="text/javascript" src="/m/mpjtCom/js/lib/beepPanZoom.js"></script>
</head>
<body class="other">
<div id="wrap" class="detail">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<div class="sns">
		<a href="#" onclick="$(this).toggleClass('active');" class="btn-love">1,001</a>	<!-- 내가 love 를 클릭했을때 active 추가 -->
		<a href="#" class="btn-share">공유하기</a>
		<div class="shareinner">
			<span>공유하기</span>
			<a href="#" class="btn-facebook">facebook</a>
			<a href="#" class="btn-kakao">kakao</a>
			<a href="#" class="btn-twitter">twitter</a>
			<a href="#" class="btn-url">URL</a>
		</div>
	</div>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- pic// -->
		<div class="pic">
			<div class="img_wrap">
				<img src="/m/mpjtCom/images/temp/img_other.jpg" alt="[SF9] SENSUOUS BEHIND CUT GROUP No.01" class="img" />
				<div class ="img_cotainer">
					<img src ="/m/mpjtCom/images/temp/img_other.jpg" />
				</div>
			</div>
		</div>
		<!-- //pic -->

		<!-- info// -->
		<div class="info_top">
			<!-- 상태아이콘// -->
			<div class="icon_area">
				<span class="icon_only">ONLY</span>
				<span class="icon_new">NEW</span>
				<span class="icon_selling">판매예정</span>
				<span class="icon_end">종료예정</span>
				<span class="icon_soldout">SOLD OUT</span>
			</div>
			<!-- //상태아이콘 -->

			<h2 class="subject">SECHSKIES(젝스키스) 은지원 화보컷 액자</h2>
		</div>
		<div class="info">
			<table>
				<caption class="hide">상품주요정보</caption>
				<colgroup>
					<col style="width:76px">
					<col>
				</colgroup>

				<tbody>
					<tr>
						<th>수량</th>
						<td>
							<span class="txt-num">(남은 수량 : 999개)</span>
							<div class="ea_area">
								<input type="number" name="num" title="수량 입력" value="1" readonly="">
								<button type="button" class="btn_down" onclick="fn.optionEaDown(this);">수량 낮추기</button>
								<button type="button" class="btn_up" onclick="fn.optionEaUp(this);">수량 올리기</button>
							</div>
						</td>
					</tr>
					<tr class="shipping">
						<th>배송정보</th>
						<td>
							배송료  ₩2,500<span class="txt-free">(₩30,000원 이상 주문 시 무료배송)</span>
						</td>
					</tr>
					<!-- //옵션이 있는경우 -->
					<tr class="option_list">
						<th>옵션</th>
						<td>
							<div>
								<label><input type="checkbox"><span><img src="/m/mpjtCom/images/temp/img_other.jpg" alt="" class="img" /></span></label>
								<label><input type="checkbox"><span><img src="/m/mpjtCom/images/temp/img_other.jpg" alt="" class="img" /></span></label>
							</div>

						</td>
					</tr>
					<!-- 옵션이 있는경우// -->
					<tr class="total_price">
						<th>총상품금액</th>
						<td>
							<del>30,000</del><span class="txt-price">5,000,000원</span>
						</td>
					</tr>
				</tbody>
			</table>
			<p>해당 제품은 SPECIAL EDITION으로 ID 1개당 10개의 수량 제한이 있습니다.</p>
		</div>
		<!-- //info -->

		<!-- btn// -->
		<div class="btn_area">
			<button type="button" class="btn_cart">장바구니<small>Cart</small></button>
			<button type="button" class="btn_buy">구매하기<small>Buy</small></button>
			<button type="button" class="btn_wish">찜하기<small>Wish List</small></button><!-- 찜한상품일경우 class="on" -->
		</div>

		<!-- 판매예정일경우// -->
		<div class="btn_area" style="display:none;">
			<button type="button" class="btn_cart" disabled>장바구니<small>Cart</small></button>
			<button type="button" class="btn_buy" disabled>구매하기<small>Buy</small></button>
			<button type="button" class="btn_wish" onclick="fn.popupOpen('#popOptionWish')">찜하기<small>Wish List</small></button>
		</div>
		<!-- //판매예정일경우 -->

		<!-- 판매종료일경우// -->
		<!--
		<div class="btn_area">
			<button type="button" class="btn_soldout" disabled>SOLD OUT</button>
		</div>
		-->
		<!-- //판매종료일경우 -->
		<!-- //btn -->

		<!-- 일반상품 상세 //-->
		<div class="pdetail">
			<div id="tabList" class="tab_list">
				<div class="swiper-container">
					<ul class="swiper-wrapper tab_menu">
						<li class="swiper-slide"><a href="#detailInfo" class="on"><span>상품상세정보</span></a></li>
						<li class="swiper-slide"><a href="#reView"><span>상품후기(33)</span></a></li>
						<li class="swiper-slide"><a href="#returnInfo"><span>배송/교환/반품</span></a></li>
						<li class="swiper-slide"><a href="#infoNoti"><span>상품정보고시</span></a></li>
					</ul>
				</div>
			</div>

			<!-- 상품상세정보 // -->
			<div id="detailInfo" class="tab_contents detailinfo show">
				상품상세정보 내용
			</div>
			<!-- // 상품상세정보 -->

			<!-- 상품후기 // -->
			<div id="reView" class="tab_contents review">

				<div class="view_tabs">
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

				<div class="paging paging_type2">
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
		<!-- // 일반상품 상세 -->

		<!-- 추천상품 리스트 // -->
		<div class="recommend_area">
			<strong>Recommend Item</strong>
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
	</main>
	<!-- //content -->

	<!-- 상품평 // -->
	<div id="user_review" class="popup user_review">
		<div class="popup_area">
			<div class="inner">
				<button type="button" class="btn_close" onclick="fn.popupClose('#user_review')">닫기</button>
				<h3>LIPSS TALK</h3>

				<div class="contents">
					<div class="top">
						<span class="txt_id">sss***</span>
						<div class="grade_heart">
							<span><span style="width:80%;">4하트</span></span>
						</div>
						<a href="#">상품보기 &gt;</a>
					</div>

					<div class="reviewpic"><img src="/w/pjtCom/images/temp/img_user_review_440X292.jpg"></div>

					<div class="swiper-container popscroll"><div class="swiper-wrapper"><div class="swiper-slide">
						<p class="reviewtxt">
							이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
							이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
							이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
							이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
							이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
							이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
						</p>
					</div></div><div class="swiper-scrollbar"></div></div>
				</div>
			</div>
		</div>
	</div>
	<!-- // 상품평 -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>
</body>
</html>