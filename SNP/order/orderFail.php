<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "결제 실패";
	$path2Tit = "";
	$path1Href = "/order/order.php";
	$path2Href = "";
	$pageClass = "order fail";
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
				<div class="orderfail-area">
					<h3>
						죄송합니다.<br>
						고객님의 주문이 정상적으로 처리되지 않았습니다.
						<small>시스템상에 오류가 발생했습니다.</small>
					</h3>

					<div class="btn-area">
						<a href="#" class="btn big stroke gray">장바구니</a>
						<a href="#" class="btn big fill black">다시 주문결제하기</a>
					</div>
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
