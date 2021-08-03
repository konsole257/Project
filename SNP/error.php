<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "";
	$path2Tit = "";
	$path1Href = "";
	$path2Href = "";
	$pageClass = "";
?>

<head>
	<!-- config// -->
	<?php include $_SERVER["DOCUMENT_ROOT"]."/inCom/config.php" ?>
	<!-- //config -->

	<link rel="stylesheet" type="text/css" href="/pjtCom/pc/css/error.css" />
</head>

<body>
<div id="wrap" class="error">

	<!-- contents// -->
	<main id="container">
		<div id="contents">
			<div class="error-area">
				<p>
					<a href="/">SNP MALL</a>

					데이터를 불러 오는 과정에서 예기치 못한
					<b>시스템 에러가 발생했습니다.</b>

					불편을 드려 죄송합니다.
				</p>

				<div class="btn-area">
					<button type="button" class="btn fill black" onclick="history.back();">이전 페이지</button>
					<a href="/" class="btn stroke black">메인 페이지</a>
				</div>
			</div>
		</div>
	</main>
	<!-- //contents -->
</div>

</body>
</html>
