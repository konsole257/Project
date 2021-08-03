<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "MY PAGE";
	$path2Tit = "나의 리뷰";
	$path1Href = "/mypage/index.php";
	$path2Href = "/mypage/reviewList.php";
	$pageClass = "mypage myreview";
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
					<a href="/mypage/oderList.php">주문배송 조회</a>
					<a href="/mypage/claimList_history.php">취소/교환/반품 조회</a>
					<a href="/mypage/coupon.php">쿠폰 내역</a>
					<a href="/mypage/point.php">포인트 내역</a>
					<a href="/mypage/reviewList.php" class="active">나의 리뷰</a>
					<a href="/mypage/qna.php">내 글 관리</a>
					<a href="/mypage/modify.php">회원정보 수정</a>
				</div>

				<!-- sub tab // -->
				<div class="tab-menu sub">
					<a href="/mypage/reviewList.php" class="active">리뷰 작성 가능한 상품</a>
					<a href="/mypage/myreview.php">작성한 리뷰 내역</a>
				</div>
				<!-- // sub tab -->

				<!-- info-nodata // -->
				<div class="info-nodata">
					<h3>소중한 SNP 사용 리뷰를 남겨주세요.<small>구매하신 상품의 리뷰를 작성해주시면 적립금을 드립니다. (단, 구매한 상품별 1회만 적립됩니다.)</small><small>텍스트 리뷰 100P / 포토 리뷰 500P</small></h3>
					리뷰 작성 가능한 상품이 없습니다.
					<button type="button" class="btn fill black">쇼핑하러 가기</button>
				</div>
				<!-- // info-nodata -->
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
