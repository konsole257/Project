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
		// hint 생성시
		fn.hintWidth();

		// 정답 오답 애니메이션 : 2017.07.27 : 추가
		// fn.checkAnimation('pass'); // 정답 = pass, 오답 = fail

		// 학습 완료시
		// fn.learningComplete('vocabulary', 'vocabulary'); // 현재학습, 다음학습
	});
	</script>
</head>

<body>
	<!-- header // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/header.php"; ?>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="learning subjective">
		<div id="contents">
			<!-- sub title // -->
			<div class="sub_tit_area">
			    <h2 class="tit"><img src="/pjtCom/images/sub/tit_learning.png" alt="온라인 학습"></h2>
	        	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/path.php"; ?>
			</div>
			<!-- //sub title -->

            <section>
                <div class="subject_area">
                    <h3>Unit 17.1 수동태(기초)</h3>
                    <h4>객관식</h4>
                    <small><b>36</b>/50</small>
                </div>

				<!-- 2017.08.03 : 추가 // -->
				<div class="complete">
					<p class="txt icon">어휘 문제 풀이가 끝났어요!</p>

					<div class="btn_area">
						<a href="#" class="btn box next">어휘 풀기</a>
					</div>
				</div>
				<!-- // 2017.08.03 : 추가 -->

                <div class="whiteboard">
                    <p class="question">"나는 케이크를 잘랐어요 (케이크 한 개)"를 영어로 하면? </p>

                    <div class="choice_area">
                        <form>
                            <fieldset>
                                <legend>정답 선택</legend>

                                <input type="radio" name="choice" id="choice1">
                                <label for="choice1"><span>I cut cake</span></label>

                                <input type="radio" name="choice" id="choice2">
                                <label for="choice2"><span>I was cut cake</span></label>

                                <input type="radio" name="choice" id="choice3">
                                <label for="choice3"><span>I cut a cake</span></label>

                                <input type="radio" name="choice" id="choice4">
                                <label for="choice4"><span>I was cut a cake</span></label>

								<!-- 2017.08.03 : 추가 // -->
								<div class="claim_area">
									<input type="checkbox" id="claim">
									<label for="claim"><span>문제가 이상해요</span></label>

									<button type="button" class="btn box register">등록</button>
								</div>
								<!-- // 2017.08.03 : 추가 -->

								<div class="btn_area">
									<button type="button" class="btn box check" onclick="fn.checkAnimation('fail');">정답확인</button><!-- 2017.07.27 : class변경 -->
									<a href="#" class="btn box next">다음 문제 이동</a><!-- 2017.07.27 : 추가 -->
									<button type="button" class="btn box tryagain" onclick="fn.checkAnimation('remove');">다시 풀기</button><!-- 2017.07.27 : 추가 --><!-- 2017.08.03 : 수정 -->
								</div>
                            </fieldset>
                        </form>
                    </div>

                    <dl class="hint_area">
						<dt><span>I cut cakeI cut cakeI cut cakeI cut cake</span></dt>
                        <dd>영어는 숫자가 정확해야 함. 케이크는 한 개 두 개 셀 수 있으므로 한 개인지 여러 개인지 정확하게 표시해야 함. cake X a cake O. a cake = 하나의 케이크. cut (현재) = 자르다, cut (과거) = 잘랐다, cut (과거분사) = 잘려지는 or 잘려진</dd>

                        <dt><span>I cut cakeI cut cakeI cut cakeI cut cake</span></dt>
                        <dd>영어는 숫자가 정확해야 함. 케이크는 한 개 두 개 셀 수 있으므로 한 개인지 여러 개인지 정확하게 표시해야 함. cake X a cake O. a cake = 하나의 케이크. cut (현재) = 자르다, cut (과거) = 잘랐다, cut (과거분사) = 잘려지는 or 잘려진</dd>

                        <dt><span>I was cut cake</span></dt>
                        <dd>영어는 숫자가 정확해야 함. 캐이크는 한 개 두 개 셀 수 있으므로 한 개인지 여러 개인지 정확하게 표시해야 함. cake X a cake O. was = ~ 입니다 cake = 잘랐다 or 잘라지는 (cut - cut - cut) --> I was cut a cake = 나는 ~ 이었습니다 자릅니다 하나의 케이크 -> 이런 말은 없음. 자르다 cut의 과거는 was cut이 아닌 cut. 또는 cut이 cut의 과거분사인 잘라지는 이라면 was = ~ 이었습니다 cut = 잘라지는 --> was cut = 잘라졌습니다 --> I was cut a cake = 나는 잘라졌습니다 하나의 케이크 -> 이런 말도 없음. cut (현재) = 자르다, cut (과거) = 잘랐다, cut (과거분사) = 잘려지는 or 잘려진</dd>

						<!-- 이전 힌트 // -->
						<dt class="temp"><span>I was cut cake</span></dt>
                        <dd class="temp">영어는 숫자가 정확해야 함. 캐이크는 한 개 두 개 셀 수 있으므로 한 개인지 여러 개인지 정확하게 표시해야 함. cake X a cake O. was = ~ 입니다 cake = 잘랐다 or 잘라지는 (cut - cut - cut) --> I was cut a cake = 나는 ~ 이었습니다 자릅니다 하나의 케이크 -> 이런 말은 없음. 자르다 cut의 과거는 was cut이 아닌 cut. 또는 cut이 cut의 과거분사인 잘라지는 이라면 was = ~ 이었습니다 cut = 잘라지는 --> was cut = 잘라졌습니다 --> I was cut a cake = 나는 잘라졌습니다 하나의 케이크 -> 이런 말도 없음. cut (현재) = 자르다, cut (과거) = 잘랐다, cut (과거분사) = 잘려지는 or 잘려진</dd>
						<!-- // 이전 힌트 -->
                    </dl>

                </div>
            </section>



		</div>
	</main>
	<!-- //wrap -->

	<!-- footer // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php"; ?>
	<!-- //footer -->
</body>

</html>
