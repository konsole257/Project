<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "MY PAGE";
	$path2Tit = "내 글 관리";
	$path1Href = "/mypage/index.php";
	$path2Href = "/mypage/qna.php";
	$pageClass = "mypage qna";
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
					<a href="/mypage/reviewList.php">나의 리뷰</a>
					<a href="/mypage/qna.php" class="active">내 글 관리</a>
					<a href="/mypage/modify.php">회원정보 수정</a>
				</div>

				<!-- sub tab // -->
				<div class="tab-menu sub">
					<a href="/mypage/qna.php" class="active">1:1상담</a>
					<a href="/mypage/qna_pro.php">상품문의</a>
				</div>
				<!-- // sub tab -->

				<!-- view // -->
				<div class="view">
					<div class="question">
						<h3><em>상품</em>데이위드 신제품은 언제 나올까요? 데이위드 신제품은 언제 나올까요? 데이위드 신제품은 언제 나올까요?데이위드 신제품은 언제 나올까요? 데이위드 신제품은 언제 나올까요? 데이위드 신제품은 언제 나올까요?데이위드 신제품은 언제 나올까요?<small>2018.12.27</small></h3>
						<div class="cont">
							데이위드 신제품 기다리고있는데용.<br>
							워시라든가 페미닌 퍼퓸같은 신제품은 언제 나올까요?
						</div>

						<!-- 선택한 주문내역 노출 // -->
						<div class="info">
							주문정보 : 20190115165750S45GWA(히든랩 브랜드 뉴 마그네틸 클렌저 외4개)
						</div>
						<!-- // 선택한 주문내역 노출 -->

						<!-- 등록된 이미지가 있는 경우 노출 // -->
						<div class="pic">
							<span><img src="/pjtCom/pc/images/temp/myqna_img_1.jpg" alt=""></span>
							<span><img src="/pjtCom/pc/images/temp/myqna_img_2.jpg" alt=""></span>
							<span><img src="/pjtCom/pc/images/temp/myqna_img_3.jpg" alt=""></span>
						</div>
						<!-- // 등록된 이미지가 있는 경우 노출 -->
					</div>
				</div>
				<!-- // view -->

				<!-- btn // -->
				<div class="bbsbtn-area">
					<a href="#" class="btn stroke black">목록</a>
					<a href="#" class="btn-prev">이전</a>
					<a href="#" class="btn-next">다음</a>
					<a href="#myqna-delete" class="btn smaller stroke black" onclick="fn.popupOpen('#myqna-delete');">삭제</a> <!-- 답변이 없는 경우 노출 -->
				</div>
				<!-- // btn -->
			</div>
		</div>
	</main>
	<!-- //contents -->

	<!-- 팝업 : 1:1상담이 삭제 // -->
	<div id="myqna-delete" class="alert">
		<div class="inner">
			<div class="contents">
				1:1상담이 삭제되었습니다.
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close" onclick="fn.popupClose();">확인</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 1:1상담이 삭제 -->

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
