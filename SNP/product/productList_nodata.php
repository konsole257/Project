<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "PRODUCT";
	$path2Tit = "SKIN CARE";
	$path1Href = "/product/productList.php";
	$path2Href = "/product/productList.php";
	$pageClass = "product list";
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
				<div class="tab-menu">
					<div class="inner">
						<a href="/product/productList.php">토너/에멀전</a><!-- 해당 페이지에서 class="active" -->
						<a href="/product/productList.php">크림/아이크림</a>
						<a href="/product/productList.php">모공/필링</a>
						<a href="/product/productList.php">에센스/앰플</a>
						<a href="/product/productList.php">마스크/팩</a>
						<a href="/product/productList.php" class="active">클렌징</a>
						<a href="/product/productList.php">선케어</a>
						<a href="/product/productList.php">세트</a>`
					</div>
				</div>



				<div class="product-list-wrap">
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

					<!-- 상품이 없는경우 // -->
					<div class="info-nodata">
						등록된 상품이 없습니다.
					</div>
					<!-- // 상품이 없는경우 -->
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
