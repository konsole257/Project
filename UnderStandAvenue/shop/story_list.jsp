<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="shop";
	String path2="story";
	String path3="";
	String path4="";
	String path1tit="WALKSHOP";
	String path2tit="STORY";
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
		<div class="story list">

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
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit"><img src="/avenueCom/images/sub/shop_tit_story.gif" alt="CLOTHING"/></h2>

					<div class="visual"><img src="/avenueCom/images/temp/story1080x800.jpg" alt=""/></div>

					<!-- prolist // -->
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
										<!--<span class="icon_coupon">COUPON</span>-->
										<!-- 품절일때 //
										<span class="icon_soldout">SOLD OUT</span>
										 // 품절일때 -->
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
					<!-- // prolist -->

					<!-- prolist // -->
					<div class="prolist big type1 slide_list">
						<div class="slide_inner">
							<ul class="ls">
								<li>
									<a href="#">
										<span class="pic">
											<img src="/avenueCom/images/temp/story350x210.jpg" alt="" />
										</span>
										<strong class="txt_ti dotdot">함께 쓸수록 숲도, 사람도 살리는 소비 ETEAQ(에티크)함께 쓸수록 숲도, 사람도 살리는 소비 ETEAQ</strong>
										<time class="date">2016. 1. 24 ~ 2016. 2. 29</time>
									</a>
								</li>

								<li>
									<a href="#">
										<span class="pic">
											<img src="/avenueCom/images/temp/story350x210.jpg" alt="" />
										</span>
										<strong class="txt_ti dotdot">사람도 살리는 소비 ETEAQ(에티크)</strong>
										<time class="date">2016. 1. 24 ~ 2016. 2. 29</time>
									</a>
								</li>

								<li>
									<a href="#">
										<span class="pic">
											<img src="/avenueCom/images/temp/story350x210.jpg" alt="" />
										</span>
										<strong class="txt_ti dotdot">사람도 살리는 소비 ETEAQ(에티크)</strong>
										<time class="date">2016. 1. 24 ~ 2016. 2. 29</time>
									</a>
								</li>

								<li>
									<a href="#">
										<span class="pic">
											<img src="/avenueCom/images/temp/story350x210.jpg" alt="" />
										</span>
										<strong class="txt_ti dotdot">사람도 살리는 소비 ETEAQ(에티크)</strong>
										<time class="date">2016. 1. 24 ~ 2016. 2. 29</time>
									</a>
								</li>

								<li>
									<a href="#">
										<span class="pic">
											<img src="/avenueCom/images/temp/story350x210.jpg" alt="" />
										</span>
										<strong class="txt_ti dotdot">사람도 살리는 소비 ETEAQ(에티크)</strong>
										<time class="date">2016. 1. 24 ~ 2016. 2. 29</time>
									</a>
								</li>
							</ul>
						</div>

						<div class="btn_area">
							<a href="#" class="btn_prev">이전</a>
							<a href="#" class="btn_next">다음</a>
						</div>

						<script>
						var storySlide = $('.slide_list');
						var storyItemLength = storySlide.find('.ls li').length;
						var storyItemwidth = storySlide.find('.ls li').width()+15;

						storySlide.find('.ls').css({'width':storyItemwidth*storyItemLength});
						storySlide.find('.btn_area a').click(function(e){
							e.preventDefault();
							$(this).hasClass('btn_next') ?
							!storySlide.find('.ls').is(':animated') && -storyItemwidth*(storyItemLength-3) < parseInt(storySlide.find('.ls').css('margin-left')) ? storySlide.find('.ls').animate({'margin-left':'-='+storyItemwidth}, 600) : '' :
							!storySlide.find('.ls').is(':animated') && -15 > parseInt(storySlide.find('.ls').css('margin-left')) ? storySlide.find('.ls').animate({'margin-left':'+='+storyItemwidth}, 600) : '' ;
						});
						</script>

					</div>
					<!-- // prolist -->

					<div class="btn_area">
						<a href="#" class="midium type4 btn_bbs_list">목록</a>
					</div>

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
