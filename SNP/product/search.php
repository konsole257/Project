<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "PRODUCT";
	$path2Tit = "SEARCH";
	$path1Href = "/product/productList.php";
	$path2Href = "/product/search.php";
	$pageClass = "product search";
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
				<h2 class="tit"><?= $path2Tit ?></h2>

				<!-- path// -->
				<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/path.php" ?>
				<!-- //path -->
			</div>

			<div class="body">
				<!-- 검색 // -->
				<div class="search-area">
					<form class="form-area">
						<fieldset>
							<legend class="hide">SEARCH</legend>
							<input type="text" placeholder="검색어를 입력해주세요." title="검색어 입력">
							<button type="reset" class="btn btn-cancel">취소</button>
							<!-- 2019.09.06 // -->
							<div class="autosearch-area">
								<ul class="scrollbar">
									<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
									<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
									<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
									<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
									<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
									<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
									<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
									<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
									<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
									<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
									<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
									<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
									<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
									<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
									<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
									<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
									<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
									<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
									<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
									<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
									<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
								</ul>
							</div>
							<!-- // 2019.09.06 -->
							<button type="button" class="btn btn-search">검색</button>

							<!-- 추천검색어 // -->
							<div class="recom">
								<button type="button" class="btn small stroke gray">#선물</button>
								<button type="button" class="btn small stroke gray">#설</button>
								<button type="button" class="btn small stroke gray">#겨울필수템</button>
								<button type="button" class="btn small stroke gray">#설선물</button>
								<button type="button" class="btn small stroke gray">#스트레스</button>
								<button type="button" class="btn small stroke gray">#미세먼지</button>
							</div>
							<!-- //추천검색어 -->
						</fieldset>
					</form>
				</div>
				<!-- // 검색 -->

				<!-- 2019.03.25 : 추가 // -->
				<div class="tab-menu">
					<button type="button" class="active">PRODUCT (15)</button><!-- 해당페이지에서 class="active" -->
					<button type="button">MEDIA (3)</button>
					<button type="button">EVENT (12)</button>
				</div>
				<!-- // 2019.03.25 : 추가 -->

				<ul class="product-list">
					<!-- 반복 영역 // -->
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
