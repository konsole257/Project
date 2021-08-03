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
	<main id="wrap" class="about method type">
		<div id="contents">
            <!-- sub title // -->
			<div class="sub_tit_area">
				<h2 class="tit"><a href="/about/type.php"><img src="/pjtCom/images/sub/tit_method_on.png" alt="학습방법"></a></h2>
			    <h2 class="tit"><a href="/about/"><img src="/pjtCom/images/sub/tit_about.png" alt="MY Teacher 소개"></a></h2>
				<div class="path">
					<a href="/">HOME</a>
					<a href="/about/">소개</a>
				</div>
			</div>
        	<!-- //sub title -->

			<div class="tabmenu_area">
				<div class="tabmenu_wrap">
		            <ul class="tabmenu">
						<li class="type"><a href="/about/type.php" class="on">학습 유형</a></li>
						<li class="relearning"><a href="/about/relearning.php">맞춤형 재학습</a></li>
						<li class="habit"><a href="/about/habit.php">학습 습관</a></li>
					</ul>
				</div>
			</div>

			<div class="img_area">
				<div class="img_wrap">
					<div class="img_inner">
						<img src="/pjtCom/images/sub/img_about_type.jpg" alt="성적이 오를 수밖에 없는 MY Teacher의 4가지 학습 처방">
					</div>
				</div>
			</div>

			<div class="whiteboard">
				<img src="/pjtCom/images/sub/img_about_type_con1.jpg" alt="동영상 학습 - 어려운 문법 용어는 그만~ 문법핵심을 담은 평균10분 동영상 강의 시청">
				<img src="/pjtCom/images/sub/img_about_type_con2.jpg" alt="문제풀이, 해당 학습내용을 학생이 어느 정도 이해했는지를 판단하기 가장 좋은 방법은 문제를 푸는 것입니다. MY Teacher는 오프라인에서 과외선생님이 진행하는 것과 동일하게 단계 별로 문제를 풀게하여 학습 이해도를 정확하게 분석합니다. 특히, MY Teacher 만의 특징인 오답 별 힌트를 통하여 학생들은 왜 틀렸는지를 명확하게 이해하여 학습효과를 극대화하게 됩니다.">
				<img src="/pjtCom/images/sub/img_about_type_con3.jpg" alt="어휘 문제풀이 - 어휘부터 정확하게 차근차근">
				<img src="/pjtCom/images/sub/img_about_type_con4.jpg" alt="객관식 문제풀이 - 올바른 문장을 학습하는 객관식 문제 풀기">
				<img src="/pjtCom/images/sub/img_about_type_con5.jpg" alt="주관식 문제풀이 - 주관식 만점을 위한 국내 최초 영어 문장 만들기 문제 제공">
			</div>

		</div>
	</main>
	<!-- //wrap -->

	<!-- footer // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php"; ?>
	<!-- //footer -->
</body>

</html>
