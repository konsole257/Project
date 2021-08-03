<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "EVENT";
	$path2Tit = "회원혜택";
	$path1Href = "/event/eventList.php";
	$path2Href = "/event/benefit.php";
	$pageClass = "event benefit";
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
					<a href="/event/resultList.php">당첨자 발표</a>
					<a href="/event/benefit.php" class="active">회원혜택</a>
				</div>

				<div class="tab-contents active">
					<p class="txt">SNP Mall 회원에 드리는 혜택</p>

					<!-- 2019.03.28 : 수정 // -->
					<table>
						<caption class="hide">등급별 혜택</caption>

						<colgroup>
							<col style="width:120px;">
							<col style="width:360px;">
							<col style="width:360px;">
							<col style="width:360px;">
						</colgroup>

						<tbody>
							<tr>
								<th>고객등급</th>
								<td>
									<img src="/pjtCom/pc/images/sub/icon_benefit_friends.png" alt="">
									<p class="grade">뉴비</p>
									<p>신규가입</p>
								</td>
								<td>
									<img src="/pjtCom/pc/images/sub/icon_benefit_celeb.png" alt="">
									<p class="grade">프렌즈</p>
									<p>최근 6개월 이내</p>
									<p>구매 금액 1만원 ~ 30만원</p>
								</td>
								<td>
									<img src="/pjtCom/pc/images/sub/icon_benefit_vip.png" alt="">
									<p class="grade">VIP</p>
									<p>최근 6개월 이내</p>
									<p>구매 금액 31만원 이상</p>
								</td>
							</tr>

							<tr>
								<th>포인트 적립</th>
								<td>실결제 금액의 <span>1%</span></td>
								<td>
									실결제 금액의 <span>3%</span>
								</td>
								<td>
									실결제 금액의 <span>5%</span>
								</td>
							</tr>

							<tr>
								<th>등업(가입) 쿠폰</th>
								<td>
									웰컴 포인트  <span>3,000P 적립</span> <small>(30일 유효)</small><br>
									첫 구매 감사쿠폰 <span>3,000원 할인</span> <small>(30일 유효)</small><br>
									SMS,이메일 수신동의 <span>각 500원 추가 적립</span> <small>(1회 적립)</small><br>
									무료배송 <small>(신규가입/30일 유효)</small><br>
								</td>
								<td>
									승급 쿠폰 <span>30%</span>
								</td>
								<td>
									승급 쿠폰 <span>40%</span>
								</td>
							</tr>

							<tr>
								<th>정기쿠폰</th>
								<td></td>
								<td>
									생일쿠폰 <span>20%</span> <small>(30일 유효)</small><br>
									재구매 할인 <span>10%</span> <small>(2매/90일 유효)</small><br>
									무료배송 <small>(월 1회/30일 유효)</small><br>
								</td>
								<td>
									생일쿠폰 <span>30%</span> <small>(30일 유효)</small><br>
									재구매 할인 <span>10%</span> <small>(3매/90일 유효)</small><br>
									무료배송 <small>(월 2회/30일 유효)</small><br>
								</td>
							</tr>
						</tbody>
					</table>

					<div class="info-txt">
						<strong>안내</strong>
						<p>회원등급은 최근 6개월 실결제 누적 금액으로 변경됩니다. (실결제 누적 금액이란 쿠폰, 포인트로 인한 할인 금액과 교환/반품을 제외한 금액입니다.)</p>
						<p>매월 1일 등급이 조정 됩니다.</p>
						<p>회원 등급 할인과 특정 할인은 일부 품목에는 중복 적용 되지 않습니다.</p>
					</div>
					<!-- // 2019.03.28 : 수정 -->
				</div>
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
