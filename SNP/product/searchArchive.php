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

				<div class="tab-menu">
					<a href="#">PRODUCT (15)</a><!-- 해당페이지에서 class="active" -->
					<a href="#" class="active">MEDIA (3)</a>
					<a href="#">EVENT (12)</a>
				</div>

				<ul class="archive-list">
					<!-- 반복영역 // -->
					<li class="naverpost"><!-- 네이버포스트의경우 class="naverpost" -->
						<a href="#" class="pic"><img src="/pjtCom/pc/images/temp/archive_360x_1.jpg" alt="" class="img"></a>

						<p class="subject ellipsis">[코스모폴리탄] 11월호 히든랩 스킨 세이버 컨센트레이트 11월호 히든랩 스킨 세이버 컨센트레이트 11월호 히든랩 스킨 세이버 컨센트레이트 11월호 히든랩 스킨 세이버 컨센트레이트 11월호 히든랩 스킨 세이버 컨센트레이트</p>

						<p class="txt ellipsis">
							Enjoy Your Urban Life 즐도녀들을 위한 어반 폴루션 케어 더마코스메틱 히든랩의 ‘스킨 세이버 컨센트레이트’ 가 디렉터파이 # 착한 보습 크림 으로 선정되었습니다.
							Enjoy Your Urban Life 즐도녀들을 위한 어반 폴루션 케어 더마코스메틱 히든랩의 ‘스킨 세이버 컨센트레이트’ 가 디렉터파이 # 착한 보습 크림 으로 선정되었습니다.
							Enjoy Your Urban Life 즐도녀들을 위한 어반 폴루션 케어 더마코스메틱 히든랩의 ‘스킨 세이버 컨센트레이트’ 가 디렉터파이 # 착한 보습 크림 으로 선정되었습니다.
							Enjoy Your Urban Life 즐도녀들을 위한 어반 폴루션 케어 더마코스메틱 히든랩의 ‘스킨 세이버 컨센트레이트’ 가 디렉터파이 # 착한 보습 크림 으로 선정되었습니다.
						</p>

						<ul class="product">
							<li>
								<a href="#">
									<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
									<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
								</a>
							</li>
						</ul>
					</li>
					<!-- // 반복영역 -->

					<li>
						<a href="#" class="pic"><img src="/pjtCom/pc/images/temp/archive_360x_2.jpg" alt="" class="img"></a>

						<p class="subject ellipsis">뷰티 유투버들이 제품력 입증한 액티브 씰 마스크! #액티브씰 #속채움</p>

						<ul class="product">
							<li>
								<a href="#">
									<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
									<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
								</a>
							</li>

							<li>
								<a href="#">
									<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_2.jpg" class="img" alt=""></div>
									<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
								</a>
							</li>
						</ul>
					</li>

					<li>
						<a href="#" class="pic"><img src="/pjtCom/pc/images/temp/archive_360x_1.jpg" alt="" class="img"></a>

						<p class="subject ellipsis">뷰티 유투버들이 제품력 입증한 액티브 씰 마스크! #액티브씰 #속채움</p>
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
