<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "msolic"; /* 샵 네임 */
	$path1Tit = "ABOUT BRAND";
	$path2Tit = "M'SOLIC";
	$path1Href = "/brand/msolic.php";
	$path2Href = "";
	$pageClass = "brand msolic";
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
				<img src="/pjtCom/pc/images/brand/msolic/con1.jpg" alt="" class="img">
			</div>

			<div class="con2">
				<img src="/pjtCom/pc/images/brand/msolic/con2.png" alt="BRAND IDENTITY - 집에서도 바버샵 관리를 받은것처럼 엠솔릭만의 감각적인 아이디어를 녹인 제품으로 현대 남자들의 고민을 매력으로 바꾸어 주는 브랜드가 되겠습니다." class="img">
			</div>

			<div class="con3">
				<img src="/pjtCom/pc/images/brand/msolic/con3.jpg" alt="BRAND CATEGORY - SKIN CARE, MAKE UP CARE, BODY CARE, HAIR CARE" class="img">
			</div>

			<div class="con4">
				<img src="/pjtCom/pc/images/brand/msolic/con4.jpg" alt="BRAND CONCEPT - 앰솔릭은 트랜드에 민감한 남성을 위한 전문적인 시크릿 그루밍 브랜드입니다. 머리에서 발끝가지 눈을 뗄 수 없는 매력적인 남자를 위한 '엠솔릭'만의 감각적인 아이디어를 녹여 아이템을 선보입니다." class="img">
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
