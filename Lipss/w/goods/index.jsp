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
	<main id="wrap" class="goods">
		<div id="contents" class="">

			<!-- 타이틀 영역 : 삭제 : 2018.04.25 // -->
			<%-- <div class="tit_area">
				<div class="inner">
					<small>04/14 12:00 ~ 05 / 06 18:00</small>
					<h2>Now, Here, We - in Hawaii We</h2>

					<a href="#" class="btn_prev">이전</a>
					<a href="#" class="btn_next">다음</a>
				</div>
			</div> --%>
			<!-- // 타이틀 영역 -->

			<!-- 타이틀 영역 : 추가 : 2018.04.30 // -->
			<div class="tit_area">
				<h2 class="tit">GOODS</h2>
			</div>
			<!-- // 타이틀 영역 -->

			<!-- 분류 : 수정 : 2018.04.25 // -->
			<div class="sort">
				<form>
					<table class="tbl_type1">
						<colgroup>
							<col style="width:162px;">
							<col style=""><!-- 수정 : 2018.05.25 -->
						</colgroup>

						<tbody>
							<tr class="artist">
								<th>ARTIST</th>
								<td>
									<input type="radio" name="artist" id="artist_ikon" onchange="fn.goodsSortAdd(this);"><label for="artist_ikon">iKON</label>
									<input type="radio" name="artist" id="artist_jungyonghwa" onchange="fn.goodsSortAdd(this);"><label for="artist_jungyonghwa">JUNG YONG HWA</label>
								</td>
							</tr>

							<tr class="theme">
								<th>GALLERY</th>
								<td>
									<input type="radio" name="theme" id="theme_everyd4y" onchange="fn.goodsSortAdd(this);"><label for="theme_everyd4y">EVERYD4Y</label>
									<input type="radio" name="theme" id="theme_specialnight" onchange="fn.goodsSortAdd(this);"><label for="theme_specialnight">SPECIAL NIGHT</label><input type="radio" name="theme" id="theme_everyd4y" onchange="fn.goodsSortAdd(this);"><label for="theme_everyd4y">EVERYD4Y</label>
									<input type="radio" name="theme" id="theme_specialnight" onchange="fn.goodsSortAdd(this);"><label for="theme_specialnight">SPECIAL NIGHT</label><input type="radio" name="theme" id="theme_everyd4y" onchange="fn.goodsSortAdd(this);"><label for="theme_everyd4y">EVERYD4Y</label>
									<input type="radio" name="theme" id="theme_specialnight" onchange="fn.goodsSortAdd(this);"><label for="theme_specialnight">SPECIAL NIGHT</label><input type="radio" name="theme" id="theme_everyd4y" onchange="fn.goodsSortAdd(this);"><label for="theme_everyd4y">EVERYD4Y</label>
									<input type="radio" name="theme" id="theme_specialnight" onchange="fn.goodsSortAdd(this);"><label for="theme_specialnight">SPECIAL NIGHT</label><input type="radio" name="theme" id="theme_everyd4y" onchange="fn.goodsSortAdd(this);"><label for="theme_everyd4y">EVERYD4Y</label>
									<input type="radio" name="theme" id="theme_specialnight" onchange="fn.goodsSortAdd(this);"><label for="theme_specialnight">SPECIAL NIGHT</label>
								</td>
							</tr>

							<tr class="member">
								<th>THEME</th>
								<td>
									<input type="checkbox" name="member" id="member_all" onchange="fn.goodsSortAdd(this);"><label for="member_all">ALL</label>
									<input type="checkbox" name="member" id="member1" onchange="fn.goodsSortAdd(this);"><label for="member1">강승윤</label>
									<input type="checkbox" name="member" id="member2" onchange="fn.goodsSortAdd(this);"><label for="member2">이승훈</label>
									<input type="checkbox" name="member" id="groupphoto" onchange="fn.goodsSortAdd(this);"><label for="groupphoto">Group Photo</label><input type="checkbox" name="member" id="member_all" onchange="fn.goodsSortAdd(this);"><label for="member_all">ALL</label>
									<input type="checkbox" name="member" id="member1" onchange="fn.goodsSortAdd(this);"><label for="member1">강승윤</label>
									<input type="checkbox" name="member" id="member2" onchange="fn.goodsSortAdd(this);"><label for="member2">이승훈</label>
									<input type="checkbox" name="member" id="groupphoto" onchange="fn.goodsSortAdd(this);"><label for="groupphoto">Group Photo</label><input type="checkbox" name="member" id="member_all" onchange="fn.goodsSortAdd(this);"><label for="member_all">ALL</label>
									<input type="checkbox" name="member" id="member1" onchange="fn.goodsSortAdd(this);"><label for="member1">강승윤</label>
									<input type="checkbox" name="member" id="member2" onchange="fn.goodsSortAdd(this);"><label for="member2">이승훈</label>
									<input type="checkbox" name="member" id="groupphoto" onchange="fn.goodsSortAdd(this);"><label for="groupphoto">Group Photo</label>
								</td>
							</tr>
						</tbody>
					</table>

