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
						<li class="hour"><a href="/mypage/hour.php">총 학습시간</a></li><!-- 2019.09.16 : 수정 -->
						<li class="diary"><a href="/mypage/diary_weekly.php">학습 일지</a></li>
						<li class="cycle"><a href="/mypage/cycle_weekly.php">학습 시간대</a></li><!-- 2019.09.16 : 수정 -->
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
				<!-- <div class="btn_area">
					<a href="/mypage/speed_vocabulary.php" class="btn box vocabulary on">어휘</a>
					<a href="/mypage/speed_subjective.php"  class="btn box subjective">객관식</a>
					<a href="/mypage/speed_objective.php"  class="btn box objective">주관식</a>
				</div> -->

				<!-- 2017.08.21 : 수정 // -->
				<table class="table prev">
					<caption>Unit 17.1 – 수동태 기초</caption>

					<thead>
						<tr>
							<th colspan="2">최소</th>
							<th colspan="2">평균</th>
							<th colspan="2">최대</th>
						</tr>

						<tr>
							<th>내 학습 속도</th>
							<th>상위 10% 학생</th>
							<th>내 학습 속도</th>
							<th>상위 10% 학생</th>
							<th>내 학습 속도</th>
							<th>상위 10% 학생</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td class="my">
								<div class="graph"><span>11</span>초</div>
							</td>
							<td class="top">
								<div class="graph"><span>16</span>초</div>
							</td>
							<td class="my">
								<div class="graph"><span>15</span>초</div>
							</td>
							<td class="top">
								<div class="graph"><span>20</span>초</div>
							</td>
							<td class="my">
								<div class="graph"><span>19</span>초</div>
							</td>
							<td class="top">
								<div class="graph"><span>24</span>초</div>
							</td>
						</tr>
					</tbody>
				</table>

				<img src="/pjtCom/images/sub/bg_mypage_speed_graph_unit.png" alt="" class="graph_unit">

				<small class="my">내 학습 속도</small>
				<small class="top">상위 10% 학생</small>

				<table class="table now">
					<caption>Unit 17.2 – 수동태 기초</caption>

					<thead>
						<tr>
							<th colspan="2">최소</th>
							<th colspan="2">평균</th>
							<th colspan="2">최대</th>
						</tr>

						<tr>
							<th>내 학습 속도</th>
							<th>상위 10% 학생</th>
							<th>내 학습 속도</th>
							<th>상위 10% 학생</th>
							<th>내 학습 속도</th>
							<th>상위 10% 학생</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td class="my">
								<div class="graph"><span>10</span>초</div>
							</td>
							<td class="top">
								<div class="graph"><span>14</span>초</div>
							</td>
							<td class="my">
								<div class="graph"><span>14</span>초</div>
							</td>
							<td class="top">
								<div class="graph"><span>17</span>초</div>
							</td>
							<td class="my">
								<div class="graph"><span>18</span>초</div>
							</td>
							<td class="top">
								<div class="graph"><span>20</span>초</div>
							</td>
						</tr>
					</tbody>
				</table>

				<table class="table next">
					<caption>Unit 17.1 – 수동태 기초</caption>

					<thead>
						<tr>
							<th colspan="2">최소</th>
							<th colspan="2">평균</th>
							<th colspan="2">최대</th>
						</tr>

						<tr>
							<th>내 학습 속도</th>
							<th>상위 10% 학생</th>
							<th>내 학습 속도</th>
							<th>상위 10% 학생</th>
							<th>내 학습 속도</th>
							<th>상위 10% 학생</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td class="my">
								<div class="graph"><span>11</span>초</div>
							</td>
							<td class="top">
								<div class="graph"><span>16</span>초</div>
							</td>
							<td class="my">
								<div class="graph"><span>15</span>초</div>
							</td>
							<td class="top">
								<div class="graph"><span>20</span>초</div>
							</td>
							<td class="my">
								<div class="graph"><span>19</span>초</div>
							</td>
							<td class="top">
								<div class="graph"><span>24</span>초</div>
							</td>
						</tr>
					</tbody>
				</table>
				<!-- // 2017.08.21 : 수정 -->

				<a href="#coaching" class="btn coaching icon">코칭멘트 보기</a>
				<div id="coaching" class="tooltip">
					<p>
						문제를 빨리 푸는 대신 정답률이 낮네요.<br>
						문제를 차근차근히 풀어보세요.
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
