<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "CS CENTER";
	$path2Tit = "공지사항";
	$path1Href = "/cscenter/noticeList.php";
	$path2Href = "/cscenter/noticeList.php";
	$pageClass = "cscenter notice";
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
					<a href="/cscenter/noticeList.php" class="active">공지사항</a>
					<a href="/cscenter/faq.php">FAQ</a>
					<a href="/cscenter/store.php">국내 공식 판매처</a>
					<a href="/cscenter/location.php">찾아오시는 길</a>
				</div>

				<!-- search // -->
				<form class="search-area">
					<fieldset>
						<legend class="hide">검색</legend>
						<input type="text" placeholder="검색어를 입력하세요." title="검색어 입력">
						<button type="button" class="btn btn-search" onclick="fn.popupOpen('#popSearchAlert');">검색</button>
					</fieldset>
				</form>
				<!-- // search -->

				<!-- info-nodata // -->
				<div class="info-nodata">
					데이터가 없습니다.
				</div>
				<!-- // info-nodata -->

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

	<!-- 팝업 : 검색어와 일치하는 내용이 없음 // -->
	<div id="popSearchAlert" class="alert">
		<div class="inner">
			<div class="contents">
				검색어와 일치하는 내용이 없습니다.
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close" onclick="fn.popupClose();">확인</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 검색어와 일치하는 내용이 없음 -->

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
