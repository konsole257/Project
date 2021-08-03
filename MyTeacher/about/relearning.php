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
	<main id="wrap" class="about method relearning">
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
						<li class="type"><a href="/about/type.php">학습 유형</a></li>
						<li class="relearning"><a href="/about/relearning.php" class="on">맞춤형 재학습</a></li>
						<li class="habit"><a href="/about/habit.php">학습 습관</a></li>
					</ul>
				</div>
			</div>

			<div class="img_area">
				<div class="img_wrap">
					<div class="img_inner">
						<img src="/pjtCom/images/sub/img_about_relearning.jpg" alt="나만의 선생님 MY Teacher, 아무리 공부해도 늘지 않았던 영어 문법! 마이티쳐가 그 해결책의 길잡이가 되어드리겠습니다.">

						<div class="pick_area">
							<button type="button" class="master">master</button>
							<button type="button" class="excellent">excellent</button>
							<button type="button" class="notbad">notbad</button>
							<button type="button" class="tryagain">tryagain</button>
						</div>
					</div>
				</div>
			</div>

			<div class="whiteboard">
				<div class="slide">
					<img src="/pjtCom/images/sub/img_about_relearning_con4.jpg" alt="" class="master">
					<img src="/pjtCom/images/sub/img_about_relearning_con3.jpg" alt="" class="excellent">
					<img src="/pjtCom/images/sub/img_about_relearning_con2.jpg" alt="" class="notbad">
					<img src="/pjtCom/images/sub/img_about_relearning_con1.jpg" alt="" class="tryagain">
				</div>

				<div class="btn_area">
					<button type="button" class="btn prev icon">이전</button>
					<button type="button" class="btn next icon">다음</button>
				</div>
			</div>
		</div>
	</main>
	<!-- //wrap -->

	<!-- footer // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php"; ?>
	<!-- //footer -->
</body>

</html>
