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
	<main id="wrap" class="about evolution">
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
						<li class="systematic"><a href="/about/systematic.php">체계적인 반복학습</a></li>
						<li class="optimize"><a href="/about/optimize.php">컨텐츠 최적화</a></li>
						<li class="coaching"><a href="/about/coaching.php">학습 습관 코칭</a></li>
						<li class="evolution"><a href="/about/evolution.php" class="on">진화하는 시스템</a></li>
					</ul>
				</div>
			</div>

			<div class="img_area">
				<div class="img_wrap">
					<div class="img_inner">
						<img src="/pjtCom/images/sub/img_about_evolution.jpg" alt="스스로 진화하는 APOE SYSTEM 기반의 선점우위 효과, MY Teacher의 APOE 시스템은 (Analytical, Personal, Optimized, Evolving) 사용자가 증가할수록 학습패턴 시스템의 정교함, 효과성, 적시성이 진화하여 빅데이터 규모의 경제를 통한 향후 AI 적용이 가능합니다.">
					</div>
				</div>
			</div>

			<div class="whiteboard">
				<img src="/pjtCom/images/sub/img_about_evolution_con.jpg" alt="학습자 data분석. 학습자별 필요 학습 제공. 퇴적화된 학습 컨텐츠 및 순서 제공">
			</div>

		</div>
	</main>
	<!-- //wrap -->

	<!-- footer // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php"; ?>
	<!-- //footer -->
</body>

</html>
