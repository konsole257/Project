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

		// 학습 완료시
		// learningComplete('vocabulary', 'vocabulary'); // 현재학습, 다음학습
	});
	</script>
</head>

<body>
	<!-- header // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/header.php"; ?>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="learning vocabulary">
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
                    <h4>어휘</h4>
                    <small><b>73</b>/74</small>
                </div>

                <div class="whiteboard">
                    <p class="question">My dog was bitten by me.에서 was bitten의 뜻은?</p>

                    <div class="choice_area">
                        <form>
                            <fieldset>
                                <legend>정답 선택</legend>

                                <input type="radio" name="choice" id="choice1">
                                <label for="choice1"><span>물었다</span></label>

                                <input type="radio" name="choice" id="choice2">
                                <label for="choice2"><span>물려진다</span></label>

                                <input type="radio" name="choice" id="choice3">
                                <label for="choice3"><span>물려졌다</span></label>

								<input type="radio" name="choice" id="choice4">
                                <label for="choice4"><span>물려졌었다</span></label>

                                <div class="btn_area">
									<button type="button" class="btn box check" onclick="fn.checkAnimation2('pass');">정답확인</button><!-- 2017.07.27 : class변경 -->
									<a href="#" class="btn box next">다음 문제 이동</a><!-- 2017.07.27 : 추가 -->
									<button type="button" class="btn box tryagain">다시 풀기</button><!-- 2017.07.27 : 추가 -->
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
