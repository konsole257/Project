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
					<a href="#">MEDIA (3)</a>
					<a href="#" class="active">EVENT (12)</a>
				</div>

				<ul class="evlist">
					<li>
						<a href="#">
							<span class="thumb"><img src="/pjtCom/pc/images/temp/event_380x300.jpg" alt=""></span>
							<strong>새롭게 선보이는 SNP Mall 회원 혜택 새롭게 선보이는 SNP Mall 회원 혜택</strong>
							<span class="txt-dday">D-30</span>
							<span class="txt-date">2019.01.01 - 01.31</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="thumb"><img src="/pjtCom/pc/images/temp/event_380x300.jpg" alt=""></span>
							<strong>댓글 응모이벤트</strong>
							<span class="txt-dday">D-30</span>
							<span class="txt-date">2019.01.01 - 01.31</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="thumb"><img src="/pjtCom/pc/images/temp/event_380x300.jpg" alt=""></span>
							<strong>VIP 회원 전용 KIT 신청</strong>
							<span class="txt-dday">D-30</span>
							<span class="txt-date">2019.01.01 - 01.31</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="thumb"><img src="/pjtCom/pc/images/temp/event_380x300.jpg" alt=""></span>
							<strong>사은품/샘플 신청 ( 사은품 선택/선착순 제한)</strong>
							<span class="txt-dday">D-30</span>
							<span class="txt-date">2019.01.01 - 01.31</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="thumb"><img src="/pjtCom/pc/images/temp/event_380x300.jpg" alt=""></span>
							<strong>타입특가/투데이특가/위클리특가</strong>
							<span class="txt-dday">D-30</span>
							<span class="txt-date">2019.01.01 - 01.31</span>
						</a>
					</li>
					<li>
						<a href="#">
							<span class="thumb"><img src="/pjtCom/pc/images/temp/event_380x300.jpg" alt=""></span>
							<strong>일반 기획전/임직원 기획전</strong>
							<span class="txt-dday">D-30</span>
							<span class="txt-date">2019.01.01 - 01.31</span>
						</a>
					</li>
				</ul>
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
