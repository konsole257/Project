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

	<style>
		.img_wrap {display:inline-block;position:relative;}
		.img_wrap .img_cotainer {position:absolute;left:0;top:0;width:100%;height:100%;z-index:10;overflow:hidden;}
		.img_wrap .img_cotainer img {width:inherit;height:inherit;}
	</style>

	<script>
		$(document).ready(function(){
			$(".img_cotainer").css({
				width: $("#prdImg1 img").width(),
				height: $("#prdImg1 img").height()
			});
			$ (".img_cotainer").beepPanZoom({
				MIN_SCALE:1,
				MAX_SCALE:5
			});
		});
	</script>
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
			<a href="#" class="btn-twitter">twitter</a>
			<a href="#" class="btn-url">URL</a>
		</div>
	</div>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- pic// -->
		<div class="pic">
			<div class="swiper-wrapper">
				<div class="swiper-slide" id="prdImg1">
					<div class="img_wrap">
						<img src="http://d3eqo368qgj1f7.cloudfront.net/upload/imgServer/goods/1450/YIGRN_01_B.jpg" alt="[SF9] SENSUOUS BEHIND CUT GROUP No.01" class="slideImg" />
						<div class ="img_cotainer">
							<img src ="http://d3eqo368qgj1f7.cloudfront.net/upload/imgServer/goods/1450/YIGRN_01_B.jpg" />
						</div>
					</div>
				</div>
			</div>
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
			<button type="button" class="btn_wish on" onclick="fn.popupOpen('#popOptionWish')">찜<small>Wish List</small></button><!-- 찜한상품일경우 class="on" : 수정 : 2018.06.01 -->
		</div>
		<!-- 판매예정일경우// -->
		<div class="btn_area" style="display:none;">
			<button type="button" class="btn_cart" disabled>장바구니<small>Cart</small></button>
			<button type="button" class="btn_buy" disabled>구매하기<small>Buy</small></button>
			<button type="button" class="btn_wish" onclick="fn.popupOpen('#popOptionWish')">찜<small>Wish List</small></button>
		</div>
		<!-- //판매예정일경우 -->
		<!-- 판매종료일경우// -->
		<div class="btn_area" style="display:none;">
			<button type="button" class="btn_soldout" disabled>SOLD OUT</button>
		</div>
		<!-- //판매종료일경우 -->
		<!-- //btn -->

		<section class="goods_info">
			<h3>Size</h3>
			<div>
				<div>
					<img src="/mpjtCom/images/sub/img_goods_size.jpg" alt="" />
				</div>
			</div>
		</section>

		<section class="goods_info">
			<h3>Type</h3>
			<div>
				<div>
					<img src="/mpjtCom/images/sub/img_goods_texture.jpg" alt="" />
				</div>
			</div>
		</section>

		<section class="goods_info">
			<h3>제품기본정보</h3>
			<div>
				<div>
					<table>
						<colgroup>
							<col style="width:120px;">
							<col>
						</colgroup>

						<tbody>
							<tr>
								<th>품명 및 모델명</th>
								<td>립스사진인화</td>
							</tr>
							<tr>
								<th>KC인증필유무</th>
								<td>해당사항없음</td>
							</tr>
							<tr>
								<th>제조사</th>
								<td>후지필름/한국후지필름 (주)</td>
							</tr>
							<tr>
								<th>제조국</th>
								<td>대한민국</td>
							</tr>
							<tr>
								<th>재질</th>
								<td>인화지 (매트, 크리스탈)</td>
							</tr>
							<tr>
								<th>사이즈</th>
								<td>
									[Post] 10.2*15.1 / [Stand] 20.3*30.5 / [Frame] 30.5*45.5
									※실측사이즈는 여건에 따라 오차가 발생할 수 있습니다.
								</td>
							</tr>
							<tr>
								<th>A/S 책임자 및 전화번호</th>
								<td>
									후지필름 고객센터/02-3281-7700
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</section>

		<section class="goods_info">
			<h3>취소/교환</h3>
			<div>
				<div>
					<div>
						<p>교환은 물품 발송 후 10일 이내에 접수(전화 혹은 1:1문의접수)후 당사에 입고된 상품에 한하여 처리됩니다.</p>

						<ol>
							<li>
								<span>1. 취소</span>
								<p>상품을 주문하신 후 [마이페이지]의 주문 진행 정보를 확인해 주십시요.</p>
								<p>현재 상태가 [주문접수]. [결제완료] 시점일 경우 온라인상에서 즉시 취소가 가능합니다.</p>
								<p>단, 현재 상태가 상품준비중 이후 시점부터는 자동으로 생산이 진행되어 발송되기 때문에 취소가 불가합니다.</p>
							</li>
							<li>
								<span>2. 교환</span>
								<p>제품 발송일 기준 10일 이내 접수 (고객센터 전화 및 게시판) 후 당사에 입고된 상품에 한하여 처리됩니다.</p>
								<p>제품 하자로 인한 교환을 원하실 경우는 고객센터로 문의 바랍니다. (02-3281-7700)</p>
							</li>
							<li>
								<span>3. 교환이 가능한 경우</span>
								<p>제품 수령 후 제품이 주문 내용과 다른 경우</p>
								<p>제품이 LIPSS에서 제공한 정보와 다른 경우</p>
								<p>제품이 고객님께 인도될 당시 상품이 멸실 또는 훼손된 경우</p>
								<p>전자상거래 등에서의 소비자보호에 관한 법률에 규정되어 있는 소비자 청약철회 가능범위에 해당되는 경우</p>
								<p>당사 과실로 인한 교환 비용은 당사에서 부담하며 단순변심 시 고객 부담입니다.</p>
							</li>
							<li>
								<span>4. 교환이 불가능한 경우</span>
								<p>고객님의 개인 사유로 상품 등이 멸실 또는 훼손되거나 고객님의 사용 또는 일부 소비에 의하여 상품의 가치가 감소한 경우</p>
								<p>단순고객변심으로 인한 교환을 원하실 경우 (주문 제작 상품이기 때문에 교환이 불가능 합니다)</p>
								<p>기타 전자상거래등에서의 소비자보호에 관한 법률이 정하는 소비자 청약철회 제한에 해당 되는 경우</p>
							</li>
						</ol>
					</div>
				</div>
			</div>
		</section>

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
