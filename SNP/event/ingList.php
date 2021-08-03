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
				<div class="tab-menu">
					<a href="/event/ingList.php" class="active">진행 이벤트</a>
					<a href="/event/endList.php">종료 이벤트</a>
					<a href="/event/resultList.php">당첨자 발표</a>
					<a href="/event/benefit.php">회원혜택</a>
				</div>

				<!-- list // -->
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
				<!-- // list -->
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
