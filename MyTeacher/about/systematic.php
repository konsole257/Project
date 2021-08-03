<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- config // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/config.php"; ?>
	<!-- //config -->

	<meta name="description" content="@@description" />

	<link rel="stylesheet" href="/pjtCom/css/sub.css">
</head>

<body>
	<!-- header // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/header.php"; ?>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="about systematic">
		<div id="contents">
            <!-- sub title // -->
			<div class="sub_tit_area">
			    <h2 class="tit"><a href="/about/"><img src="/pjtCom/images/sub/tit_about_on.png" alt="MY Teacher 소개"></a></h2>
				<h2 class="tit"><a href="/about/type.php"><img src="/pjtCom/images/sub/tit_method.png" alt="학습방법"></a></h2>
				<div class="path">
					<a href="/">HOME</a>
					<a href="/about/">소개</a>
				</div>
			</div>
        	<!-- //sub title -->

			<div class="tabmenu_area">
				<div class="tabmenu_wrap">
		            <ul class="tabmenu">
						<li class="bigdata"><a href="/about/">학습 데이터 과외 선생님</a></li>
						<li class="hint"><a href="/about/hint.php">힌트 시스템</a></li>
						<li class="content"><a href="/about/content.php">섬세한 컨텐츠</a></li>
						<li class="systematic"><a href="/about/systematic.php" class="on">체계적인 반복학습</a></li>
						<li class="optimize"><a href="/about/optimize.php">컨텐츠 최적화</a></li>
						<li class="coaching"><a href="/about/coaching.php">학습 습관 코칭</a></li>
						<li class="evolution"><a href="/about/evolution.php">진화하는 시스템</a></li>
					</ul>
				</div>
			</div>

			<div class="img_area">
				<div class="img_wrap">
					<div class="img_inner">
						<img src="/pjtCom/images/sub/img_about_systematic.jpg" alt="체계적인 반복학습 안내를 통한 학습 효과 극대화, 과외선생님처럼 배웠던 내용의 반복학습이 필요한 시점에 해당 학습으로 학습 순서를 가이드합니다.">
					</div>
				</div>
			</div>

			<div class="whiteboard">
				<img src="/pjtCom/images/sub/img_about_systematic_con.jpg" alt="">
			</div>

		</div>
	</main>
	<!-- //wrap -->

	<!-- footer // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php"; ?>
	<!-- //footer -->
</body>

</html>
