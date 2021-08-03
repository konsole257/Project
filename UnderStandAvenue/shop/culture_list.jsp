<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="shop";
	String path2="culture";
	String path3="";
	String path4="";
	String path1tit="WALKSHOP";
	String path2tit="CULTURE";
	String path3tit="";
	String path4tit="";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/shop.css" />
</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="shop">
		<div class="culture list">

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>

						<a href="/">HOME</a>

						<span class="depth1">WALKSHOP</span>

						<select title="">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select>

						<select title="" class="off">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
						</select>

						<div class="search_form">
							<form>
								<fieldset>
									<legend>검색</legend>

									<div class="input_wrap" data-ui="placeholder"><input type="text" id="u_search" /><label for="u_search">검색어를 입력 해주세요</label></div>
								</fieldset>
							</form>
						</div>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit"><img src="/avenueCom/images/sub/shop_tit_culture.gif" alt="CULTURE"/></h2>

					<!-- prolist // -->
					<div class="prolist big type1">
						<ul class="ls">
							<!-- 상품이 없을때 //-->
							<li class="no_data">
								<strong>준비중입니다.</strong>
							</li>
							<!-- // 상품이 없을때 -->

							<li>
								<a href="#">
									<span class="pic">
										<img src="/avenueCom/images/temp/culture350x350.jpg" alt="" />
										<span class="culture_icon shop_icon">
											<small class="genre type1">전시</small>
											<!--
											<small class="genre type2">공연</small>
											<small class="genre type3">체험</small>
											-->
										</span>
									</span>
									<strong class="culture_ti txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat ETHRICA Fur Point Coat ETHRICA Fur Point Coat ETHRICA Fur Point Coaty ETHRICA Fur Point Coat ETHRICA Fur Point Coayt ETHRICA Fur Point Coat</strong>
									<span class="txt_price">
										<del>500,000원</del>
										<strong>245,000원</strong>
									</span>
									<time class="date">2016. 03. 08 ~ 2016. 03. 15</time>
									<span class="culture_icon shop_icon">
										<span class="icon_sale">SALE</span>
										<!--<span class="icon_coupon">COUPON</span>-->
										<!--<span class="icon_soldout">SOLD OUT</span> -->
									</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="pic">
										<img src="/avenueCom/images/temp/culture350x350.jpg" alt="" />
										<span class="culture_icon shop_icon">
											<small class="genre type2">공연</small>
										</span>
									</span>
									<strong class="culture_ti txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat</strong>
									<span class="txt_price">
										<del></del><!-- 할인없을때  -->
										<strong>245,000원</strong>
									</span>

									<time class="date">2016. 03. 08 ~ 2016. 03. 15</time>

									<span class="culture_icon shop_icon">
										<span class="icon_coupon">COUPON</span>
									</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="pic">
										<img src="/avenueCom/images/temp/culture350x350.jpg" alt="" />
										<span class="culture_icon shop_icon">
											<small class="genre type3">체험</small>
										</span>
									</span>
									<strong class="culture_ti txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat</strong>
									<span class="txt_price">
										<del>500,000원</del>
										<strong>245,000원</strong>
									</span>

									<time class="date">2016. 03. 08 ~ 2016. 03. 15</time>

									<span class="culture_icon shop_icon">
										<span class="icon_soldout">SOLD OUT</span>
									</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="pic">
										<img src="/avenueCom/images/temp/culture350x350.jpg" alt="" />
										<span class="culture_icon shop_icon">
											<small class="genre type2">공연</small>
										</span>
									</span>
									<strong class="culture_ti txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat</strong>
									<span class="txt_price">
										<del></del><!-- 할인없을때  -->
										<strong>245,000원</strong>
									</span>

									<time class="date">2016. 03. 08 ~ 2016. 03. 15</time>

									<span class="culture_icon shop_icon">
										<span class="icon_coupon">COUPON</span>
									</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="pic">
										<img src="/avenueCom/images/temp/culture350x350.jpg" alt="" />
										<span class="culture_icon shop_icon">
											<small class="genre type2">공연</small>
										</span>
									</span>
									<strong class="culture_ti txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat</strong>
									<span class="txt_price">
										<del></del><!-- 할인없을때  -->
										<strong>245,000원</strong>
									</span>

									<time class="date">2016. 03. 08 ~ 2016. 03. 15</time>

									<span class="culture_icon shop_icon">
										<span class="icon_coupon">COUPON</span>
									</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="pic">
										<img src="/avenueCom/images/temp/culture350x350.jpg" alt="" />
										<span class="culture_icon shop_icon">
											<small class="genre type2">공연</small>
										</span>
									</span>
									<strong class="culture_ti txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat</strong>
									<span class="txt_price">
										<del></del><!-- 할인없을때  -->
										<strong>245,000원</strong>
									</span>

									<time class="date">2016. 03. 08 ~ 2016. 03. 15</time>

									<span class="culture_icon shop_icon">
										<span class="icon_coupon">COUPON</span>
									</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="pic">
										<img src="/avenueCom/images/temp/culture350x350.jpg" alt="" />
										<span class="culture_icon shop_icon">
											<small class="genre type2">공연</small>
										</span>
									</span>
									<strong class="culture_ti txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat</strong>
									<span class="txt_price">
										<del></del><!-- 할인없을때  -->
										<strong>245,000원</strong>
									</span>

									<time class="date">2016. 03. 08 ~ 2016. 03. 15</time>

									<span class="culture_icon shop_icon">
										<span class="icon_coupon">COUPON</span>
									</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="pic">
										<img src="/avenueCom/images/temp/culture350x350.jpg" alt="" />
										<span class="culture_icon shop_icon">
											<small class="genre type2">공연</small>
										</span>
									</span>
									<strong class="culture_ti txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat</strong>
									<span class="txt_price">
										<del></del><!-- 할인없을때  -->
										<strong>245,000원</strong>
									</span>

									<time class="date">2016. 03. 08 ~ 2016. 03. 15</time>

									<span class="culture_icon shop_icon">
										<span class="icon_coupon">COUPON</span>
									</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="pic">
										<img src="/avenueCom/images/temp/culture350x350.jpg" alt="" />
										<span class="culture_icon shop_icon">
											<small class="genre type2">공연</small>
										</span>
									</span>
									<strong class="culture_ti txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat</strong>
									<span class="txt_price">
										<del></del><!-- 할인없을때  -->
										<strong>245,000원</strong>
									</span>

									<time class="date">2016. 03. 08 ~ 2016. 03. 15</time>

									<span class="culture_icon shop_icon">
										<span class="icon_coupon">COUPON</span>
									</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="pic">
										<img src="/avenueCom/images/temp/culture350x350.jpg" alt="" />
										<span class="culture_icon shop_icon">
											<small class="genre type2">공연</small>
										</span>
									</span>
									<strong class="culture_ti txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat</strong>
									<span class="txt_price">
										<del></del><!-- 할인없을때  -->
										<strong>245,000원</strong>
									</span>

									<time class="date">2016. 03. 08 ~ 2016. 03. 15</time>

									<span class="culture_icon shop_icon">
										<span class="icon_coupon">COUPON</span>
									</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="pic">
										<img src="/avenueCom/images/temp/culture350x350.jpg" alt="" />
										<span class="culture_icon shop_icon">
											<small class="genre type2">공연</small>
										</span>
									</span>
									<strong class="culture_ti txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat</strong>
									<span class="txt_price">
										<del></del><!-- 할인없을때  -->
										<strong>245,000원</strong>
									</span>

									<time class="date">2016. 03. 08 ~ 2016. 03. 15</time>

									<span class="culture_icon shop_icon">
										<span class="icon_coupon">COUPON</span>
									</span>
								</a>
							</li>
							<li>
								<a href="#">
									<span class="pic">
										<img src="/avenueCom/images/temp/culture350x350.jpg" alt="" />
										<span class="culture_icon shop_icon">
											<small class="genre type2">공연</small>
										</span>
									</span>
									<strong class="culture_ti txt_ti dotdot">[40% SALE][장도연 착용] ETHRICA Fur Point Coat</strong>
									<span class="txt_price">
										<del></del><!-- 할인없을때  -->
										<strong>245,000원</strong>
									</span>

									<time class="date">2016. 03. 08 ~ 2016. 03. 15</time>

									<span class="culture_icon shop_icon">
										<span class="icon_coupon">COUPON</span>
									</span>
								</a>
							</li>
						</ul>
						<!-- paging // -->
						<div class="paging">
							<a href="#" class="prev">이전</a>
							<span class="num">
								<a href="#" class="on"><strong>1</strong></a>
								<a href="#">2</a>
								<a href="#">3</a>
							</span>
							<a href="#" class="next">다음</a>
						</div>
						<!-- // paging -->
					</div>
					<!-- // prolist -->

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
