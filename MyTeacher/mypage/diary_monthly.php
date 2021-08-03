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
	<main id="wrap" class="mypage diary monthly">
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
						<div class="calendar type_year">
							<table>
								<caption>
									<div class="year">
										<input type="text" title="년도" value="" readonly>
										<div class="btn_area">
											<button type="button" class="btn next icon">다음 년도</button>
											<button type="button" class="btn prev icon">이전 년도</button>
										</div>
									</div>
								</caption>

								<colgroup>
									<col style="width:25%;">
									<col style="width:25%;">
									<col style="width:25%;">
									<col style="width:25%;">
								</colgroup>

								<tbody>
									<tr>
										<td><a href="#">1월</a></td>
										<td><a href="#">2월</a></td>
										<td><a href="#">3월</a></td>
										<td><a href="#">4월</a></td>
									</tr>
									<tr>
										<td><a href="#">5월</a></td>
										<td><a href="#">6월</a></td>
										<td><a href="#">7월</a></td>
										<td><a href="#">8월</a></td>
									</tr>
									<tr>
										<td><a href="#">9월</a></td>
										<td><a href="#">10월</a></td>
										<td><a href="#">11월</a></td>
										<td><a href="#">12월</a></td>
									</tr>
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
					<a href="/mypage/diary_weekly.php" class="btn box weekly">주간</a> <!-- 해당페이지에서 class="on"추가 -->
					<a href="/mypage/diary_monthly.php"  class="btn box monthly on">월간</a>
				</div>

				<table class="table">
					<caption>
						<span class="caption">날짜별 학습 내용</span>
						<!-- <span class="icon graph_txt video">동영상</span>
						<span class="icon graph_txt vocabulary">어휘</span>
						<span class="icon graph_txt subjective">객관식</span>
						<span class="icon graph_txt objective">주관식</span> -->
					</caption>

					<colgroup>
						<col style="width:14.28%;">
						<col style="width:14.28%;">
						<col style="width:14.28%;">
						<col style="width:14.28%;">
						<col style="width:14.28%;">
						<col style="width:14.28%;">
						<col style="width:14.28%;">
					</colgroup>

					<thead>
						<tr>
							<th>일</th>
							<th>월</th>
							<th>화</th>
							<th>수</th>
							<th>목</th>
							<th>금</th>
							<th>토</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td></td>
							<td></td>
							<td>
								<b>1</b>
								<!-- 2019.10 : 수정 // -->
								<ul>
									<li class="red">
										<div>
											<p class="name">현재_be동사1_형용사 주격보어_복수_긍정4</p>
											<p class="time">총 60분</p>
										</div>
									</li>
									<li class="orange">
										<div>
											<p class="name">현재_be동사1_형용사 주격보어_복수_긍정4</p>
											<p class="time">총 60분</p>
										</div>
									</li>
									<li class="green">
										<div>
											<p class="name">현재_be동사1_형용사 주격보어_복수_긍정4</p>
											<p class="time">총 60분</p>
										</div>
									</li>
									<li class="blue">
										<div>
											<p class="name">현재_be동사1_형용사 주격보어_복수_긍정4</p>
											<p class="time">총 60분</p>
										</div>
									</li>
									<li class="violet">
										<div>
											<p class="name">현재_be동사1_형용사 주격보어_복수_긍정4</p>
											<p class="time">총 60분</p>
										</div>
									</li>
								</ul>
								<!-- // 2019.10 : 수정 -->
							</td>
							<td>
								<b>2</b>
							</td>
							<td>
								<b>3</b>

							</td>
							<td>
								<b>4</b>
							</td>
							<td>
								<b>5</b>
							</td>
						</tr>

						<tr>
							<td>
								<b>6</b>
							</td>
							<td>
								<b>7</b>
							</td>
							<td>
								<b>8</b>
							</td>
							<td>
								<b>9</b>
							</td>
							<td>
								<b>10</b>
							</td>
							<td>
								<b>11</b>
							</td>
							<td>
								<b>12</b>
							</td>
						</tr>

						<tr>
							<td>
								<b>13</b>
							</td>
							<td>
								<b>14</b>
							</td>
							<td>
								<b>15</b>
							</td>
							<td>
								<b>16</b>
							</td>
							<td>
								<b>17</b>
							</td>
							<td>
								<b>18</b>
							</td>
							<td>
								<b>19</b>
							</td>
						</tr>

						<tr>
							<td>
								<b>20</b>
							</td>
							<td>
								<b>21</b>
							</td>
							<td>
								<b>22</b>
							</td>
							<td>
								<b>23</b>
							</td>
							<td>
								<b>24</b>
							</td>
							<td>
								<b>25</b>
							</td>
							<td>
								<b>26</b>
							</td>
						</tr>

						<tr>
							<td>
								<b>27</b>
							</td>
							<td>
								<b>28</b>
							</td>
							<td>
								<b>29</b>
							</td>
							<td>
								<b>30</b>
							</td>
							<td>
								<b>31</b>
							</td>
							<td>

							</td>
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
						학습량이 너무 적어요~<br>
						하루 한 개의 Unit은 완료합시다!
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