<!-- 수정 : 2018.10.30 // -->
					<div class="row">
						<div class="choose_area">
							<button type="reset" class="btn_reset" onclick="fn.goodsSortReset();">전체해제</button>

							<div class="choose_list">
								<%-- <li><button type="button">iKON</button></li> --%>
							</div>

							<button type="submit" class="btn_search">검색</button>
						</div>

						<!-- 현재 페이지 모두 담기 // -->
						<div class="goods_cart_all">
							<button  type="button" class="btn_cartall">현재 페이지 모두 담기<small>Add All to Cart</small></button>
							<a href="#" class="btn-popinfo">!</a>
							<div class="popinfo">
								<p>
									현재 목록에 보여지고 있는 상품을 장바구니로 모두 담기가 가능한 기능입니다.<br>최하위 옵션을 기준으로 품절인 상품은 제외하고 장바구니에 담기게 됩니다.
								</p>
							</div>
						</div>
						<!-- // 현재 페이지 모두 담기 -->
					</div>
<!-- // 수정 : 2018.10.30 -->

					<img src="/w/pjtCom/images/temp/img_goods_banner.jpg" alt="" class="img">
				</form>
			</div>
			<!-- // 분류 -->

			<!-- 굿즈 리스트 // -->
			<div class="goods_list_area">

				<div class="top_area">
					<span class="total">총 <span>20</span>개</span>

					<div class="align">
						<a href="#" class="new now">최신순</a><!-- 해당페이지 class="on" -->
						<a href="#" class="sale">판매순</a>
					</div>
				</div>

				<!-- 목록 // -->
				<ul class="goods_list">
					<!-- 상품이 없을경우 : 추가 : 2018.05.25 // -->
					<li class="nodata">판매중인 상품이 없습니다.</li>
					<!-- // 상품이 없을경우 -->

					<!-- 반복영역 // -->
					<li>
						<!-- 상태아이콘 : 추가 : 2018.04.25 // -->
						<div class="icon_area">
							<span class="icon_only">ONLY</span>
							<span class="icon_new">NEW</span>
							<span class="icon_soldout">SOLD OUT</span>
							<span class="icon_end">종료예정</span>
							<span class="icon_sale">판매예정</span>
						</div>
						<!-- // 상태아이콘 -->

						<a href="#"><img src="http://dev-file.lipss.kr/upload/imgServer/goods/96/TTTTTTTTTTTTT0006_B.jpg" alt="" class="img"></a><!-- 수정 : 2018.04.25 -->
						<div class="menu_area">
							<div class="inner">
								<a href="#cart_option1" class="btn_cart" onclick="fn.goodsOptionOpen('#cart_option1');">장바구니</a>
								<a href="#" class="btn_view" onclick="fn.goodsViewShow();">상세보기</a>
								<a href="#wisht_option1" class="btn_wish on" onclick="fn.goodsOptionOpen('#wish_option1');">찜하기</a><!-- 위시리스트에 있는경우 class="on" : 수정 : 2018.05.04 -->
							</div>
						</div>

						<!-- 옵션 변경 : 수정 : 2018.05.04 : 2018.04.19  // -->
						<div id="cart_option1" class="popup cart_option">
							<div class="inner">
								<header class="header">
									<h2 class="tit">옵션선택 <span>(사이즈 - 소재)</span></h2>

									<button type="button" class="btn_close" onclick="fn.goodsOptionClose();">닫기</button>
								</header>

								<div class="contents">
									<form>
										<fieldset class="option_area">
											<legend class="hide">옵션선택</legend>

											<input type="checkbox" id="list_post_matt1" class="chk_type2"><label for="list_post_matt1">Post - 매트 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="list_stand_matt1" class="chk_type2"><label for="list_stand_matt1">Stand - 매트 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="list_stand_flex1" class="chk_type2"><label for="list_stand_flex1">Stand - 플렉스 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="list_frame_matt1" class="chk_type2"><label for="list_frame_matt1">Frame - 매트 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="list_frame_flex1" class="chk_type2"><label for="list_frame_flex1">Frame - 플렉스 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="list_frame_canvas1" class="chk_type2"><label for="list_frame_canvas1">Frame - 캔버스 <span>&#8361; 5,000</span></label>
										</fieldset>

										<div class="btn_area">
											<button type="button" class="btn_cart" onclick="fn.popupClose(function(){fn.popupOpen('#login')});"><span>장바구니 담기<span>Add to cart</span></span></button>
										</div>
									</form>
								</div>
							</div>
						</div>
						<!-- // 옵션 변경 -->

						<!-- 위시리스트 : 수정 : 2018.05.04  // -->
						<div id="wish_option1" class="popup wish_option">
							<div class="inner">
								<header class="header">
									<h2 class="tit">옵션선택 <span>(사이즈 - 소재)</span></h2>

									<button type="button" class="btn_close" onclick="fn.goodsOptionClose();">닫기</button>
								</header>

								<div class="contents">
									<form>
										<fieldset class="option_area">
											<legend class="hide">옵션선택</legend>

											<input type="checkbox" id="wish_post_matt1" class="chk_type2"><label for="wish_post_matt1">Post - 매트 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="wish_stand_matt1" class="chk_type2"><label for="wish_stand_matt1">Stand - 매트 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="wish_stand_flex1" class="chk_type2"><label for="wish_stand_flex1">Stand - 플렉스 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="wish_frame_matt1" class="chk_type2"><label for="wish_frame_matt1">Frame - 매트 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="wish_frame_flex1" class="chk_type2"><label for="wish_frame_flex1">Frame - 플렉스 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="wish_frame_canvas1" class="chk_type2"><label for="wish_frame_canvas1">Frame - 캔버스 <span>&#8361; 5,000</span></label>
										</fieldset>

										<div class="btn_area">
											<button type="button" class="btn_cart" onclick="fn.popupClose(function(){fn.popupOpen('#login')});"><span>위시리스트<span>Wishlist</span></span></button>
										</div>
									</form>
								</div>
							</div>
						</div>
						<!-- // 위시리스트 -->
					</li>
					<!-- // 반복영역 -->

					<li>
						<div class="icon_area">
							<span class="icon_only">ONLY</span>
							<span class="icon_new">NEW</span>
							<span class="icon_soldout">SOLD OUT</span>
							<span class="icon_end">종료예정</span>
							<span class="icon_sale">판매예정</span>
						</div>

						<a href="#"><img src="http://dev-file.lipss.kr/upload/imgServer/goods/97/TTTTTTTTTTTTT0007_B.jpg" alt="" class="img"></a>
						<div class="menu_area">
							<div class="inner">
								<a href="#cart_option2" class="btn_cart" onclick="fn.goodsOptionOpen('#cart_option2');">장바구니</a>
								<a href="#" class="btn_view" onclick="fn.goodsViewShow();">상세보기</a>
								<a href="#wisht_option1" class="btn_wish" onclick="fn.goodsOptionOpen('#wish_option2');">찜하기</a>
							</div>
						</div>

						<div id="cart_option2" class="popup cart_option">
							<div class="inner">
								<header class="header">
									<h2 class="tit">옵션선택 <span>(사이즈 - 소재)</span></h2>

									<button type="button" class="btn_close" onclick="fn.goodsOptionClose();">닫기</button>
								</header>

								<div class="contents">
									<form>
										<fieldset class="option_area">
											<legend class="hide">옵션선택</legend>

											<input type="checkbox" id="list_post_matt2" class="chk_type2"><label for="list_post_matt2">Post - 매트 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="list_stand_matt2" class="chk_type2"><label for="list_stand_matt2">Stand - 매트 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="list_stand_flex2" class="chk_type2"><label for="list_stand_flex2">Stand - 플렉스 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="list_frame_matt2" class="chk_type2"><label for="list_frame_matt2">Frame - 매트 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="list_frame_flex2" class="chk_type2"><label for="list_frame_flex2">Frame - 플렉스 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="list_frame_canvas2" class="chk_type2"><label for="list_frame_canvas2">Frame - 캔버스 <span>&#8361; 5,000</span></label>
										</fieldset>

										<div class="btn_area">
											<button type="button" class="btn_cart" onclick="fn.popupClose(function(){fn.popupOpen('#login')});"><span>장바구니 담기<span>Add to cart</span></span></button>
										</div>
									</form>
								</div>
							</div>
						</div>

						<div id="wish_option2" class="popup wish_option">
							<div class="inner">
								<header class="header">
									<h2 class="tit">옵션선택 <span>(사이즈 - 소재)</span></h2>

									<button type="button" class="btn_close" onclick="fn.goodsOptionClose();">닫기</button>
								</header>

								<div class="contents">
									<form>
										<fieldset class="option_area">
											<legend class="hide">옵션선택</legend>

											<input type="checkbox" id="wish_post_matt2" class="chk_type2"><label for="wish_post_matt2">Post - 매트 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="wish_stand_matt2" class="chk_type2"><label for="wish_stand_matt2">Stand - 매트 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="wish_stand_flex2" class="chk_type2"><label for="wish_stand_flex2">Stand - 플렉스 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="wish_frame_matt2" class="chk_type2"><label for="wish_frame_matt2">Frame - 매트 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="wish_frame_flex2" class="chk_type2"><label for="wish_frame_flex2">Frame - 플렉스 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="wish_frame_canvas2" class="chk_type2"><label for="wish_frame_canvas2">Frame - 캔버스 <span>&#8361; 5,000</span></label>
										</fieldset>

										<div class="btn_area">
											<button type="button" class="btn_cart" onclick="fn.popupClose(function(){fn.popupOpen('#login')});"><span>위시리스트<span>Wishlist</span></span></button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</li>
					<li>
						<a href="#"><img src="http://dev-file.lipss.kr/upload/imgServer/goods/97/TTTTTTTTTTTTT0007_B.jpg" alt="" class="img"></a>
						<div class="menu_area">
							<div class="inner">
								<button type="button" class="btn_cart" onclick="fn.goodsOptionOpen(this);">장바구니</button>
								<a href="#" class="btn_view" onclick="fn.goodsViewShow();">상세보기</a>
								<a href="#wisht_option1" class="btn_wish" onclick="fn.goodsOptionOpen(this);">찜하기</a>
							</div>
						</div>
					</li>
					<li>
						<a href="#"><img src="http://dev-file.lipss.kr/upload/imgServer/goods/97/TTTTTTTTTTTTT0007_B.jpg" alt="" class="img"></a>
						<div class="menu_area">
							<div class="inner">
								<button type="button" class="btn_cart" onclick="fn.goodsOptionOpen(this);">장바구니</button>
								<a href="#" class="btn_view" onclick="fn.goodsViewShow();">상세보기</a>
								<a href="#wisht_option1" class="btn_wish" onclick="fn.goodsOptionOpen(this);">찜하기</a>
							</div>
						</div>
					</li>
					<li>
						<a href="#"><img src="http://dev-file.lipss.kr/upload/imgServer/goods/97/TTTTTTTTTTTTT0007_B.jpg" alt="" class="img"></a>
						<div class="menu_area">
							<div class="inner">
								<button type="button" class="btn_cart" onclick="fn.goodsOptionOpen(this);">장바구니</button>
								<a href="#" class="btn_view" onclick="fn.goodsViewShow();">상세보기</a>
								<a href="#wisht_option1" class="btn_wish" onclick="fn.goodsOptionOpen(this);">찜하기</a>
							</div>
						</div>
					</li>
					<li>
						<a href="#"><img src="http://dev-file.lipss.kr/upload/imgServer/goods/97/TTTTTTTTTTTTT0007_B.jpg" alt="" class="img"></a>
						<div class="menu_area">
							<div class="inner">
								<button type="button" class="btn_cart" onclick="fn.goodsOptionOpen('#cart_option3');">장바구니</button>
								<a href="#" class="btn_view" onclick="fn.goodsViewShow();">상세보기</a>
								<a href="#wish_option3" class="btn_wish" onclick="fn.goodsOptionOpen('#wish_option3');">찜하기</a>
							</div>
						</div>

						<div id="cart_option3" class="popup cart_option">
							<div class="inner">
								<header class="header">
									<h2 class="tit">옵션선택 <span>(사이즈 - 소재)</span></h2>

									<button type="button" class="btn_close" onclick="fn.goodsOptionClose();">닫기</button>
								</header>

								<div class="contents">
									<form>
										<fieldset class="option_area">
											<legend class="hide">옵션선택</legend>

											<input type="checkbox" id="list_post_matt3" class="chk_type2"><label for="list_post_matt3">Post - 매트</label>
											<input type="checkbox" id="list_stand_matt3" class="chk_type2"><label for="list_stand_matt3">Stand - 매트</label>
											<input type="checkbox" id="list_stand_flex3" class="chk_type2"><label for="list_stand_flex3">Stand - 플렉스</label>
											<input type="checkbox" id="list_frame_matt3" class="chk_type2"><label for="list_frame_matt3">Frame - 매트</label>
											<input type="checkbox" id="list_frame_flex3" class="chk_type2"><label for="list_frame_flex3">Frame - 플렉스</label>
											<input type="checkbox" id="list_frame_canvas3" class="chk_type2"><label for="list_frame_canvas3">Frame - 캔버스</label>
										</fieldset>

										<div class="btn_area">
											<button type="button" class="btn_cart" onclick="fn.popupClose(function(){fn.popupOpen('#login')});"><span>장바구니 담기<span>Add to cart</span></span></button>
										</div>
									</form>
								</div>
							</div>
						</div>

						<div id="wish_option3" class="popup wish_option">
							<div class="inner">
								<header class="header">
									<h2 class="tit">옵션선택 <span>(사이즈 - 소재)</span></h2>

									<button type="button" class="btn_close" onclick="fn.goodsOptionClose();">닫기</button>
								</header>

								<div class="contents">
									<form>
										<fieldset class="option_area">
											<legend class="hide">옵션선택</legend>

											<input type="checkbox" id="wish_post_matt3" class="chk_type2"><label for="wish_post_matt3">Post - 매트 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="wish_stand_matt3" class="chk_type2"><label for="wish_stand_matt3">Stand - 매트 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="wish_stand_flex3" class="chk_type2"><label for="wish_stand_flex3">Stand - 플렉스 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="wish_frame_matt3" class="chk_type2"><label for="wish_frame_matt3">Frame - 매트 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="wish_frame_flex3" class="chk_type2"><label for="wish_frame_flex3">Frame - 플렉스 <span>&#8361; 5,000</span></label>
											<input type="checkbox" id="wish_frame_canvas3" class="chk_type2"><label for="wish_frame_canvas3">Frame - 캔버스 <span>&#8361; 5,000</span></label>
										</fieldset>

										<div class="btn_area">
											<button type="button" class="btn_cart" onclick="fn.popupClose(function(){fn.popupOpen('#login')});"><span>위시리스트<span>Wishlist</span></span></button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</li>
				</ul>
				<!-- // 목록 -->

				<div class="paging_type2">
					<a href="#" class="btn_prev">이전</a>
					<span class="num">
						<a href="#">1</a>
						<span>/</span>
						<a href="#">3</a>
					</span>
					<a href="#" class="btn_next">다음</a>
				</div>

			</div>
			<!-- // 굿즈 리스트 -->

			<!-- 굿즈 상세 // -->
			<article class="goods_view_area">
				<div class="inner">
					<button class="btn_close" onclick="fn.goodsViewHide();">닫기</button>

					<div class="content">
						<header class="header">
							<h2 class="subject">
								<b>[젝스키스] Now, Here, We - in Hawaii We, 은지원 no.2</b>

								<!-- 상태아이콘 : 수정 : 2018.04.25 // -->
								<div class="icon_area">
									<span class="icon_only">ONLY</span>
									<span class="icon_new">NEW</span>
									<%-- <span class="icon_soldout">SOLD OUT</span>
									<span class="icon_end">종료예정</span>
									<span class="icon_sale">판매예정</span> --%>
								</div>
								<!-- // 상태아이콘 -->
							</h2>

							<!-- 판매중, 종료예정, 판매종료일경우 // -->
							<dl class="period">
								<dt>판매기간</dt>
								<dd>4/15 12:00 ~ 4/22 23:59</dd>
							</dl>
							<!-- // 판매중일경우 -->

							<!-- 판매예정일경우 // -->
							<dl class="period before">
								<dt>판매예정</dt>
								<dd>4/ 15 12:00</dd>
							</dl>
							<!-- // 판매예정일경우 -->

							<button type="button" class="btn_like" onclick="$(this).toggleClass('active');">1,001</button><!-- 내가 love 를 클릭했을때 active 추가 --><!-- 추가 : 2018.05.10 -->
							<button type="button" class="btn_share">공유</button>
							<!-- 추가 : 2018.05.03 // -->
							<div class="share_area">
								<div class="inner">
									<button type="button" class="btn_close">접기</button>
									<button type="button" class="btn_facebook">페이스북</button>
									<button type="button" class="btn_kakao">카카오톡</button>
									<button type="button" class="btn_twitter">트위터</button><!-- 2018.11.27 : 추가 -->
									<button type="button" class="btn_url">URL</button>
								</div>
							</div>
							<!-- // -->
						</header>

						<div class="img_area">
							<!-- 판매예정일경우 : 삭제 : 2018.04.30 // -->
							<%-- <div class="schedule before">
								판매예정
								<b>D-9</b>
							</div> --%>
							<!-- // 판매예정일경우 -->

							<!-- 판매예정일경우 : 삭제 : 2018.04.30 // -->
							<%-- <div class="schedule end">
								종료예정
								<b>D-9</b>
							</div> --%>
							<!-- // 판매예정일경우 -->

							<figure id="picture" class="tab_contents show">
								<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
							</figure>
							<%-- <figure id="texture" class="tab_contents">
								<img src="/w/pjtCom/images/sub/img_goods_texture.jpg" alt="" class="img">
							</figure>
							<figure id="size" class="tab_contents">
								<img src="/w/pjtCom/images/sub/img_goods_size.jpg" alt="" class="img">
							</figure>

							<div class="tab_menu type2">
								<a href="#texture" class="btn_matt">면종</a>
								<a href="#size" class="btn_size">사이즈</a>
							</div> --%>
						</div>

						<div class="info_area">
							<form>
								<fieldset class="option_area">
									<legend class="tit">Option (Size – Type)</legend><!-- 수정 : 2018.06.05 -->

									<input type="checkbox" id="view_post_matt" onchange="fn.optionAdd(this);" disabled><label for="view_post_matt">Post - 매트</label> <!-- 판매예정, 판매 종료일경우 <input type=checkbox" disabled> -->
									<input type="checkbox" id="view_stand_matt" onchange="fn.optionAdd(this);"><label for="view_stand_matt">Stand - 매트</label>
									<input type="checkbox" id="view_stand_flex" onchange="fn.optionAdd(this);"><label for="view_stand_flex">Stand - 플렉스</label>
									<input type="checkbox" id="view_frame_matt" onchange="fn.optionAdd(this);"><label for="view_frame_matt">Frame - 매트</label>
									<input type="checkbox" id="view_frame_flex" onchange="fn.optionAdd(this);"><label for="view_frame_flex">Frame - 플렉스</label>
									<input type="checkbox" id="view_frame_canvas" onchange="fn.optionAdd(this);"><label for="view_frame_canvas">Frame - 캔버스</label>
								</fieldset>

								<fieldset class="option_ea_area">
									<legend class="hide">수량 선택</legend>

									<ul class="option_ea_list">
										<%-- <li>
											<span class="option_name">Post - 매트</span>
											<div class="ea">
												<input type="number" title="수량 입력" value="1" readonly>
												<button tyle="button" class="btn_down">수량 낮추기</button>
												<button tyle="button" class="btn_up">수량 올리기</button>
											</div>
											<span class="price">5,000원</span>
											<button type="button" class="btn_del">삭제</button>
										</li> --%>
									</ul>
								</fieldset>

								<dl class="total_price">
									<dt>총 상품금액</dt>
									<dd><span>5,000,000</span>원</dd>
								</dl>

								<!-- 수정 : 20188.04.30 // -->
								<div class="btn_area">
									<button type="button" class="btn_cart">장바구니<span>Cart</span></button>
									<button type="button" class="btn_buy">구매하기<span>Buy</span></button>
									<button type="button" class="btn_wish">찜<span>Wish List</span></button><!-- 찜하기시 class="on"추가 : 수정 : 2018.06.04 -->
								</div>

								<!-- 판매예정일경우 // -->
								<div class="btn_area">
									<button type="button" class="btn_cart">장바구니<span>Cart</span></button>
									<button type="button" class="btn_buy">구매하기<span>Buy</span></button>
									<button type="button" class="btn_wish">찜<span>Wish List</span></button>
								</div>
								<!-- // 판매예정일경우 -->

								<!-- 판매종료일경우 // -->
								<div class="btn_area">
									<button type="button" class="btn_soldout" disabled>품절<span>SOLD OUT</span></button>
								</div>
								<!-- // 판매종료일경우 -->
								<!-- // 수정 : 20188.04.30 -->

								<dl class="shipping">
									<dt>배송료</dt>
									<dd>&#8361;2,500 (&#8361;30,000 이상 주문 시 무료배송)</dd>
								</dl>
							</form>
						</div>
					</div>

					<section class="goods_info">
						<h3 id="sizeTypeTitle">Size-Type</h3>
						<div>
							<div id="sizeTypeImg"><img src="/w/pjtCom/images/sub/img_goods_sizetype.jpg" alt=""></div>
						</div>
					</section>

					<section class="goods_info">
						<h3>제품기본정보</h3>
						<div id="info1">
							<div>
								<table>
									<colgroup>
										<col style="width:200px;">
										<col style="width:726px;">
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

						<div id="info2" style="display:none;">
							<div style="display: none;">
								<table>
									<colgroup>
										<col style="width:200px;">
										<col style="width:726px;">
									</colgroup>

									<tbody>
										<tr>
											<th>품명 및 모델명</th>
											<td>KWON HYUN BIN - 1st SEASON BOOK in SUMMER (권현빈 화보집) / YGS1805</td>
										</tr>

										<tr>
											<th>법적 필수 인증 및 허가 사항 고지</th>
											<td>해당사항없음</td>
										</tr>

										<tr>
											<th>제조사</th>
											<td>(주)사운드웨이브 / (주)YG엔터테인먼트</td>
										</tr>

										<tr>
											<th>제조국</th>
											<td>대한민국</td>
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
							<div style="display: none;">
								<div>
									<p>교환은 물품 발송 후 10일 이내에 접수(전화 혹은 1:1문의접수)후 당사에 입고된 상품에 한하여 처리됩니다.</p>

									<ol>
										<li>
											<span>1. 취소</span>
											<p>상품을 주문하신 후 [마이페이지]의 주문 진행 정보를 확인해 주십시요.</p>
											<p>현재 상태가 주문접수. 결제완료 시점일 경우 온라인상에서 즉시 취소가 가능합니다.</p>
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
				</section>
				</div>
			</article>
			<!-- // 굿즈 상세 -->
		</div>
	</main>
	<!-- // wrap -->

	<!-- 추가 : 2018.05.03 // -->
	<div id="login" class="popup_type2">
		<div class="inner">
			<!-- pop-top -->
			<div class="pop-top">
				<a href="#" class="btn_close" onclick="fn.popupClose();">닫기</a>
			</div>

			<!-- pop-mid -->
			<div class="pop-mid">
				<b>로그인이 필요합니다</b>

				<p>
				로그인 상태에서 1:1 문의 등록 시 마이페이지에서<br>
				접수 내용과 답변상태 확인이 가능합니다.
				</p>

				<span>(비회원의 경우 하단의 비회원 1:1 문의를 이용해 주세요.)</span>
			</div>

			<!-- pop-btn -->
			<div class="pop-btn-wrap">
				<a href="#" class="btn_ok"><span>확인<span>Ok</span></span></a>
				<a href="#" class="btn_cancel" onclick="fn.popupClose();"><span>취소<span>Cancle</span></span></a>
			</div>
		</div>
	</div>
	<!-- // -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>

</html>
