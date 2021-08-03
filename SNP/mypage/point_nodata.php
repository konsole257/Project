<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "MY PAGE";
	$path2Tit = "포인트 내역";
	$path1Href = "/mypage/index.php";
	$path2Href = "/mypage/point.php";
	$pageClass = "mypage point";
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
					<a href="/mypage/point.php" class="active">포인트 내역</a>
					<a href="/mypage/reviewList.php">나의 리뷰</a>
					<a href="/mypage/qna.php">내 글 관리</a>
					<a href="/mypage/modify.php">회원정보 수정</a>
				</div>

				<div class="myinfo-box">
					<ul class="state">
						<li>
							<span>사용가능 포인트</span>
							<strong>0P</strong>
						</li>
						<!-- 2019.03.15// -->
						<li>
							<span>소멸예정 포인트</span>
							<strong>0P</strong>
						</li>
						<!-- //2019.03.15 -->
					</ul>
					
					<!-- 2019.03.29 : 수정 // -->
					<div class="info-txt">
						<p>적립금은 SNP MALL에서 상품 구매 시 현금처럼 사용이 가능하며 미사용된 적립금은 적립일로부터 1년 후 자동 소멸됩니다. (이벤트 포인트 등 일부 포인트는 소멸일이 지정되어 있을 수 있습니다.)</p>
						<p>제품 구매로 인한 적립금은 배송 완료일로부터 8일 후에 적립됩니다. </p>
						<p>회원 등급별로 실 결제 금액의 3~5%가 차등 적립되며 회원 등급에 따라 조정될 수 있습니다.</p>
						<p>운영 방침에 따라 적립금 사용 시 일부 조건이 있을 수 있습니다. </p>
						<p>포인트는 현금으로 환불되거나 변제 되지 않습니다. </p>
						<p>취소/환불 시에는 사용 적립금을 반환해 드립니다. (반환 시에는 처음 포인트 조건 그대로 복구 됩니다.)</p>
						<p>회원 탈퇴 시에는 적립금은 자동 소멸됩니다. </p>
						<p>구매하신 상품의 리뷰를 작성하시면 포인트를 드립니다. (텍스트 리뷰 +100P / 포토 리뷰 +500P)</p>
					</div>
					<!-- // 2019.03.29 : 수정 -->
				</div>

				<!-- term // -->
				<form class="term-area">
					<fieldset>
						<legend class="hide">조회기간 검색</legend>

						<button type="button" class="btn small stroke gray active">1개월</button><!-- 활성화 class="active"-->
						<button type="button" class="btn small stroke gray">3개월</button>
						<button type="button" class="btn small stroke gray">6개월</button>

						<div class="form-date">
							<div class="box"><input type="text" class="datepick" value="2018-12-03" readonly="readonly" /></div>
							<span class="txt">-</span>
							<div class="box"><input type="text" class="datepick" value="2018-12-03" readonly="readonly" /></div>
							<button type="submit" class="btn small fill black">조회</button>
						</div>
					</fieldset>
				</form>
				<!-- // term -->

				<!-- 2019.03.15// -->
				<!-- list // -->
				<table class="tbl-type1">
					<caption class="hide">포인트 내역 목록</caption>
					<colgroup>
						<col style="width:213px;">
						<col>
						<col style="width:180px;">
						<col style="width:285px;">
					</colgroup>
					<thead>
						<tr>
							<th>날짜</th>
							<th>내용</th>
							<th>구분</th>
							<th>포인트</th>
						</tr>
					</thead>
				</table>
				<!-- // list -->
				<!-- //2019.03.15 -->

				<!-- info-nodata // -->
				<div class="info-nodata">
					포인트 내역이 없습니다.
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
