<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "MY PAGE";
	$path2Tit = "";
	$path1Href = "/mypage/index.php";
	$path2Href = "";
	$pageClass = "mypage index";
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
					<a href="/mypage/qna.php">내 글 관리</a>
					<a href="/mypage/modify.php">회원정보 수정</a>
				</div>

				<!-- myinfo // -->
				<div class="myinfo">
					<!--
						회원등급
						뉴비 : newbie
						프렌즈 : friends
						셀럽 : celebrity
						VIP : vip
					-->
					<div class="profile celebrity">
						<p><strong>박보검</strong>님은 <strong>셀렙</strong>회원입니다.</p>

						<!-- 2019.08.19 : 수정 // -->
						<div class="btn-area">
							<button type="button" class="btn smaller fill black btn-staff" onclick="fn.popupOpen('#popstaff');">임직원몰 매출 누적금액</button>
							<a href="#" class="btn smaller fill black">등급혜택</a>
						</div>
						<!-- // 2019.08.19 : 수정 -->

					</div>
					<ul class="info-number">
						<li>
							<a href="#">
								<span>사용 가능 쿠폰</span>
								<span><strong>3</strong>개</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>사용 가능 포인트</span>
								<span><strong>16,000</strong>P</span>
							</a>
						</li>
					</ul>
				</div>
				<!-- //myinfo -->

				<div class="order-area">
					<h3>주문배송 진행 현황 <small>(최근 1개월 기준)</small></h3>

					<div class="lately-state">
						<ol>
							<li> <!-- 1건 이상 일 경우 class="active" 추가 -->
								<span class="tit">입금/결제</span>
								<span class="num">0</span>
							</li>
							<li>
								<span class="tit">출고완료</span>
								<span class="num">0</span>
							</li>
							<li>
								<span class="tit">배송중</span>
								<span class="num">0</span>
							</li>
							<li>
								<span class="tit">배송완료</span>
								<span class="num">0</span>
							</li>
							<li>
								<span class="tit">취소/교환/반품</span>
								<span class="num">0</span>
							</li>
						</ol>
					</div>

					<!-- info-nodata // -->
					<div class="info-nodata">
						최근 1개월 간 주문하신 내역이 없습니다.
					</div>
					<!-- // info-nodata -->
				</div>

				<div class="review-area">
					<h3>리뷰 작성 가능한 상품 <a href="#" class="btn-more">더보기</a></h3>

					<!-- info-nodata // -->
					<div class="info-nodata">
						리뷰 작성 가능한 상품이 없습니다.
						<button type="button" class="btn fill black">쇼핑하러 가기</button>
					</div>
					<!-- // info-nodata -->
				</div>
			</div>
		</div>
	</main>
	<!-- //contents -->

	<!-- 팝업 : 임직원몰 매출 누적금액 : 2019.08.19 : 추가 // -->
	<div id="popstaff" class="popup popstaff">
		<div class="inner">
			<header class="header">
				<h2 class="tit">임직원몰 매출 누적금액</h2>

				<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<p class="txt">
					임직원몰 운영 기간동안 회원님의 ID를 인증한<br>
					주문건의 결제금액 총 액수입니다.
				</p>

				<dl class="info">
					<dt>기간</dt>
					<dd>2019.08.15 ~ 2019.08.24</dd>

					<dt>주문건수</dt>
					<dd>8건</dd>

					<dt>누적금액</dt>
					<dd><b>648,000원</b></dd>
				</dl>
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close" onclick="fn.popupClose();">확인</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 임직원몰 매출 누적금액 -->

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
