<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
	<!-- config// -->
	<%@ include file="/m/inCom/_config.jsp" %>
	<!-- //config -->

	<link rel="stylesheet" type="text/css" href="/m/mpjtCom/css/sub.css" />
	<title>LIPSS</title>
</head>
<body class="goods">
<div id="wrap" class="detail">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<div class="sns">
		<a href="#" onclick="$(this).toggleClass('active');" class="btn-love">1,001</a>	<!-- 내가 love 를 클릭했을때 active 추가 -->
		<!-- <a href="#" class="btn-chating">chating</a> -->
		<a href="#" class="btn-share">공유하기</a>
		<div class="shareinner">
			<a href="#" class="btn-facebook">facebook</a>
			<a href="#" class="btn-kakao">kakao</a>
			<a href="#" class="btn-url">URL</a>
		</div>
	</div>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- pic// -->
		<div class="swiper-container pic">
			<div class="swiper-wrapper">
				<div class="swiper-slide"><img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="[젝스키스] Now, Here, We - in Hawaii We, 은지원 no.2" /></div>
				<div class="swiper-slide"><img src="/w/pjtCom/images/sub/img_goods_texture.jpg" alt="" /></div>
				<div class="swiper-slide"><img src="/w/pjtCom/images/sub/img_goods_size.jpg" alt="" /></div>
			</div>
			 <div class="swiper-pagination"></div>
		</div>
		<!-- //pic -->

		<!-- info// -->
		<div class="info">
			<!-- 상태아이콘// -->
			<div class="icon_area">
				<span class="icon_only">ONLY</span>
				<span class="icon_new">NEW</span>
				<span class="icon_selling">판매예정</span>
				<span class="icon_end">종료예정</span>
				<span class="icon_soldout">SOLD OUT</span>
			</div>
			<!-- //상태아이콘 -->
			<h2 class="subject">[젝스키스] Now, Here, We - in Hawaii We, 은지원 no.2</h2>
			<!-- 판매중, 종료예정, 판매종료일경우// -->
			<dl class="period">
				<dt>판매기간 :</dt>
				<dd>4/15 12:00 ~ 4/22 23:59</dd>
			</dl>
			<!-- //판매중일경우 -->
			<!-- 판매예정일경우// -->
			<dl class="period">
				<dt><strong>판매예정 :</strong></dt>
				<dd>4/15 12:00</dd>
			</dl>
			<!-- //판매예정일경우 -->
		</div>
		<!-- //info -->

		<!-- btn// -->
		<div class="btn_area">
			<button type="button" class="btn_cart" onclick="fn.popupOpen('#popOption')">장바구니<small>Cart</small></button>
			<button type="button" class="btn_buy" onclick="fn.popupOpen('#popOption')">구매하기<small>Buy</small></button>
			<button type="button" class="btn_wish on" onclick="fn.popupOpen('#popOptionWish')">찜하기</button><!-- 찜한상품일경우 class="on" : 수정 : 2018.06.01 -->
		</div>
		<!-- 판매예정일경우// -->
		<div class="btn_area" style="display:none;">
			<button type="button" class="btn_cart" disabled>장바구니<small>Cart</small></button>
			<button type="button" class="btn_buy" disabled>구매하기<small>Buy</small></button>
			<button type="button" class="btn_wish" onclick="fn.popupOpen('#popOptionWish')">찜하기</button>
		</div>
		<!-- //판매예정일경우 -->
		<!-- 판매종료일경우// -->
		<div class="btn_area" style="display:none;">
			<button type="button" class="btn_soldout" disabled>SOLD OUT</button>
		</div>
		<!-- //판매종료일경우 -->
		<!-- //btn -->

	</main>
	<!-- //content -->

	<!-- popup:옵션정보// -->
	<div id="popOption" class="pupfull option">
		<div class="popup_area">
			<div class="inner">
				<header>
					<h3>옵션정보</h3>
					<button type="button" class="btn_close" onclick="fn.popupClose('#popOption');">닫기</button>
				</header>
				<main>
					<!-- 옵션선택// -->
					<div class="optselect">
						<strong>Option (Size – Type)</strong><!-- 수정 : 2018.06.05 -->
						<button type="button" class="btn_optionchoice" onclick="fn.popupToggle('.option_area', this);">상품선택</button>
						<div class="option_area"> <!-- 판매예정, 판매 종료일경우 <input type=checkbox" disabled> -->
							<label for="view_post_matt"><input type="checkbox" id="view_post_matt" class="chk_type1" onchange="fn.optionAdd(this);" disabled><span>Post - 매트</span></label>
							<label for="view_stand_matt"><input type="checkbox" id="view_stand_matt" class="chk_type1" onchange="fn.optionAdd(this);"><span>Stand - 매트</span></label>
							<label for="view_stand_flex"><input type="checkbox" id="view_stand_flex" class="chk_type1" onchange="fn.optionAdd(this);"><span>Stand - 플렉스</span></label>
							<label for="view_frame_matt"><input type="checkbox" id="view_frame_matt" class="chk_type1" onchange="fn.optionAdd(this);"><span>Frame - 매트</span></label>
							<label for="view_frame_flex"><input type="checkbox" id="view_frame_flex" class="chk_type1" onchange="fn.optionAdd(this);"><span>Frame - 플렉스</span></label>
							<label for="view_frame_canvas"><input type="checkbox" id="view_frame_canvas" class="chk_type1" onchange="fn.optionAdd(this);"><span>Frame - 캔버스</span></label>
						</div>
					</div>
					<!-- //옵션선택 -->
					<!-- 옵션선택결과// -->
					<div class="option_ea_area">
						<div class="swiper-container popscroll"><div class="swiper-wrapper"><div class="swiper-slide">
							<ul class="option_ea_list">
								<!--
								<li class="view_stand_matt">
									<span class="option_name">Stand - 매트</span>
									<div class="ea_area">
										<input type="number" name="num" title="수량 입력" value="1" readonly="">
										<button type="button" class="btn_down" onclick="fn.optionEaDown(this);">수량 낮추기</button>
										<button type="button" class="btn_up" onclick="fn.optionEaUp(this);">수량 올리기</button>
									</div>
									<span class="price">5,000원</span>
									<button type="button" class="btn_del" onclick="fn.optionDel(this);">삭제</button>
								</li>
								-->
							</ul>
						</div></div><div class="swiper-scrollbar"></div></div>
					</div>
					<!-- //옵션선택결과 -->
					<dl class="total_price">
						<dt>총 상품금액</dt>
						<dd><span>5,000,000</span>원</dd>
					</dl>
					<!-- btn// -->
					<div class="btn_area">
						<button type="button" class="btn_cart">장바구니<small>Cart</small></button>
						<button type="button" class="btn_buy">구매하기<small>Buy</small></button>
					</div>
					<!-- //btn -->
					<dl class="shipping">
						<dt>배송료</dt>
						<dd>: 2,500원 (30,000원 이상 주문 시 무료배송)</dd>
					</dl>
				</main>
			</div>
		</div>
	</div>
	<!-- //popup:옵션정보 -->
	<!-- popup:찜하기옵션정보// -->
	<div id="popOptionWish" class="pupfull option">
		<div class="popup_area">
			<div class="inner">
				<header>
					<h3>옵션정보</h3>
					<button type="button" class="btn_close" onclick="fn.popupClose('#popOptionWish');">닫기</button>
				</header>
				<main>
					<!-- 옵션선택// -->
					<div class="optselect">
						<strong>Option (Size – Type)</strong><!-- 수정 : 2018.06.05 -->
						<button type="button" class="btn_optionchoice" onclick="fn.popupToggle('.option_area', this);">상품선택</button>
						<div class="option_area"> <!-- 판매예정, 판매 종료일경우 <input type=checkbox" disabled> -->
							<label for="wish_view_post_matt"><input type="checkbox" id="wish_view_post_matt" class="chk_type1" onchange="fn.optionAdd(this);" disabled><span>Post - 매트</span></label>
							<label for="wish_view_stand_matt"><input type="checkbox" id="wish_view_stand_matt" class="chk_type1" onchange="fn.optionAdd(this);"><span>Stand - 매트</span></label>
							<label for="wish_view_stand_flex"><input type="checkbox" id="wish_view_stand_flex" class="chk_type1" onchange="fn.optionAdd(this);"><span>Stand - 플렉스</span></label>
							<label for="wish_view_frame_matt"><input type="checkbox" id="wish_view_frame_matt" class="chk_type1" onchange="fn.optionAdd(this);"><span>Frame - 매트</span></label>
							<label for="wish_view_frame_flex"><input type="checkbox" id="wish_view_frame_flex" class="chk_type1" onchange="fn.optionAdd(this);"><span>Frame - 플렉스</span></label>
							<label for="wish_view_frame_canvas"><input type="checkbox" id="wish_view_frame_canvas" class="chk_type1" onchange="fn.optionAdd(this);"><span>Frame - 캔버스</span></label>
						</div>
					</div>
					<!-- //옵션선택 -->
					<!-- 옵션선택결과// -->
					<div class="option_ea_area">
						<div class="swiper-container popscroll"><div class="swiper-wrapper"><div class="swiper-slide">
							<ul class="option_ea_list">
								<!--
								<li class="view_stand_matt">
									<span class="option_name">Stand - 매트</span>
									<div class="ea_area">
										<input type="number" name="num" title="수량 입력" value="1" readonly="">
										<button type="button" class="btn_down" onclick="fn.optionEaDown(this);">수량 낮추기</button>
										<button type="button" class="btn_up" onclick="fn.optionEaUp(this);">수량 올리기</button>
									</div>
									<span class="price">5,000원</span>
									<button type="button" class="btn_del" onclick="fn.optionDel(this);">삭제</button>
								</li>
								-->
							</ul>
						</div></div><div class="swiper-scrollbar"></div></div>
					</div>
					<!-- //옵션선택결과 -->
					<!-- btn// -->
					<div class="btn_area">
						<button type="button" class="btn_wish">위시리스트<small>Wishlist</small></button>
					</div>
					<!-- //btn -->
				</main>
			</div>
		</div>
	</div>
	<!-- //popup:찜하기옵션정보 -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>
</body>
</html>
