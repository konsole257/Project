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
	<main id="wrap" class="mypage diary weekly">
		<div id="contents">
			<!-- sub title // -->
			<div class="sub_tit_area">
			    <h2 class="tit"><img src="/pjtCom/images/sub/tit_mypage.png" alt="마이페이지"></h2>
				<div class="path">
				    <a href="/">HOME</a>
				    <a href="/mypage/">마이페이지</a>
				    <a href="/mypage/diary.php">학습일지</a>
				</div>
			</div>
			<!-- //sub title -->

			<div class="tabmenu_area">
				<div class="tabmenu_wrap">
					<!-- 2017.08.21 : 수정 // -->
		            <ul class="tabmenu">
						<li class="condition"><a href="/mypage/">나의 학습 현황</a></li>
						<li class="hour"><a href="/mypage/hour.php">학습량</a></li>
						<li class="diary"><a href="/mypage/diary_weekly.php" class="on">학습 일지</a></li>
						<li class="cycle"><a href="/mypage/cycle_weekly.php">학습 주기</a></li>
						<li class="speed"><a href="/mypage/speed_vocabulary.php">문제풀이 속도</a></li>
						<li class="modify"><a href="/mypage/modify.php">회원정보 수정</a></li>
					</ul>
					<!-- // 2017.08.21 : 수정 -->
				</div>
			</div>

			<div class="output_area">
				<div class="output_wrap">
					<div class="output_inner">
						<div class="period">
							<b class="date">2017.08</b>

							<div class="btn_area">
								<button type="button" class="btn prev">이전</button>
								<button type="button" class="btn next">다음</button>
								<button type="button" class="btn calendar_view">달력보기</button>
							</div>
						</div>

						<!-- 달력 // -->
						<div class="calendar type_month">
							<table>
								<caption>
									<div class="year">
										<input type="text" title="년도" value="" readonly>
										<div class="btn_area">
											<button type="button" class="btn next icon">다음 년도</button>
											<button type="button" class="btn prev icon">이전 년도</button>
										</div>
									</div>

									<div class="month">
										<input type="text" title="월" value="" readonly>
										<div class="btn_area">
											<button type="button" class="btn next icon">다음 월</button>
											<button type="button" class="btn prev icon">이전 월</button>
										</div>
									</div>
								</caption>

								<colgroup>
									<col style="width:25px;">
									<col style="width:25px;">
									<col style="width:25px;">
									<col style="width:25px;">
									<col style="width:25px;">
									<col style="width:25px;">
									<col style="width:25px;">
								</colgroup>

								<thead>
									<tr>
										<th scope="col">일</th>
										<th scope="col">월</th>
										<th scope="col">화</th>
										<th scope="col">수</th>
										<th scope="col">목</th>
										<th scope="col">금</th>
										<th scope="col">토</th>
									</tr>
								</thead>

								<tbody>
									<!-- <tr>
										<td><a href="#">1</a></td>
										<td><a href="#">2</a></td>
										<td><a href="#">3</a></td>
										<td><a href="#">4</a></td>
										<td><a href="#">5</a></td>
										<td><a href="#">6</a></td>
										<td><a href="#">7</a></td>
									</tr> -->
								</tbody>
							</table>
							<div class="dimd"></div>
						</div>
						<!-- // 달력 -->
					</div>
				</div>
			</div>

			<div class="whiteboard">
				<div class="btn_area">
					<a href="/mypage/diary_weekly.php" class="btn box weekly on">주간</a> <!-- 해당페이지에서 class="on"추가 -->
					<a href="/mypage/diary_monthly.php"  class="btn box monthly">월간</a>
				</div>

				<table class="table">
					<caption>
						<span class="caption">날짜별 학습 내용</span>
						<!--<span class="icon graph_txt video">동영상</span> 2019.09.16 : 삭제 -->
						<!--<span class="icon graph_txt vocabulary">어휘</span> 2019.09.16 : 삭제 -->
						<!--<span class="icon graph_txt subjective">객관식</span> 2019.09.16 : 삭제 -->
						<!--<span class="icon graph_txt objective">주관식</span> 2019.09.16 : 삭제 -->
					</caption>

					<colgroup>
						<col style="width:326px;">
						<col style="width:744px;">
					</colgroup>

					<thead>
						<tr>
							<th>날짜</th>
							<th>학습 내용</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td>8월 13일 일요일</td>
							<td>
								<!-- 2019.10 : 수정 // -->
								<div class="swiper-container diary-swiper">
									<ul class="swiper-wrapper">
										<li class="swiper-slide red">
											<div>
												<p class="name">현재_be동사1_형용사 주격보어_복수_긍정4</p>
												<p class="time">총 60분</p>
											</div>
										</li>

										<li class="swiper-slide orange">
											<div>
												<p class="name">현재_be동사1_형용사 주격보어_복수_긍정4</p>
												<p class="time">총 60분</p>
											</div>
										</li>

										<li class="swiper-slide green">
											<div>
												<p class="name">현재_be동사1_형용사 주격보어_복수_긍정4</p>
												<p class="time">총 60분</p>
											</div>
										</li>

										<li class="swiper-slide blue">
											<div>
												<p class="name">현재_be동사1_형용사 주격보어_복수_긍정4</p>
												<p class="time">총 60분</p>
											</div>
										</li>

										<li class="swiper-slide violet">
											<div>
												<p class="name">현재_be동사1_형용사 주격보어_복수_긍정4</p>
												<p class="time">총 60분</p>
											</div>
										</li>

										<li class="swiper-slide violet">
											<div>
												<p class="name">현재_be동사1_형용사 주격보어_복수_긍정4</p>
												<p class="time">총 60분</p>
											</div>
										</li>

										<li class="swiper-slide violet">
											<div>
												<p class="name">현재_be동사1_형용사 주격보어_복수_긍정4</p>
												<p class="time">총 60분</p>
											</div>
										</li>

										<li class="swiper-slide violet">
											<div>
												<p class="name">현재_be동사1_형용사 주격보어_복수_긍정4</p>
												<p class="time">총 60분</p>
											</div>
										</li>

										<li class="swiper-slide violet">
											<div>
												<p class="name">현재_be동사1_형용사 주격보어_복수_긍정4</p>
												<p class="time">총 60분</p>
											</div>
										</li>

										<li class="swiper-slide violet">
											<div>
												<p class="name">현재_be동사1_형용사 주격보어_복수_긍정4</p>
												<p class="time">총 60분</p>
											</div>
										</li>

										<li class="swiper-slide violet">
											<div>
												<p class="name">현재_be동사1_형용사 주격보어_복수_긍정4</p>
												<p class="time">총 60분</p>
											</div>
										</li>

										<li class="swiper-slide violet">
											<div>
												<p class="name">현재_be동사1_형용사 주격보어_복수_긍정4</p>
												<p class="time">총 60분</p>
											</div>
										</li>

										<li class="swiper-slide violet">
											<div>
												<p class="name">현재_be동사1_형용사 주격보어_복수_긍정4</p>
												<p class="time">총 60분</p>
											</div>
										</li>

										<li class="swiper-slide violet">
											<div>
												<p class="name">현재_be동사1_형용사 주격보어_복수_긍정4</p>
												<p class="time">총 60분</p>
											</div>
										</li>
									</ul>
								</div>

								<div class="swiper-button-next"></div>
								<div class="swiper-button-prev"></div>
								<!-- // 2019.10 : 수정 -->
							</td>
						</tr>

						<tr>
							<td>8월 14일 월요일</td>
							<td>
							</td>
						</tr>

						<tr>
							<td>8월 15일 화요일</td>
							<td>

							</td>
						</tr>

						<tr>
							<td>8월 16일 수요일</td>
							<td>

							</td>
						</tr>

						<tr>
							<td>8월 17일 목요일</td>
							<td>

							</td>
						</tr>

						<tr>
							<td>8월 18일 금요일</td>
							<td>

							</td>
						</tr>

						<tr>
							<td>8월 19일 토요일</td>
							<td>

							</td>
						</tr>
					</tbody>
				</table>

				<!-- 2019.10 : 추가 // -->
				<div class="time-area">
					<small class="red">30분 학습</small>
					<small class="orange">1시간 학습</small>
					<small class="green">1시간 30분 학습</small>
					<small class="blue">2시간 학습</small>
					<small class="violet">2시간 30분 학습</small>
				</div>
				<!-- // 2019.10 : 추가 -->

				<a href="#coaching" class="btn coaching icon">코칭멘트 보기</a>
				<div id="coaching" class="tooltip">
					<p>
						지금처럼 꾸준히 학습하세요!
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
