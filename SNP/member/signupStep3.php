<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "SIGN UP";
	$path2Tit = "";
	$path1Href = "/member/signupStep1.php";
	$path2Href = "";
	$pageClass = "member signup step3";
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
				<!-- 삭제 : 2019.07.17
				<div class="step">
					<div>약관동의</div>
					<div class="active">정보입력</div>
					<div>가입완료</div>
				</div> -->

				<div class="text-area">
					<p class="txt">
						<b>SNP 회원가입을 환영합니다!</b>
						로그인 하신 후  회원만이 누릴 수 있는 다양한 혜택을 즐겨보세요.
					</p>

					<div class="benefit">
						<a href="#"><img src="/pjtCom/pc/images/temp/signup_banner1.jpg" alt=""></a>
						<a href="#"><img src="/pjtCom/pc/images/temp/signup_banner2.jpg" alt=""></a>
					</div>
				</div>

				<div class="btn-area">
					<a href="/" class="btn stroke gray">메인 이동</a>
					<a href="/member/login.php" class="btn fill black">로그인 하기</a>
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
