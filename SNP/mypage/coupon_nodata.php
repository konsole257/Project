<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "MY PAGE";
	$path2Tit = "쿠폰 내역";
	$path1Href = "/mypage/index.php";
	$path2Href = "/mypage/coupon.php";
	$pageClass = "mypage coupon";
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
					<a href="/mypage/coupon.php" class="active">쿠폰 내역</a>
					<a href="/mypage/point.php">포인트 내역</a>
					<a href="/mypage/reviewList.php">나의 리뷰</a>
					<a href="/mypage/qna.php">내 글 관리</a>
					<a href="/mypage/modify.php">회원정보 수정</a>
				</div>

				<!-- 2019.03.12 : 수정 // -->
				<div class="myinfo-box">
					<ul class="state">
						<li>
							<a href="/mypage/coupon.php">
								<span>사용가능</span>
								<strong>0</strong>
							</a>
						</li>
					</ul>

					<div class="info-txt">
						<p>발급된 쿠폰은 해당 페이지 하단에서 확인 가능합니다.</p>
						<p>발급된 쿠폰을 다운로드하셔야 결제 시 적용 가능합니다.</p>
						<p>장바구니/상품 쿠폰은 동시에 사용할 수 없습니다.</p>
						<p>장바구니 쿠폰은 포인트 사용 전 전체 금액에서 적용됩니다.</p>
						<p>상품 쿠폰은 회원등급 할인 이후 상품별로 적용됩니다.</p>
						<p>쿠폰별로 사용 가능한 상품, 카테고리, 유효 기간이 있으니 참고하여 주시기 바랍니다.</p>
						<p>배송비가 2,500원을 초과하는 경우에 무료배송 쿠폰 사용 시 결제해야 하는 배송비에서 2,500원이 할인됩니다. (ex.도서산간지역)</p>

						<a href="/mypage/coupon/coupon_complete">사용완료 쿠폰내역</a>
					</div>

					<button type="button" class="btn big fill black btn-allcoupon">쿠폰 전체 다운로드</button>
				</div>
				<!-- // 2019.03.12 : 수정 -->

				<!-- info-nodata // -->
				<div class="info-nodata">
					사용 가능한 쿠폰이 없습니다.
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
