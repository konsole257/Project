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
	<main id="wrap" class="about optimize">
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
						<li class="optimize"><a href="/about/optimize.php" class="on">컨텐츠 최적화</a></li>
						<li class="coaching"><a href="/about/coaching.php">학습 습관 코칭</a></li>
						<li class="evolution"><a href="/about/evolution.php">진화하는 시스템</a></li>
					</ul>
				</div>
			</div>

			<div class="img_area">
				<div class="img_wrap">
					<div class="img_inner">
						<img src="/pjtCom/images/sub/img_about_optimize.jpg" alt="빅데이터를 활용하여 지속적으로 학습 컨텐츠 최적화, MY Teacher의 학습 컨텐츠는 정체되지 않습니다. 빅데이터 분석을 통하여 학습효과가 낮은 학습 컨텐츠를 분석, upgrade 하여 최적의 학습효과를 이끌 수 있게 지속적으로 진화합니다.">
					</div>
				</div>
			</div>

			<div class="whiteboard">
				<img src="/pjtCom/images/sub/img_about_optimize_con.jpg" alt="한국인을 위한 최적의 학습 순서 - MY Teacher는 기존의 낡은 문법 학습 순서에서 탈피하여, 한국 사람들에게 가장 효과적인 학습 순서로 구성되었습니다. 기존 학습 순서 : 과도하게 학구적인 관점에서의 비효과적인 문법 학습 순서 고수. MY Teacher : 즉각적으로 문장을 작문할 수 있는 한국인에게 가장 적합한 필수 학습 순서 제시.">
			</div>

		</div>
	</main>
	<!-- //wrap -->

	<!-- footer // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php"; ?>
	<!-- //footer -->
</body>

</html>
