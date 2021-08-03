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

				<!-- list // -->
				<ul class="list">
					<li>
						<a href="#">
<!-- 2019.03.15// -->
							<strong>오픈 기념 포인트 이벤트 당첨자 발표 오픈 기념 포인트 이벤트 당첨자 발표 오픈 기념 포인트 이벤트 당첨자 발표 오픈 기념 포인트 이벤트 당첨자 발표 오픈 기념 포인트 이벤트 당첨자 발표</strong>
<!-- //2019.03.15 -->
							<span>2018.12.27</span>
						</a>
					</li>
					<li>
						<a href="#">
							<strong>10TH ANNIVERSARY 응모 이벤트 당첨자 발표</strong>
							<span>2018.12.27</span>
						</a>
					</li>
					<li>
						<a href="#">
							<strong>샘플 KIT 신청 당첨자 발표 </strong>
							<span>2018.12.27</span>
						</a>
					</li>
					<li>
						<a href="#">
							<strong>선착순 100명 사은품 신청 당첨자 발표</strong>
							<span>2018.12.27</span>
						</a>
					</li>
					<li>
						<a href="#">
							<strong>VIP 스페셜 KIT 당첨자 발표</strong>
							<span>2018.12.27</span>
						</a>
					</li>
					<li>
						<a href="#">
							<strong>오픈 기념 포인트 이벤트 당첨자 발표</strong>
							<span>2018.12.27</span>
						</a>
					</li>
					<li>
						<a href="#">
							<strong>10TH ANNIVERSARY 응모 이벤트 당첨자 발표</strong>
							<span>2018.12.27</span>
						</a>
					</li>
					<li>
						<a href="#">
							<strong>샘플 KIT 신청 당첨자 발표 </strong>
							<span>2018.12.27</span>
						</a>
					</li>
					<li>
						<a href="#">
							<strong>선착순 100명 사은품 신청 당첨자 발표</strong>
							<span>2018.12.27</span>
						</a>
					</li>
					<li>
						<a href="#">
							<strong>VIP 스페셜 KIT 당첨자 발표</strong>
							<span>2018.12.27</span>
						</a>
					</li>
				</ul>
				<!-- // list -->

				<!-- pagination // -->
				<div class="pagination">
					<a href="#" class="btn-first">처음</a>
					<a href="#" class="btn-prev">이전</a>
					<span class="num">
						<a href="#" class="active">1</a>
						<a href="#">2</a>
						<a href="#">3</a>
						<a href="#">4</a>
						<a href="#">5</a>
					</span>
					<a href="#" class="btn-next">다음</a>
					<a href="#" class="btn-last">끝</a>
				</div>
				<!-- // pagination -->
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
