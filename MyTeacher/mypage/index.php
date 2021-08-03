<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- config // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/config.php"; ?>
	<!-- //config -->

	<meta name="description" content="@@description" />

	<link rel="stylesheet" href="/pjtCom/css/sub.css">

	<script>
	$(window).load(function(){
		fn.progressLen();
	});
	</script>
</head>

<body>
	<!-- header // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/header.php"; ?>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="mypage condition">
		<div id="contents">
			<!-- sub title // -->
			<div class="sub_tit_area">
			    <h2 class="tit"><img src="/pjtCom/images/sub/tit_mypage.png" alt="마이페이지"></h2>
				<div class="path">
				    <a href="/">HOME</a>
				    <a href="/mypage/">마이페이지</a>
				    <a href="/mypage/">나의학습현황</a>
				</div>
			</div>
			<!-- //sub title -->

			<div class="tabmenu_area">
				<div class="tabmenu_wrap">
					<!-- 2017.08.21 : 수정 // -->
		            <ul class="tabmenu">
						<li class="condition"><a href="/mypage/" class="on">나의 학습 현황</a></li>
						<li class="hour"><a href="/mypage/hour.php">총 학습시간</a></li><!-- 2019.09.16 : 수정 -->
						<li class="diary"><a href="/mypage/diary_weekly.php">학습 일지</a></li>
						<li class="cycle"><a href="/mypage/cycle_weekly.php">학습 시간대</a></li><!-- 2019.09.16 : 수정 -->
						<li class="speed"><a href="/mypage/speed_vocabulary.php">문제풀이 속도</a></li>
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

			<section class="whiteboard">
				<div class="tit_area">
					<h1 class="tit"><img src="/pjtCom/images/sub/tit_mypage_detail.png" alt="세부 학습 현황"></h1>
					<a href="#popup_curriculum" class="btn txt curriculum icon">커리큘럼</a>
				</div>

				<table class="table">
					<caption>수동태</caption>

					<!-- 2019.09.16 : 수정 // -->
					<colgroup>
						<col style="width:248px;">
						<col style="width:100px;">
						<col style="width:118px;">
						<col style="width:93px;">
						<col style="width:225px;">
						<col style="width:128px;">
					</colgroup>
					<!-- // 2019.09.16 : 수정 -->

					<thead>
						<!-- 2019.09.16 : 수정 // -->
						<tr>
							<th scope="col">Unit</th>
							<th scope="col">평가</th>
							<th scope="col">총 문제 수</th>
							<th scope="col">정답(정답률)</th>
							<th scope="col">학습 기간</th>
							<th scope="col">학습</th>
						</tr>
						<!-- // 2019.09.16 : 수정 -->
					</thead>

					<tbody>
						<!-- 반복영역 // -->
						<tr>
							<td><a href="#popup_detail">Unit 17.1 - 수동태 기초</a></td>
							<td class="level"><span class="master icon">master</span></td>
							<!-- 2019.09.16 : 추가 // -->
							<td>50</td>
							<td>40(80%)</td>
							<!-- // 2019.09.16 : 추가 -->
							<td>2017.08.14 ~ 2017.08.14</td>
							<td><a href="#" class="btn box retry">재학습</a></td><!-- 2019.09.16 : 추가 -->
						</tr>
						<!-- // 반복영역 -->

						<tr>
							<td><a href="#popup_detail">Unit 17.2 - 수동태 기초</a></td>
							<td class="level"><span class="excellent icon">excellent</span></td>
							<td>50</td>
							<td>40(80%)</td>
							<td>2017.08.15 ~ 2017.08.15</td>
							<td><a href="#" class="btn box retry">재학습</a></td>
						</tr>
						<tr>
							<td><a href="#popup_detail">Unit 17.3 - 수동태 기초</a></td>
							<td class="level"><span class="notbad icon">not bad</span></td>
							<td>50</td>
							<td>40(80%)</td>
							<td>2017.08.16 ~ 2017.08.17</td>
							<td><a href="#" class="btn box retry">재학습</a></td>
						</tr>
						<tr class="ing"> <!-- 현재 진행중인 학습 class="ing" -->
							<td><a href="#popup_detail">Unit 17.4 - 수동태 + 조동사</a></td>
							<td class="level"><span>학습중..</span></td>
							<td></td>
							<td></td>
							<td>2017.08.17 ~ 2017.08.17</td>
							<td><a href="#" class="btn box retry">재학습</a></td>
						</tr>
						<tr>
							<td><a href="#popup_detail">Unit 17.5 - 수동태 + 조동사</a></td>
							<td class="level"><span class="tryagain icon">try again</span></td>
							<td>50</td>
							<td>40(80%)</td>
							<td>2017.08.19 ~ 2017.08.19</td>
							<td><a href="#" class="btn box retry">재학습</a></td>
						</tr>
						<tr>
							<td><a href="#popup_detail">Unit 17.6 - 수동태 + 조동사</a></td>
							<td class="level"></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</section>
		</div>
	</main>
	<!-- //wrap -->

	<!-- 상세보기 팝업 // -->
	<div class="modal" id="popup_detail">
		<div class="inner">
			<article class="popup_detail">
				<div class="tit_area">
					<a href="#close" class="btn icon close">닫기</a>
				</div>
				<div class="contents">
					<!-- 2017.08.11 : 삭제 // -->
					<!-- <fieldset class="category_area">
						<legend>Unit 이동하기</legend>

						<form>
							<label class="select category1">
								카테고리1 선택
								<select>
									<option>중1</option>
									<option>중2</option>
									<option>중3</option>
								</select>
							</label>

							<label class="select category2">
								카테고리2 선택
								<select>
									<option>시제1</option>
									<option>시제2</option>
									<option>시제3</option>
								</select>
							</label>

							<label class="select category3">
								카테고리3 선택
								<select>
									<option>수동태1</option>
									<option>수동태2</option>
									<option>수동태3</option>
								</select>
							</label>

							<label class="select category4">
								카테고리4 선택
								<select>
									<option>Unit 17.1</option>
									<option>Unit 17.2</option>
									<option>Unit 17.3</option>
								</select>
							</label>

							<button type="button" class="btn box move">이동하기</button>
						</form>
					</fieldset> -->
					<!-- // 2017.08.11 : 삭제 -->

					<!-- 2017.08.11 : 추가 // -->
					<h1 class="tit">Unit 17.1 - 수동태의 기초</h1>
					<!-- 2017.08.11 : 추가 // -->

					<p class="output">학습결과 : <samp class="master icon">master</samp></p> <!-- master 일때 -->
					<!-- <p class="output">학습결과 : <samp class="excellent icon">excellent</samp></p> --><!-- excellent 일때 -->
					<!-- <p class="output">학습결과 : <samp class="notbad icon">not bad</samp></p> --> <!-- not bad 일때 -->
					<!-- <p class="output">학습결과 : <samp class="tryagain icon">try again</samp></p> --> <!-- try again 일때 -->

					<table class="table">
						<caption></caption>
						<colgroup>
							<col style="width:154px;">
							<col style="width:99px;">
							<col style="width:87px;">
							<col style="width:93px;">
							<col style="width:94px;">
							<col style="width:94px;">
							<col style="width:94px;">
							<col style="width:89px;">
						</colgroup>

						<thead>
							<tr>
								<th rowspan="3">세부 학습 목표</th>
							</tr>

							<tr>
								<th colspan="7">평가</th>
							</tr>

							<tr>
								<th colspan="3">총 문제 수</th>
								<th>
									정답<br>
									(힌트 X)
								</th>
								<th>
									정답<br>
									(힌트 1번)
								</th>
								<th>
									정답<br>
									(힌트 2번 이상)
								</th>
								<th>
									정답률<br>
									(힌트 X)
								</th>
							</tr>
						</thead>

						<tbody>
							<!-- 반복 영역 // -->
							<tr>
								<td>be 동사 1</td>
								<!-- 2017.08.11 : 수정 // -->
								<td>
									<span>어휘</span>
									<span>어휘</span>
									<span>어휘</span>
								</td>
								<td>
									<span>1</span>
									<span>2</span>
									<span>3</span>
								</td>
								<!-- // 2017.08.11 : 수정 -->
								<td>5</td><!-- 2017.08.21 : 수정 -->
								<td>2</td>
								<td>2</td>
								<td>1</td>
								<td><b>40%</b></td><!-- 2017.08.21 : 수정 -->
							</tr>
							<!-- // 반복 영역 -->

							<tr>
								<td>be 동사 1</td>
								<td>
									<span>어휘</span>
								</td>
								<td>
									<span>1</span>
								</td>
								<td>5</td>
								<td>2</td>
								<td>2</td>
								<td>1</td>
								<td><b>40%</b></td>
							</tr>
						</tbody>

						<tfoot>
							<tr>
								<th>Total</th>
								<td colspan="3">
									총 129 문제<br>
									<span>어휘 63 문제 / 객관식 40 문제 / 주관식 26 문제</span>
								</td>
								<td>59 개</td>
								<td>38 개</td><!-- 2017.08.21 : 수정 -->
								<td>32 개</td><!-- 2017.08.21 : 수정 -->
								<td>46%</td>
							</tr>
						</tfoot>
					</table>
			</article>
		</div>
	</div>
	<!-- // 상세보기 팝업 -->

	<!-- 커리큘럼 팝업 // -->
	<!-- 2017.08.21 : 수정 // -->
	<div class="modal" id="popup_curriculum">
		<div class="inner">
			<article class="popup_curriculum">
				<div class="tit_area">
					<h1 class="tit">중등 1</h1>
					<a href="#close" class="btn icon close">닫기</a>
				</div>
				<div class="contents">
					<div class="lesson_area">
						<div class="tabmenu">
							<ul>
								<li class="lesson"><a href="#" class="on">시제</a></li>
								<li class="lesson"><a href="#">조동사</a></li>
								<li class="lesson"><a href="#">to 부정사</a></li>
								<li class="lesson"><a href="#">동명사</a></li>
								<li class="lesson"><a href="#">대명사</a></li>
								<li class="lesson"><a href="#">관사</a></li>
								<li class="lesson"><a href="#">형용사</a></li>
								<li class="lesson"><a href="#">부사</a></li>
								<li class="lesson"><a href="#">관계대명사</a></li>
								<li class="lesson"><a href="#">가정법</a></li>
							</ul>
						</div>

						<div class="btn_area">
							<button type="button" class="btn prev icon">이전</button>
							<button type="button" class="btn next icon">다음</button>
						</div>
					</div>

					<ul class="list_area">
						<li><a href="#" class="complete">be동사1_현재</a></li> <!-- 완료 학습 class="complete" -->
						<li><a href="#" class="now">be동사2_현재</a></li> <!-- 진행중 학습 class="now" -->
						<li><a href="#">일반동사_현재</a></li>
						<li><a href="#">현재진행형</a></li>
						<li><a href="#">가주어 it_현재</a></li>
						<li><a href="#">There is, There are</a></li>
						<li><a href="#">의문사_현재</a></li>
						<li><a href="#">빈도부사_현재</a></li>
						<li><a href="#">be동사1_과거</a></li>
						<li><a href="#">Be동사2_과거</a></li>
						<li><a href="#">일반동사_과거</a></li>
						<li><a href="#">과거진행형</a></li>
						<li><a href="#">가주어 it_과거</a></li>
						<li><a href="#">There was, There were</a></li>
						<li><a href="#">의문사_과거</a></li>
						<li><a href="#">빈도부사_과거</a></li>
						<li><a href="#">수동태</a></li>
						<li><a href="#">현재완료</a></li>
					</ul>
				</div>
			</article>
		</div>
	</div>
	<!-- // 2017.08.21 : 수정 -->
	<!-- // 커리큘럼 팝업 -->

	<!-- footer // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php"; ?>
	<!-- //footer -->
</body>

</html>
