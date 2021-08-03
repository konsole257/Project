<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "BEST";
	$path2Tit = "";
	$path1Href = "/product/productListBest.php";
	$path2Href = "";
	$pageClass = "product list best";
?>

<head>
	<!-- config// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/config.php" ?>
	<!-- //config -->

	<link rel="stylesheet" type="text/css" href="/pjtCom/pc/css/sub.css" />
</head>

<body>

<div id="wrap" class="sub <?= $shopName ?>">
	<!-- header// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/header.php" ?>
	<!-- //header -->

	<!-- contents// -->
	<main id="container" class="<?= $pageClass ?>">
		<div id="contents">
			<div class="top-area">
				<h2 class="tit"><? if ($path2Tit == "") { ?> <?= $path1Tit ?> <? } else { ?> <?= $path2Tit ?> <? } ?></h2>

				<!-- path// -->
				<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/path.php" ?>
				<!-- //path -->
			</div>

			<div class="body">
				<div class="product-list-wrap"><!-- 2019.04.25 : div 추가 -->
					<!-- 2019.04.25 : 태그 추가 // -->
					<div class="sort-area">
						<button type="button" onclick="fn.toggleClass('.sort-area')">인기상품순</button>

						<div class="sort">
							<a href="/product/productList.php" class="active">인기상품순</a><!-- 현재 페이지 class="active" -->
							<a href="/product/productList.php">신상품순</a>
							<a href="/product/productList.php">낮은가격순</a>
							<a href="/product/productList.php">높은가격순</a>
							<a href="/product/productList.php">평점수</a>
							<a href="/product/productList.php">리뷰많은순</a>
						</div>
					</div>
					<!-- // 2019.04.25 : 태그 추가 -->

					<ul class="product-list">
						<!-- 반복 영역 // -->
						<li>
							<ul class="flag">
								<li><span style="color:#a9a9a9; border:1px solid #cfcfcf; background:#e2e2e2;">일시품절</span></li><!-- 관리자에서 style등록 -->
								<li><span style="color:#ea303d; border:1px solid #ec0e41; background:#fff;">품절임박</span></li><!-- 관리자에서 style등록 -->
							</ul>

							<a href="#"><span class="thumb"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></span></a>

							<div class="info">
								<!-- 해시태그 등록시 노출 // -->
								<div class="hashtag">
									<a href="#">#원스텝클렌징</a>
									<a href="#">#원스텝클렌징</a>
								</div>
								<!-- // 해시태그 등록시 노출 -->

								<a href="#">
									<p class="name ellipsis">[디렉터파이 선정] 히든랩 스킨 세이버 컨센트레이트 컨센트레이트 컨센트레이트 컨센트레이트</p>
									<p class="txt ellipsis">미세먼지 같은 유해환경과 자외선, 블루라이트를 차단해주는 어반폴루션 크림 어반폴루션 크림 어반폴루션 크림</p>
								</a>
							</div>

							<div class="price">
								<del>48,000원</del>
								<span>35,000원</span>
							</div>

							<a href="#cart" class="btn-cart" onclick="fn.popupOpen('#cart');">장바구니 담기/빼기</a>
						</li>
						<!-- // 반복 영역 -->

						<li>
							<ul class="flag">
								<li><span style="color:#000; border:1px solid #000; background:#fff;">Bestseller</span></li><!-- 관리자에서 style등록 -->
							</ul>

							<a href="#"><span class="thumb"><img src="/pjtCom/pc/images/temp/product_226x226_2.jpg" class="img" alt=""></span></a>

							<div class="info">
								<a href="#">
									<p class="name ellipsis">[디렉터파이 선정] 히든랩 스킨 세이버 컨센트레이트</p>
									<p class="txt ellipsis">미세먼지 같은 유해환경과 자외선, 블루라이트를 차단해주는 어반폴루션 크림</p>
								</a>
							</div>

							<div class="price">
								<del>48,000원</del>
								<span>35,000원</span>
							</div>

							<a href="#cart" class="btn-cart" onclick="fn.popupOpen('#cart');">장바구니 담기/빼기</a>
						</li>

						<li>
							<ul class="flag">
								<li><span style="color:#fff; background:#b172f4;">디렉터파이 선정<br>착한 보습크림</span></li><!-- 관리자에서 style등록 -->
							</ul>

							<a href="#"><span class="thumb"><img src="/pjtCom/pc/images/temp/product_226x226_2.jpg" class="img" alt=""></span></a>

							<div class="info">
								<a href="#">
									<p class="name ellipsis">[디렉터파이 선정] 히든랩 스킨 세이버</p>
									<p class="txt ellipsis">미세먼지 같은 유해환경과 자외선 크림</p>
								</a>
							</div>

							<div class="price">
								<del>48,000원</del>
								<span>35,000원</span>
							</div>

							<a href="#cart" class="btn-cart" onclick="fn.popupOpen('#cart');">장바구니 담기/빼기</a>
						</li>

						<li>
							<ul class="flag">
								<li><span style="color:#000; border:1px solid #000; background:#fff;">Bestseller</span></li><!-- 관리자에서 style등록 -->
							</ul>

							<a href="#"><span class="thumb"><img src="/pjtCom/pc/images/temp/product_226x226_2.jpg" class="img" alt=""></span></a>

							<div class="info">
								<a href="#">
									<p class="name ellipsis">[디렉터파이 선정] 히든랩 스킨 세이버</p>
									<p class="txt ellipsis">미세먼지 같은 유해환경과 자외선 크림</p>
								</a>
							</div>

							<div class="price">
								<span>35,000원</span>
							</div>

							<a href="#cart" class="btn-cart" onclick="fn.popupOpen('#cart');">장바구니 담기/빼기</a>
						</li>

						<li>
							<ul class="flag">
								<li><span style="color:#000; border:1px solid #000; background:#fff;">Bestseller</span></li><!-- 관리자에서 style등록 -->
								<li><span style="color:#eb0f29; border:1px solid #f5b4bb; background:#fff;">Hot Item</span></li><!-- 관리자에서 style등록 -->
								<li><span style="color:#fff; background:#b172f4;">디렉터파이 선정<br>착한 보습크림</span></li><!-- 관리자에서 style등록 -->
							</ul>

							<a href="#"><span class="thumb"><img src="/pjtCom/pc/images/temp/product_226x226_2.jpg" class="img" alt=""></span></a>

							<div class="info">
								<!-- 해시태그 등록시 노출 // -->
								<div class="hashtag">
									<a href="#">#원스텝클렌징</a>
									<a href="#">#원스텝클렌징</a>
								</div>
								<!-- // 해시태그 등록시 노출 -->

								<a href="#">
									<p class="name ellipsis">[디렉터파이 선정] 히든랩 스킨 세이버 컨센트레이트</p>
									<p class="txt ellipsis">미세먼지 같은 유해환경과 자외선, 블루라이트를 차단해주는 어반폴루션 크림</p>
								</a>
							</div>

							<div class="price">
								<del>48,000원</del>
								<span>35,000원</span>
							</div>

							<a href="#cart" class="btn-cart" onclick="fn.popupOpen('#cart');">장바구니 담기/빼기</a>
						</li>
					</ul>
				</div>

				<div class="pagination">
					<a href="#" class="btn-first">처음</a>
					<a href="#" class="btn-prev">이전</a>
					<span class="num">
						<a href="#" class="active">1</a>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
					</span>
					<a href="#" class="btn-next">다음</a>
					<a href="#" class="btn-last">끝</a>
				</div>
			</div>
		</div>
	</main>
	<!-- //contents -->

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
