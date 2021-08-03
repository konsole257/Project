<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "EVENT";
	$path2Tit = "진행 이벤트";
	$path1Href = "/event/eventList.php";
	$path2Href = "/event/eventList.php";
	$pageClass = "event ing";
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
				<h2 class="tit"><?= $path1Tit ?></h2>

				<!-- path// -->
				<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/path.php" ?>
				<!-- //path -->
			</div>

			<div class="body">
				<!-- view // -->
				<div class="view">
					<div class="viewti">
						<h3>새롭게 선보이는 SNP Mall 회원 혜택 새롭게 선보이는 SNP Mall 회원 혜택 새롭게 선보이는 SNP Mall 회원 혜택 새롭게 선보이는 SNP Mall 회원 혜택 새롭게 선보이는 SNP Mall 회원 혜택 새롭게 선보이는 SNP Mall 회원 혜택 새롭게 선보이는 SNP Mall 회원 혜택</h3>
						<span class="txt-dday">D-Day</span>
						<span class="txt-date">2019.01.02 - 2019.01.31</span>
					</div>

					<!-- <div class="sns">
						<a href="#" class="btn btn-facebook">facebook</a>
						<a href="#" class="btn btn-kakaostory">카카오스토리</a>
					</div> -->

					<div class="cont">
						<img src="/pjtCom/pc/images/temp/event_1200.jpg" alt="">
					</div>
				</div>
				<!-- // view -->
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
