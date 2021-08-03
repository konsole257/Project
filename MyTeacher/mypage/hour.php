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
	<main id="wrap" class="mypage hour">
		<div id="contents">
			<!-- sub title // -->
			<div class="sub_tit_area">
			    <h2 class="tit"><img src="/pjtCom/images/sub/tit_mypage.png" alt="마이페이지"></h2>
				<div class="path">
				    <a href="/">HOME</a>
				    <a href="/mypage/">마이페이지</a>
				    <a href="/mypage/hour.php">학습량</a>
				</div>
			</div>
			<!-- //sub title -->

			<div class="tabmenu_area">
				<div class="tabmenu_wrap">
					<!-- 2017.08.21 : 수정 // -->
					<ul class="tabmenu">
						<li class="condition"><a href="/mypage/">나의 학습 현황</a></li>
						<li class="hour"><a href="/mypage/hour.php" class="on">총 학습시간</a></li><!-- 2019.09.16 : 수정 -->
						<li class="diary"><a href="/mypage/diary_weekly.php">학습 일지</a></li>
						<li class="cycle"><a href="/mypage/cycle_weekly.php">학습 시간대</a></li><!-- 2019.09.16 : 수정 -->
						<li class="speed"><a href="/mypage/speed_vocabulary.php">문제풀이 속도</a></li>
						<li class="modify"><a href="/mypage/modify.php">회원정보 수정</a></li>
					</ul>
					<!-- // 2017.08.21 : 수정 -->
				</div>
			</div>

			<div class="output_area">
				<div class="output_wrap">
					<div class="output_inner">
						<div class="output">총 학습시간 : <samp>9시간 2분</samp></div>

						<div class="period">
							<span class="date">2017.08.13 ~ 2017. 08.19</span>

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
				<table class="table">
					<caption>
						<span class="caption">날짜별 학습 시간</span>
						<!--<span class="icon graph_txt video">동영상</span> 2019.09.16 : 삭제 -->
						<!--<span class="icon graph_txt vocabulary">어휘</span> 2019.09.16 : 삭제 -->
						<!--<span class="icon graph_txt subjective">객관식</span> 2019.09.16 : 삭제 -->
						<!-- <span class="icon graph_txt objective">주관식</span> 2019.09.16 : 삭제 -->
						<em class="graph_txt unit">단위:분</em>
					</caption>

					<colgroup>
						<col style="width:168px;">
						<col >
					</colgroup>

					<thead>
						<tr>
							<th>날짜</th>
							<th>학습 시간</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td>8월 13일 일요일</td>
							<td>
								<div class="graph">
									<ul class="bar">
										<!-- <li class="video"><span>동영상 학습시간 : </span>15분</li> -->
										<!-- <li class="vocabulary"><span>어휘 학습시간 : </span>15분</li> -->
										<!-- <li class="subjective"><span>객관식 학습시간 : </span>15분</li> -->
										<li class="objective"><span>주관식 학습시간 : </span>10분</li>
									</ul>

									<!-- 상세 학습정보 // -->
									<article class="graph_detail">
										<h1 class="date">2017.08.13 일요일</h1>
										<h2 class="level">중1 – 시제</h2>
										<h3 class="unit">Unit 17.5 – 수동태 + 조동사</h3>

										<ul>
											<li>어휘 : <b>70</b>/70 학습 완료</li>
											<li>객관식 : <b>46</b>/46 학습 완료</li>
											<li>주관식 : <b>42</b>/42 학습 완료</li>
										</ul>
									</article>
									<!-- // 상세 학습정보 -->
								</div>
								<div class="time">총 <span>55</span>분 학습</div>
							</td>
						</tr>

						<tr>
							<td>8월 14일 월요일</td>
							<td>
								<div class="graph">
									<ul class="bar">
										<!-- <li class="video"><span>동영상 학습시간 : </span>25분</li>
										<li class="vocabulary"><span>어휘 학습시간 : </span>20분</li>
										<li class="subjective"><span>객관식 학습시간 : </span>16분</li> -->
										<li class="objective"><span>주관식 학습시간 : </span>28분</li>
									</ul>
								</div>
								<div class="time">총 <span>89</span>분 학습</div>
							</td>
						</tr>

						<tr>
							<td>8월 15일 화요일</td>
							<td>
								<div class="graph">
									<ul class="bar">
										<!-- <li class="video"><span>동영상 학습시간 : </span>20분</li>
										<li class="vocabulary"><span>어휘 학습시간 : </span>18분</li>
										<li class="subjective"><span>객관식 학습시간 : </span>30분</li> -->
										<li class="objective"><span>주관식 학습시간 : </span>15분</li>
									</ul>
								</div>
								<div class="time">총 <span>83</span>분 학습</div>
							</td>
						</tr>

						<tr>
							<td>8월 16일 수요일</td>
							<td>
								<div class="graph">
									<ul class="bar">
										<!-- <li class="video"><span>동영상 학습시간 : </span>15분</li>
										<li class="vocabulary"><span>어휘 학습시간 : </span>20분</li> -->
									</ul>
								</div>
								<div class="time">총 <span>35</span>분 학습</div>
							</td>
						</tr>

						<tr>
							<td>8월 17일 목요일</td>
							<td>
								<div class="graph">
									<ul class="bar">
										<!-- <li class="subjective"><span>객관식 학습시간 : </span>20분</li> -->
										<li class="objective"><span>주관식 학습시간 : </span>30분</li>
										<!-- <li class="video"><span>동영상 학습시간 : </span>30분</li> -->
										<!-- <li class="vocabulary"><span>어휘 학습시간 : </span>20분</li> -->
										<!-- <li class="subjective"><span>객관식 학습시간 : </span>20분</li> -->
										<li class="objective"><span>주관식 학습시간 : </span>15분</li>
									</ul>
								</div>
								<div class="time">총 <span>135</span>분 학습</div>
							</td>
						</tr>

						<tr>
							<td>8월 18일 금요일</td>
							<td>
								<div class="graph">

								</div>
								<div class="time">총 <span>0</span>분 학습</div>
							</td>
						</tr>

						<tr>
							<td>8월 19일 토요일</td>
							<td>
								<div class="graph">
									<ul class="bar">
										<!-- <li class="video"><span>동영상 학습시간 : </span>20분</li> -->
										<!-- <li class="vocabulary"><span>어휘 학습시간 : </span>25분</li> -->
										<!-- <li class="subjective"><span>객관식 학습시간 : </span>10분</li> -->
										<li class="objective"><span>주관식 학습시간 : </span>20분</li>
										<!-- <li class="video"><span>동영상 학습시간 : </span>20분</li> -->
										<!-- <li class="vocabulary"><span>어휘 학습시간 : </span>20분</li> -->
										<!-- <li class="subjective"><span>객관식 학습시간 : </span>20분</li> -->
										<li class="objective"><span>주관식 학습시간 : </span>10분</li>
									</ul>

									<article class="graph_detail">
										<h1 class="date">2017.08.19 토요일</h1>
										<h2 class="level">중1 – 시제</h2>
										<h3 class="unit">Unit 17.6  수동태 + 조동사</h3><!-- 2017.08.21 : 수정 -->

										<ul>
											<li>어휘 : <b>74</b>/74 학습 완료</li>
											<li>객관식 : <b>50</b>/50 학습 완료</li>
											<li>주관식 : <b>38</b>/38 학습 완료</li>
										</ul>
									</article>
								</div>
								<div class="time">총 <span>145</span>분 학습</div>
							</td>
						</tr>
					</tbody>
				</table>

				<a href="#coaching" class="btn coaching icon">코칭멘트 보기</a>
				<div id="coaching" class="tooltip">
					<p>
						아주 잘 하고 있어요~
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
