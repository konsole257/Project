<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snp"; /* 샵 네임 */
	$path1Tit = "ABOUT BRAND";
	$path2Tit = "snp";
	$path1Href = "/brand/snp.php";
	$path2Href = "";
	$pageClass = "brand snp";
?>

<head>
	<!-- config// -->
	<?php include $_SERVER["DOCUMENT_ROOT"]."/inCom/config.php" ?>
	<!-- //config -->

	<link rel="stylesheet" type="text/css" href="/pjtCom/pc/css/sub.css" />
</head>

<body>

<div id="wrap" class="sub <?= $shopName ?>">
	<!-- header// -->
	<?php include $_SERVER["DOCUMENT_ROOT"]."/inCom/header.php" ?>
	<!-- //header -->

	<!-- contents// -->
	<main id="container" class="<?= $pageClass ?>">
		<div id="contents">
			<div class="con1">
				<img src="/pjtCom/pc/images/brand/snp/con1.jpg" alt="">
			</div>

			<div class="con2">
				<img src="/pjtCom/pc/images/brand/snp/con2.jpg" alt="BRANDSTORY, 피부 전문가들 경험, 과학적 실험으로 최상의 솔루션을 제공하는 ‘Total Skin Solution’ 브랜드입니다.">
			</div>

			<div class="con3">
				<img src="/pjtCom/pc/images/brand/snp/con3.jpg" alt="Shining 빛나는피부, 피부 전문가들의 경험으로 다양한 피부 고민을 해결해 숨은 광채를 찾아 빛나는 피부로">
			</div>

			<div class="con4">
				<img src="/pjtCom/pc/images/brand/snp/con4.jpg" alt="Nature 건강한 피부, 안정성이 입증된 원료만을 사용 예민하고 민감한 피부를 아기 같이 깨끗하고 순수한 피부로">
			</div>

			<div class="con5">
				<img src="/pjtCom/pc/images/brand/snp/con5.jpg" alt="Purity 깨끗한 피부, 과학적인 실험으로 개발된 신소재로 피부 본연의 힘을 길러 흔들리지 않은 건강한 피부로">
			</div>
		</div>
	</main>
	<!-- //contents -->

	<!-- footer// -->
	<?php include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
