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
	<main id="wrap" class="about method habit">
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
						<li class="relearning"><a href="/about/relearning.php">맞춤형 재학습</a></li>
						<li class="habit"><a href="/about/habit.php" class="on">학습 습관</a></li>
					</ul>
				</div>
			</div>

			<div class="img_area">
				<div class="img_wrap">
					<div class="img_inner">
						<img src="/pjtCom/images/sub/img_about_habit.jpg" alt="스스로 하는 학습 진단, 문제풀이 결과를 통해 학습결과를 진단하고 재학습을 유도합니다.">
						
						<div class="pick_area">
							<button type="button" class="condition">나의 학습 현황</button>
							<button type="button" class="hour">학습량</button>
							<button type="button" class="diary">학습일지</button>
							<button type="button" class="cycle">학습주기</button>
							<button type="button" class="speed">문제풀이속도</button>
						</div>
					</div>
				</div>
			</div>

			<div class="whiteboard">
				<div class="slide">
					<img src="/pjtCom/images/sub/img_about_habit_con1.jpg" alt="나의 학습 현황 - Unit별 자세한 학습 결과 확인" class="condition">
					<img src="/pjtCom/images/sub/img_about_habit_con2.jpg" alt="학습량 - 매일매일 체크하는 나의 학습시간" class="hour">
					<img src="/pjtCom/images/sub/img_about_habit_con3.jpg" alt="학습일지 - 나의 학습 기록을 한눈에 확인하여 앞으로의 학습계획을 구체화하는 자기주도적 학습의 시작" class="diary">
					<img src="/pjtCom/images/sub/img_about_habit_con4.jpg" alt="학습주기 - 나의 학습 시간과 학습 요일, 시간대 패턴비교" class="cycle">
					<img src="/pjtCom/images/sub/img_about_habit_con5.jpg" alt="문제풀이속도 - 상위권 학생들과 나의 문제풀이 속도 비교" class="speed">
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
