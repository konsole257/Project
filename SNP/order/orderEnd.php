<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "결제 완료";
	$path2Tit = "";
	$path1Href = "/order/order.php";
	$path2Href = "";
	$pageClass = "order end";
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
			</div>

			<div class="body">
				<div class="orderend-area">
					<h3>고객님의 주문이 정상적으로 완료되었습니다. <small>SNP화장품을 이용해 주셔서 감사합니다.</small></h3>

					<div class="orderinfo">
						박보검님 주문번호는 <strong>20181226222423S41LCH (주문일 : 2018.12.26)</strong> 입니다.
					</div>

					<div class="btn-area">
						<a href="#" class="btn big stroke gray">주문정보 조회하기</a>
						<a href="#" class="btn big fill black">쇼핑 계속하기</a>
					</div>

					<!-- 안내문구 : 2019.03.28 : 2019.04.11 : 수정 // -->
					<div class="infoarea">
						<div class="info-txt">
							<p class="tit">결제 완료 안내</p>
							<p>주문 내역은 마이페이지 > 주문배송 조회에서 확인하실 수 있습니다.</p>
							<p>배송은 롯데택배를 통해서 고객님께 배송이 되며, 구매하신 상품이 안전하게 배송되도록 최선을 다하겠습니다.</p>
							<p>상품, 배송 등 궁금하신 문의 사항은 고객센터 0505-864-1846으로 연락 주시거나 마이페이지>1:1 문의에서 접수해주시기 바랍니다.</p>
						</div>
					</div>
					<!-- // 안내문구 -->
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
