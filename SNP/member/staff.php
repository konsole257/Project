<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "임직원 아이디 확인";
	$path2Tit = "";
	$path1Href = "";
	$path2Href = "";
	$pageClass = "member staff";
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
				<h3>임직원 기획전</h3>
				<form class="form-area">
					<fieldset>
						<legend class="hide">임직원 아이디 확인</legend>

						<input type="text" title="임직원 아이디 입력">
						<p class="txt">* 임직원 아이디 입력해주세요.</p>

						<button type="submit" class="btn big fill black btn-login">확인</button>
					</fieldset>
				</form>
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
