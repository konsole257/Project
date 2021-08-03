<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "msolic"; /* 샵 네임 */
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
			<?php include $_SERVER["DOCUMENT_ROOT"]."/main/msolic/visual.php" ?>
			<!-- // visual -->

			<!-- like it // -->
			<?php include $_SERVER["DOCUMENT_ROOT"]."/main/msolic/likeit.php" ?>
			<!-- // like it -->

			<!-- special // -->
			<?php include $_SERVER["DOCUMENT_ROOT"]."/main/msolic/special.php" ?>
			<!-- // special -->

			<!-- review // -->
			<?php include $_SERVER["DOCUMENT_ROOT"]."/main/msolic/review.php" ?>
			<!-- // review -->

			<!-- movie // -->
			<?php include $_SERVER["DOCUMENT_ROOT"]."/main/msolic/movie.php" ?>
			<!-- // movie -->

			<!-- post / -->
			<?php include $_SERVER["DOCUMENT_ROOT"]."/main/msolic/post.php" ?>
			<!-- // post -->

		</div>
	</main>
	<!-- //contents -->

	<!-- footer// -->
	<?php include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
