<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
  String path1="shop";
	String path2="";
	String path3="";
	String path4="";
	String path1tit="WALKSHOP";
	String path2tit="";
	String path3tit="";
	String path4tit="";
	%>
	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/shop.css" />
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />
	<script src="/avenueCom/js/main.js" type="text/javascript"></script>

</head>
<body class="sub">

	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="shop main">
		<div id="path">
			<div id="path_inner">
				<strong class="hide">현재 위치</strong>

				<a href="/">HOME</a>

				<span class="depth1">WALKSHOP</span>

				<select title="" class="off">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
				</select>

				<select title="" class="off">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
				</select>
			</div>
		</div>

		<!-- 메인 비주얼 // -->
		<article class="main_visual_wrap">
			<h2 class="hide">Under Stand Avenue 메인사진</h2>

			<div id="main_visual">
				<figure class="img">
					<a href="/event/event_ing_detail?04"><img src="/avenueCom/images/main/main_visual1.jpg" alt="그랜드 오픈" /></a>
				</figure>
				<figure class="img">
					<a href="/art/program_now_detail?01"><img src="/avenueCom/images/main/main_visual2.jpg" alt="조세현 사진전" /></a>
				</figure>
			</div>
		</article>
		<!-- // 메인 비주얼 -->

		<!-- 상품 소식 // -->
		<article class="product_area">
			<h2 class="hide">상품 소식</h2>

			<p>봄맞이! 몸과 마음을 녹이는 아이템 </p>

			<div class="product_list">
				<div class="big">
					<a href="/shop/product_detail?s_page=1&s_page_size=12&s_sort=new&s_depth1_code=&s_depth2_code=&s_sdate=&s_edate=&s_use_yn=&s_p_count=&s_display_pc_yn=Y&s_display_mobile_yn=&s_icon_yn=&s_sprice=&s_eprice=&s_product_gbn=SHOP&s_key=&s_keyword=PS1604170500416740&s_brand_code=&p_code=PS1604170500416740">
						<img src="http://img.understandavenue.com/product/s_13aa3a2f-1ef6-4b0e-80b1-61cdd36ca6c4_670.png" alt="" />
						<div class="subject"><span>WAX CANVAS TOTE BAG_MIDNIGHTBLUE</span></div>
					</a>
				</div>
				<div class="small">
					<div>
						<a href="/shop/product_detail?s_page=1&s_page_size=12&s_sort=new&s_depth1_code=&s_depth2_code=&s_sdate=&s_edate=&s_use_yn=&s_p_count=&s_display_pc_yn=Y&s_display_mobile_yn=&s_icon_yn=&s_sprice=&s_eprice=&s_product_gbn=SHOP&s_key=&s_keyword=PS1604170458482431&s_brand_code=&p_code=PS1604170458482431">
							<img src="http://img.understandavenue.com/product/s_a98a4a6c-f53f-4afa-9bd2-a4b374a0f59d_1.jpg" alt="" />
							<div class="subject"><span>Iphone 6/6S Case</span></div>
						</a>
					</div>
					<div>
						<a href="/shop/product_detail?s_page=1&s_page_size=12&s_sort=new&s_depth1_code=&s_depth2_code=&s_sdate=&s_edate=&s_use_yn=&s_p_count=&s_display_pc_yn=Y&s_display_mobile_yn=&s_icon_yn=&s_sprice=&s_eprice=&s_product_gbn=SHOP&s_key=&s_keyword=PS1604170457328848&s_brand_code=&p_code=PS1604170457328848">
							<img src="http://img.understandavenue.com/product/s_63a9c9ed-db38-4f78-afe3-34d17df40b25_1.jpg" alt="" />
							<div class="subject"><span>면과면 캔들</span></div>
						</a>
					</div>
					<div>
						<a href="/shop/product_detail?s_page=1&s_page_size=12&s_sort=new&s_depth1_code=&s_depth2_code=&s_sdate=&s_edate=&s_use_yn=&s_p_count=&s_display_pc_yn=Y&s_display_mobile_yn=&s_icon_yn=&s_sprice=&s_eprice=&s_product_gbn=SHOP&s_key=&s_keyword=PS1604170455584068&s_brand_code=&p_code=PS1604170455584068">
							<img src="http://img.understandavenue.com/product/s_954ae184-bac1-46b3-b91e-cecca2c4af66_11.fabricpouch_theforestsing_01_670.jpg" alt="" />
							<div class="subject"><span>Art Fabric Pouch_The Forest, Sing</span></div>
						</a>
					</div>
					<div>
						<a href="/shop/product_detail?s_page=1&s_page_size=12&s_sort=new&s_depth1_code=&s_depth2_code=&s_sdate=&s_edate=&s_use_yn=&s_p_count=&s_display_pc_yn=Y&s_display_mobile_yn=&s_icon_yn=&s_sprice=&s_eprice=&s_product_gbn=SHOP&s_key=&s_keyword=PS1604170454161981&s_brand_code=&p_code=PS1604170454161981">
							<img src="http://img.understandavenue.com/product/s_7a66ed99-583b-45d2-9a5a-aae14a94ba5e_1.jpg" alt="" />
							<div class="subject"><span>LC Bag</span></div>
						</a>
					</div>
				</div>
				<div class="big">
					<a href="/shop/product_detail?s_page=1&s_page_size=12&s_sort=new&s_depth1_code=&s_depth2_code=&s_sdate=&s_edate=&s_use_yn=&s_p_count=&s_display_pc_yn=Y&s_display_mobile_yn=&s_icon_yn=&s_sprice=&s_eprice=&s_product_gbn=SHOP&s_key=&s_keyword=PS1604170452348945&s_brand_code=&p_code=PS1604170452348945">
						<img src="http://img.understandavenue.com/product/s_0a4dc9a7-61ab-48eb-80c7-6cafd8531b37_1.jpg" alt="" />
						<div class="subject"><span>토트백_쿠키앤크림</span></div>
					</a>
				</div>
			</div>
		</article>
		<!-- // 상품 소식 -->

		<!-- 공연, 전시, 체험 소식 // -->
		<article class="culture_area">
			<h2 class="hide">공연, 전시, 체험 소식</h2>

			<p>2016. 04 <a href="/shop/culture_list">more</a></p>

			<ul>
				<li>
					<a href="/event/event_ing_detail.jsp?04">
						<img src="/avenueCom/images/upload/culture/culture_thumb_01.jpg" alt="" class="off" />
						<img src="/avenueCom/images/upload/culture/culture_thumb_01_ov.jpg" alt="" class="ov" />
					</a>
				</li>
				<li>
					<a href="http://blog.naver.com/understandavenue/220684223135" target="_blank">
						<img src="/avenueCom/images/upload/culture/culture_thumb_02.jpg" alt="" class="off" />
						<img src="/avenueCom/images/upload/culture/culture_thumb_02_ov.jpg" alt="" class="ov" />
					</a>
				</li>
				<li>
					<a href="/event/event_ing_detail.jsp?04">
						<img src="/avenueCom/images/upload/culture/culture_thumb_03.jpg" alt="" class="off" />
						<img src="/avenueCom/images/upload/culture/culture_thumb_03_ov.jpg" alt="" class="ov" />
					</a>
				</li>
			</ul>
		</article>
		<!-- // 공연, 전시, 체험 소식 -->

		<!-- 주목해야 할 할인 상품 //
		<article class="sale_area story">
			<h2 class="hide">할인 상품</h2>

			<p>주목해야 할 할인 상품</p>

			<div class="prolist big type2">
				<ul class="ls">
					<li>
						<a href="#">
							<span class="pic">
								<img src="/avenueCom/images/temp/story255x255.jpg" alt="" />
								<span class="shop_icon">
									<span class="icon_new">NEW</span>
									<span class="icon_best">BEST</span>
									<span class="icon_md">MD's pick</span>
								</span>
							</span>

							<strong class="txt_ti dotdot">IPHONE 6/6S CaseIPHONE 6/6S CaseIPHONE 6/6S CaseIPHONE 6/6S CaseIPHONE 6/6S Case</strong>

							<span class="txt_price">
								<del>500,000원</del>
								<strong>245,000원</strong>
							</span>

							<span class="shop_icon">
								<span class="icon_sale">SALE</span>
								<span class="icon_coupon">COUPON</span>
								 품절일때 //
								<span class="icon_soldout">SOLD OUT</span>
								 // 품절일때
							</span>
						</a>
					</li>

					<li>
						<a href="#">
							<span class="pic">
								<img src="/avenueCom/images/temp/story255x255.jpg" alt="" />
								<span class="shop_icon">
									<span class="icon_best">BEST</span>
								</span>
							</span>

							<strong class="txt_ti dotdot">IPHONE 6/6S CaseIPHONE 6/6S Case</strong>

							<span class="txt_price">
								<del>500,000원</del>
								<strong>245,000원</strong>
							</span>

							<span class="shop_icon">
								<span class="icon_coupon">COUPON</span>
							</span>
						</a>
					</li>

					<li>
						<a href="#">
							<span class="pic">
								<img src="/avenueCom/images/temp/story255x255.jpg" alt="" />
								<span class="shop_icon">
									<span class="icon_md">MD's pick</span>
								</span>
							</span>

							<strong class="txt_ti dotdot">IPHONE 6/6S CaseIPHONE 6/6S Case</strong>

							<span class="txt_price">
								<del>500,000원</del>
								<strong>245,000원</strong>
							</span>

							<span class="shop_icon">
								<span class="icon_soldout">SOLD OUT</span>
							</span>
						</a>
					</li>

					<li>
						<a href="#">
							<span class="pic">
								<img src="/avenueCom/images/temp/story255x255.jpg" alt="" />
								<span class="shop_icon">
									<span class="icon_new">NEW</span>
									<span class="icon_best">BEST</span>
								</span>
							</span>

							<strong class="txt_ti dotdot">IPHONE 6/6S CaseIPHONE 6/6S Case</strong>

							<span class="txt_price">
								<del>500,000원</del>
								<strong>245,000원</strong>
							</span>

							<span class="shop_icon">
								<span class="icon_sale">SALE</span>
							</span>
						</a>
					</li>

					<li>
						<a href="#">
							<span class="pic">
								<img src="/avenueCom/images/temp/story255x255.jpg" alt="" />
								<span class="shop_icon">
									<span class="icon_new">NEW</span>
									<span class="icon_best">BEST</span>
									<span class="icon_md">MD's pick</span>
								</span>
							</span>

							<strong class="txt_ti dotdot">IPHONE 6/6S CaseIPHONE 6/6S CaseIPHONE 6/6S CaseIPHONE 6/6S CaseIPHONE 6/6S Case</strong>

							<span class="txt_price">
								<del>500,000원</del>
								<strong>245,000원</strong>
							</span>

							<span class="shop_icon">
								<span class="icon_sale">SALE</span>
							</span>
						</a>
					</li>

					<li>
						<a href="#">
							<span class="pic">
								<img src="/avenueCom/images/temp/story255x255.jpg" alt="" />
								<span class="shop_icon">
									<span class="icon_best">BEST</span>
								</span>
							</span>

							<strong class="txt_ti dotdot">IPHONE 6/6S CaseIPHONE 6/6S Case</strong>

							<span class="txt_price">
								<del>500,000원</del>
								<strong>245,000원</strong>
							</span>

							<span class="shop_icon">
								<span class="icon_coupon">COUPON</span>
							</span>
						</a>
					</li>

					<li>
						<a href="#">
							<span class="pic">
								<img src="/avenueCom/images/temp/story255x255.jpg" alt="" />
								<span class="shop_icon">
									<span class="icon_md">MD's pick</span>
								</span>
							</span>

							<strong class="txt_ti dotdot">IPHONE 6/6S CaseIPHONE 6/6S Case</strong>

							<span class="txt_price">
								<del>500,000원</del>
								<strong>245,000원</strong>
							</span>

							<span class="shop_icon">
								<span class="icon_soldout">SOLD OUT</span>
							</span>
						</a>
					</li>

					<li>
						<a href="#">
							<span class="pic">
								<img src="/avenueCom/images/temp/story255x255.jpg" alt="" />
								<span class="shop_icon">
									<span class="icon_new">NEW</span>
									<span class="icon_best">BEST</span>
								</span>
							</span>

							<strong class="txt_ti dotdot">IPHONE 6/6S CaseIPHONE 6/6S Case</strong>

							<span class="txt_price">
								<del>500,000원</del>
								<strong>245,000원</strong>
							</span>

							<span class="shop_icon">
								<span class="icon_sale">SALE</span>
							</span>
						</a>
					</li>
				</ul>
			</div>
		</article>-->
		<!-- // 주목해야 할 할인 상품 -->

		<!-- BRAND PICK // -->
		<article class="brand_area brand intro">
			<h2>BRAND PICK</h2>

			<div class="prolist big type1">
				<ul class="ls">
					<li>
						<a href="/shop/brand_list?s_brand_code=B20160413184804">
							<span class="pic">
								<img src="http://img.understandavenue.com/brand/logo/b6d3d0c0-44da-42f1-8e75-7b78ffbba9ce_ETEAQ_340x180.jpg" alt="">
							</span>

							<p class="txt dotdot">
								제대로 활용되지 못하고 버려지는 인도네시아의 최상급 목재 티크를 활용하는 브랜드. 주로 모바일 액세서리를 제작하며, 제품 구매 시 현지에서 산림재생활동의 일환으로 ‘나만의 나무’가 심어진다.
							</p>
						</a>
					</li>

					<li>
						<a href="/shop/brand_list?s_brand_code=B20160413184820">
							<span class="pic">
								<img src="http://img.understandavenue.com/brand/logo/c9ce44a6-6211-44c2-bedc-d2f5d1dcdba6_GONGGI_340x180.jpg" alt="">
							</span>

							<p class="txt dotdot">
								핸드메이드 리빙 제품을 만드는 공정무역 브랜드. 다양한 문화권의 소생산자/단체와 협업을 통해 고품질의 수공예 리빙 제품을 제작하고 있으며 생산자들의 기술 보존과 경제적 자립을 지원하고 있다.
							</p>
						</a>
					</li>

					<li>
						<a href="/shop/brand_list?s_brand_code=B20160413184832">
							<span class="pic">
								<img src="http://img.understandavenue.com/brand/logo/06582199-3958-40ce-83ea-3752bae8b449_Mallang-Luna_340x180.jpg" alt="">
							</span>

							<p class="txt dotdot">
								스토리가 담긴 동화적 표현의 일러스트 작가 브랜드. 유니크한 라이프 스타일을 추구할 수 있도록 일러스트 작가 ‘루나’의 작품들을 활용한 다양한 핸드메이드 제품을 제작하고 있습니다.
							</p>
						</a>
					</li>
				</ul>
			</div>
		</article>
		<!-- // BRAND PICK -->

	</main>
	<!-- //wrap -->

	<!-- footer -->
	<%@ include file="/avenueCom/_include/_footer.jsp" %>
	<!-- //footer -->
</body>
</html>
