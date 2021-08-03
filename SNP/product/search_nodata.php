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
							<input type="text" placeholder="검색어를 입력해주세요." title="검색어 입력" value="설선물">
							<button type="reset" class="btn btn-cancel">취소</button>
							<button type="button" class="btn btn-search">검색</button>

							<!-- 추천검색어 // -->
							<div class="recom">
								<button type="button" class="btn small stroke gray">#선물</button>
								<button type="button" class="btn small stroke gray">#설</button>
								<button type="button" class="btn small stroke gray">#겨울필수템</button>
								<button type="button" class="btn small stroke gray active">#설선물</button>
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
					<a href="#">PRODUCT (15)</a><!-- 해당페이지에서 class="active" -->
					<a href="#" class="active">MEDIA (3)</a>
					<a href="#">EVENT (12)</a>
				</div>
				<!-- // 2019.03.25 : 추가 -->

				<!-- info-nodata // -->
				<div class="info-nodata">
					입력하신 검색어에 대한<br>
					검색결과가 없습니다.
				</div>
				<!-- // info-nodata -->
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
