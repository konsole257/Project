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
	<main id="wrap" class="about content">
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
						<li class="content"><a href="/about/content.php" class="on">섬세한 컨텐츠</a></li>
						<li class="systematic"><a href="/about/systematic.php">체계적인 반복학습</a></li>
						<li class="optimize"><a href="/about/optimize.php">컨텐츠 최적화</a></li>
						<li class="coaching"><a href="/about/coaching.php">학습 습관 코칭</a></li>
						<li class="evolution"><a href="/about/evolution.php">진화하는 시스템</a></li>
					</ul>
				</div>
			</div>

			<div class="img_area">
				<div class="img_wrap">
					<div class="img_inner">
						<img src="/pjtCom/images/sub/img_about_content.jpg" alt="섬세한 컨텐츠 설계로 정확한 학습 효과 분석, 타 제품 대비 수십 배 이상의 섬세한 컨텐츠 설계를 통하여 과외선생님처럼 학생이 모르는 학습 내용을 정확하게 진단합니다.">
					</div>
				</div>
			</div>

			<div class="whiteboard">
				<img src="/pjtCom/images/sub/img_about_content_con.jpg" alt="기존 영어 학습 방식 : 이해를 잘 하기 위한 학습 순서가 아닌 학문적 기준의 학습 순서. 시제하면 현재에 be동사 일반동사 정도의 대략적인 학습 내용 구분. MY Teacher : 학문적인 관점이 아닌 학습 효과를 극대화 할 수 있는 학습순서. 한국 사람이 이해하기 어려운 내용들을 체계적으로 세분화하여 학습 내용 구분">
			</div>

		</div>
	</main>
	<!-- //wrap -->

	<!-- footer // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php"; ?>
	<!-- //footer -->
</body>

</html>
