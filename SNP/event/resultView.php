<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "EVENT";
	$path2Tit = "당첨자 발표";
	$path1Href = "/event/eventList.php";
	$path2Href = "/event/resultList.php";
	$pageClass = "event result";
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
					<a href="/event/ingList.php">진행 이벤트</a>
					<a href="/event/endList.php">종료 이벤트</a>
					<a href="/event/resultList.php" class="active">당첨자 발표</a>
					<a href="/event/benefit.php">회원혜택</a>
				</div>

				<!-- view // -->
				<div class="view">
					<h3>SNP 리뷰 적립금 제도가 2019년 2월 부터 달라집니다!SNP 리뷰 적립금 제도가 2019년 2월 부터 달라집니다!SNP 리뷰 적립금 제도가 2019년 2월 부터 달라집니다!SNP 리뷰 적립금 제도가 2019년 2월 부터 달라집니다! <small>2018.12.27</small></h3>
					<div class="cont">
						<img src="/pjtCom/pc/images/temp/cscenter_960x500.jpg" alt=""><br>
						<br>
						안녕하세요.<br>
						SNP 입니다.<br>
						<br>
						SNP 공식몰이 사이트 점검을 하여 사이트 이용이 중단됩니다.<br>
						<br>
						점검 일시 : 8월 27일(월) 오후 5시~ 8시<br>
						<br>
						<br>
						사이트 이용에 불편을 끼쳐드려 죄송합니다.<br>
						더 나은 SNP가 되도록 노력하겠습니다.<br>
						감사합니다.<br>
					</div>
				</div>
				<!-- // view -->

				<!-- btn // -->
				<div class="bbsbtn-area">
					<a href="#" class="btn stroke black">목록</a>
					<a href="#" class="btn-prev">이전</a>
					<a href="#" class="btn-next">다음</a>
				</div>
				<!-- // btn -->
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
