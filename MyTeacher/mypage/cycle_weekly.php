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
	<main id="wrap" class="mypage cycle weekly">
		<div id="contents">
			<!-- sub title // -->
			<div class="sub_tit_area">
			    <h2 class="tit"><img src="/pjtCom/images/sub/tit_mypage.png" alt="마이페이지"></h2>

				<div class="path">
				    <a href="/">HOME</a>
				    <a href="/mypage/">마이페이지</a>
				    <a href="/mypage/cycle.php">학습주기</a>
				</div>
			</div>
			<!-- //sub title -->

			<div class="tabmenu_area">
				<div class="tabmenu_wrap">
					<!-- 2017.08.21 : 수정 // -->
					<ul class="tabmenu">
						<li class="condition"><a href="/mypage/">나의 학습 현황</a></li>
						<li class="hour"><a href="/mypage/hour.php">총 학습시간</a></li><!-- 2019.09.16 : 수정 -->
						<li class="diary"><a href="/mypage/diary_weekly.php">학습 일지</a></li>
						<li class="cycle"><a href="/mypage/cycle_weekly.php" class="on">학습 시간대</a></li><!-- 2019.09.16 : 수정 -->
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
							<b class="date">2017.08.13 ~ 2017. 08.19</b>

							<div class="btn_area">
								<button type="button" class="btn prev">이전</button>
								<button type="button" class="btn next">다음</button>
								<button type="button" class="btn calendar_view">달력보기</button>
							</div>
						</div>

						<!-- 달력 // -->
						<div class="calendar type_month">
							<!-- <input type="hidden" id="date"> 날짜 선택시 $('#date') 에 값이 들어감 -->
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
					<a href="/mypage/cycle_weekly.php" class="btn box weekly on">주간</a> <!-- 해당페이지에서 class="on"추가 -->
					<a href="/mypage/cycle_monthly.php"  class="btn box monthly">월간</a>
				</div>

				<img src="/pjtCom/images/sub/bg_mypage_cycle_graph_unit.png" alt="" class="graph_unit">

				<table class="table">
					<caption>학습 주기</caption>

					<thead>
						<tr>
							<th><span>8/13</span> 일요일</th>
							<th><span>8/14</span> 월요일</th>
							<th><span>8/15</span> 화요일</th>
							<th><span>8/16</span> 수요일</th>
							<th><span>8/17</span> 목요일</th>
							<th><span>8/18</span> 금요일</th>
							<th><span>8/19</span> 토요일</th>
						</tr>
					</thead>

					<!-- 2017.08.21 : 수정 // -->
					<tbody>
						<tr>
							<td>
								<div class="graph">
									<ul class="bar">
										<li>
											<span>학습시간 : </span><span class="am">오전 10:10</span> ~ <span class="am">오전 11:05</span>
											<!-- 상세 학습정보 // -->
											<article class="graph_detail">
												<h1 class="date">2017.08.13 일요일</h1>
												<p class="time">오전 10:10 ~ 오전 11:05</p>
												<p class="total_time">총 55분</p>

												<ul>
													<li>동영상 시청 : 15분</li>
													<li>어휘문제 풀이 : 15분</li>
													<li>객관식문제 풀이 : 15분</li>
													<li>주관식 문제 풀이 : 10분</li>
												</ul>
											</article>
											<!-- // 상세 학습정보 -->
										</li>
									</ul>
								</div>
							</td>
							<td>
								<div class="graph">
									<ul class="bar">
										<li>
											<span>학습시간 : </span><span class="pm">오후 05:00</span> ~ <span class="pm">오후 06:29</span>
											<!-- 상세 학습정보 // -->
											<article class="graph_detail">
												<h1 class="date">2017.08.14 월요일</h1>
												<p class="time">오후 05:00 ~ 오후 06:29</p>
												<p class="total_time">총 89분</p>

												<ul>
													<li>동영상 시청 : 25분</li>
													<li>어휘문제 풀이 : 20분</li>
													<li>객관식문제 풀이 : 16분</li>
													<li>주관식 문제 풀이 : 28분</li>
												</ul>
											</article>
											<!-- // 상세 학습정보 -->
										</li>
									</ul>
								</div>
							</td>
							<td>
								<div class="graph">
									<ul class="bar">
										<li>
											<span>학습시간 : </span><span class="pm">오후 06:30</span> ~ <span class="pm">오후 07:53</span>
											<!-- 상세 학습정보 // -->
											<article class="graph_detail">
												<h1 class="date">2017.08.15 화요일</h1>
												<p class="time">오후 06:30 ~ 오후 07:53</p>
												<p class="total_time">총 83분</p>

												<ul>
													<li>동영상 시청 : 20분</li>
													<li>어휘문제 풀이 : 18분</li>
													<li>객관식문제 풀이 : 30분</li>
													<li>주관식 문제 풀이 : 15분</li>
												</ul>
											</article>
											<!-- // 상세 학습정보 -->
										</li>
									</ul>
								</div>
							</td>
							<td>
								<div class="graph">
									<ul class="bar">
										<li>
											<span>학습시간 : </span><span class="pm">오후 04:10</span> ~ <span class="pm">오후 04:45</span>
											<!-- 상세 학습정보 // -->
											<article class="graph_detail">
												<h1 class="date">2017.08.16 수요일</h1>
												<p class="time">오후 04:10 ~ 오후 04:45</p>
												<p class="total_time">총 35분</p>

												<ul>
													<li>동영상 시청 : 15분</li>
													<li>어휘문제 풀이 : 20분</li>
												</ul>
											</article>
											<!-- // 상세 학습정보 -->
										</li>
									</ul>
								</div>
							</td>
							<td>
								<div class="graph">
									<ul class="bar">
										<li>
											<span>학습시간 : </span><span class="pm">오후 05:40</span> ~ <span class="pm">오후 06:30</span>
											<!-- 상세 학습정보 // -->
											<article class="graph_detail">
												<h1 class="date">2017.08.17 목요일</h1>
												<p class="time">오후 05:40 ~ 오후 06:30</p>
												<p class="total_time">총 50분</p>

												<ul>
													<li>객관식문제 풀이 : 20분</li>
													<li>주관식 문제 풀이 : 30분</li>
												</ul>
											</article>
											<!-- // 상세 학습정보 -->
										</li>
										<li>
											<span>학습시간 : </span><span class="pm">오후 06:50</span> ~ <span class="pm">오후 08:15</span>
											<!-- 상세 학습정보 // -->
											<article class="graph_detail">
												<h1 class="date">2017.08.17 목요일</h1>
												<p class="time">오후 06:50 ~ 오후 08:15</p>
												<p class="total_time">총 85분</p>

												<ul>
													<li>동영상 시청 : 30분</li>
													<li>어휘문제 풀이 : 20분</li>
													<li>객관식문제 풀이 : 20분</li>
													<li>주관식 문제 풀이 : 15분</li>
												</ul>
											</article>
											<!-- // 상세 학습정보 -->
										</li>
									</ul>
								</div>
							</td>
							<td>
								<div class="graph">

								</div>
							</td>
							<td>
								<div class="graph">
									<ul class="bar">
										<li>
											<span>학습시간 : </span><span class="am">오전 11:05</span> ~ <span class="am">오전 12:20</span>
											<!-- 상세 학습정보 // -->
											<article class="graph_detail">
												<h1 class="date">2017.08.19 토요일</h1>
												<p class="time">오전 11:05 ~ 오전 12:20</p>
												<p class="total_time">총 75분</p>

												<ul>
													<li>동영상 시청 : 20분</li>
													<li>어휘문제 풀이 : 25분</li>
													<li>객관식문제 풀이 : 10분</li>
													<li>주관식 문제 풀이 : 20분</li>
												</ul>
											</article>
											<!-- // 상세 학습정보 -->
										</li>
										<li>
											<span>학습시간 : </span><span class="pm">오후 02:40</span> ~ <span class="pm">오후 03:50</span>
											<!-- 상세 학습정보 // -->
											<article class="graph_detail">
												<h1 class="date">2017.08.19 토요일</h1>
												<p class="time">오후 2:40 ~ 오후 3:50</p>
												<p class="total_time">총 70분</p>

												<ul>
													<li>동영상 시청 : 20분</li>
													<li>어휘문제 풀이 : 20분</li>
													<li>객관식문제 풀이 : 20분</li>
													<li>주관식 문제 풀이 : 10분</li>
												</ul>
											</article>
											<!-- // 상세 학습정보 -->
										</li>
									</ul>
								</div>
							</td>
						</tr>
					</tbody>
					<!-- // 2017.08.21 : 수정 -->
				</table>

				<strong class="caution">학습은 일일 최대 3번 기록됩니다.</strong>

				<a href="#coaching" class="btn coaching icon">코칭멘트 보기</a>
				<div id="coaching" class="tooltip">
					<p>
						정해진 시간에 꾸준히 공부해 볼까요?
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
