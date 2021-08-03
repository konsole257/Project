<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "daywith"; /* 샵 네임 */
	$path1Tit = "";
	$path2Tit = "";
	$path1Href = "";
	$path2Href = "";
	$pageClass = "";
?>

<head>
	<!-- config// -->
	<?php include $_SERVER["DOCUMENT_ROOT"]."/inCom/config.php" ?>
	<!-- //config -->

	<script src="/pjtCom/pc/js/main/<?= $shopName ?>.js"></script>
	<link rel="stylesheet" type="text/css" href="/pjtCom/pc/css/main/<?= $shopName ?>.css" />
</head>

<body>

<div id="wrap" class="main <?= $shopName ?>">
	<!-- header// -->
	<?php include $_SERVER["DOCUMENT_ROOT"]."/inCom/header.php" ?>
	<!-- //header -->

	<!-- contents// -->
	<main id="container">
		<div id="contents">
			<!-- visual // -->
			<?php include $_SERVER["DOCUMENT_ROOT"]."/main/daywith/visual.php" ?>
			<!-- // visual -->

			<!-- like it // -->
			<?php include $_SERVER["DOCUMENT_ROOT"]."/main/daywith/likeit.php" ?>
			<!-- // like it -->

			<!-- movie // -->
			<?php include $_SERVER["DOCUMENT_ROOT"]."/main/daywith/movie.php" ?>
			<!-- // movie -->

			<!-- review // -->
			<?php include $_SERVER["DOCUMENT_ROOT"]."/main/daywith/review.php" ?>
			<!-- // review -->
		</div>
	</main>
	<!-- //contents -->

	<!-- footer// -->
	<?php include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
