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
	<main id="wrap" class="mypage speed">
		<div id="contents">
			<!-- sub title // -->
			<div class="sub_tit_area">
			    <h2 class="tit"><img src="/pjtCom/images/sub/tit_mypage.png" alt="마이페이지"></h2>
				<div class="path">
					<a href="/">HOME</a>
					<a href="/mypage/">마이페이지</a>
					<a href="/mypage/speed.php">문제풀이 속도</a>
				</div>
			</div>
			<!-- //sub title -->

			<div class="tabmenu_area">
				<div class="tabmenu_wrap">
					<!-- 2017.08.21 : 수정 // -->
		            <ul class="tabmenu">
						<li class="condition"><a href="/mypage/">나의 학습 현황</a></li>
						<li class="hour"><a href="/mypage/hour.php">학습량</a></li>
						<li class="diary"><a href="/mypage/diary_weekly.php">학습 일지</a></li>
						<li class="cycle"><a href="/mypage/cycle_weekly.php">학습 주기</a></li>
						<li class="speed"><a href="/mypage/speed_vocabulary.php" class="on">문제풀이 속도</a></li>
						<li class="modify"><a href="/mypage/modify.php">회원정보 수정</a></li>
					</ul>
					<!-- // 2017.08.21 : 수정 -->
				</div>
			</div>

			<div class="progress_area">
				<div class="progress_wrap">
					<div class="progress_inner">
						<div class="location">
							<p class="now">현재 학습 위치</p>

							<div class="hgroup">
								<h3 class="dep2 icon">중 1</h3>
								<h4 class="dep3">시제</h3>
								<h5 class="dep4">수동태</h4>
								<h6 class="dep5">Unit 17.4  수동태 + 조동사</h5>
							</div>
						</div>

						<div class="progress">
							<ul>
								<li class="prev"><a href="#">조동사</a></li>
								<li class="prev"><a href="#">조동사</a></li>
								<li class="prev"><a href="#">조동사</a></li>
								<li class="prev"><a href="#">조동사</a></li>
								<li class="prev"><a href="#">조동사</a></li>
								<li class="next"><a href="#">조동사</a></li>
								<li class="next"><a href="#">조동사</a></li>
								<li class="next"><a href="#">조동사</a></li>
								<li class="next"><a href="#">조동사</a></li>
							</ul>
						</div>

						<div class="btn_area">
							<a href="#" class="btn prev icon">이전</a>
							<a href="#" class="btn next icon">다음</a>
						</div>
					</div>
				</div>
			</div>

			<div class="whiteboard">
				<div class="btn_area">
					<a href="/mypage/speed_vocabulary.php" class="btn box vocabulary">어휘</a> <!-- 해당페이지에서 class="on"추가 -->
					<a href="/mypage/speed_subjective.php"  class="btn box subjective on">객관식</a>
					<a href="/mypage/speed_objective.php"  class="btn box objective">주관식</a>
				</div>

				<p class="nodata">학습 결과가 없습니다</p>

				<a href="#coaching" class="btn coaching icon">코칭멘트 보기</a>
				<div id="coaching" class="tooltip">
					<p>
						지금도 잘하고 있지만 조금만<br>
						더 빨리 풀어볼까요?
					</p>

					<a href="#close" class="btn close">접어두기</a>
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
