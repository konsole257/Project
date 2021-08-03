<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "MY PAGE";
	$path2Tit = "주문배송 조회";
	$path1Href = "/mypage/index.php";
	$path2Href = "/mypage/oderList.php";
	$pageClass = "mypage oder";
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
					<a href="/mypage/oderList.php" class="active">주문배송 조회</a>
					<a href="/mypage/claimList_history.php">취소/교환/반품 조회</a>
					<a href="/mypage/coupon.php">쿠폰 내역</a>
					<a href="/mypage/point.php">포인트 내역</a>
					<a href="/mypage/reviewList.php">나의 리뷰</a>
					<a href="/mypage/qna.php">내 글 관리</a>
					<a href="/mypage/modify.php">회원정보 수정</a>
				</div>

				<div class="myinfo-box">
					<!-- 2019.03.14 : 수정 // -->
					<ul class="state">
						<li class="active"><!-- 활성화 class="active"-->
							<a href="#">
								<span>입금/결제</span>
								<strong>1</strong>
							</a>
						</li>
						<li>
							<a href="#">
								<span>출고완료</span>
								<strong>0</strong>
							</a>
						</li>
						<li class="active">
							<a href="#">
								<span>배송중</span>
								<strong>1</strong>
							</a>
						</li>
					</ul>
					<!-- // 2019.03.14 : 수정 -->

					<!-- 2019.03.29 : 수정 // -->
					<div class="info-txt">
						<p>주문번호를 클릭하시면 주문 상세내역을 확인하실 수 있습니다.</p>
						<p>가상 계좌/무통장 결제는 주문 후 24시간 이내 미입금 시 자동 취소됩니다.</p>
						<p>주문 취소/교환/반품은 주문내역 상세 및 취소/교환/반품 조회 화면에서 신청 가능합니다.</p>
					</div>
					<!-- // 2019.03.29 : 수정 -->
				</div>

				<!-- term // -->
				<form class="term-area">
					<fieldset>
						<legend class="hide">조회기간 검색</legend>

						<!-- 2019.03.14 : 수정 // -->
						<button type="button" class="btn small stroke gray active">1개월</button><!-- 활성화 class="active"-->
						<button type="button" class="btn small stroke gray">3개월</button>
						<button type="button" class="btn small stroke gray">6개월</button>
						<!-- // 2019.03.14 : 수정 -->

						<div class="form-date">
							<div class="box"><input type="text" class="datepick" value="2018-12-03" readonly="readonly" /></div>
							<span class="txt">-</span>
							<div class="box"><input type="text" class="datepick" value="2018-12-03" readonly="readonly" /></div>
							<button type="submit" class="btn small fill black">조회</button>
						</div>
					</fieldset>
				</form>
				<!-- // term -->

				<!-- info-nodata // -->
				<div class="info-nodata">
					주문하신 내역이 없습니다.
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
