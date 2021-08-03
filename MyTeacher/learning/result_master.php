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
		// 힌트 마우스오버
		var sheet = $('.answer_sheet');
		$(document).on('mouseenter', '.hint_area dt:not(.temp)', function(e){
			$(this).next('dd').trigger('mouseenter');
		});
		$(document).on('mouseenter', '.hint_area dd:not(.temp)', function(e){
			var hintWord = $(this).prev('dt').text().split(' ');
			var hintWordLen = hintWord.length;
			var hintIdx = $(this).index()-$(this).prevAll('dd').length;
			var hintColor = $(this).css('border-top-color');

			sheet.find('.word').each(function(){
				if ($(this).find('span').text() === hintWord[0]) {
					$(this).addClass('hint'+hintIdx+'_word1');

					for (var i=1; i<=hintWordLen; i++) {
						if (sheet.find('.hint'+hintIdx+'_word'+i).next('.word').find('span').text() === hintWord[i]) {
							sheet.find('.hint'+hintIdx+'_word'+i).next('.word').addClass('hint'+hintIdx+'_word'+(i+1));
							$('.hint'+hintIdx+'_word'+i).addClass('highlight');
							$('.hint'+hintIdx+'_word'+(i+1)).addClass('highlight');
						}
					}
				}
			});
		});
		$(document).on('mouseleave', '.hint_area dd:not(.temp)', function(){
			sheet.find('.word').removeClass('highlight');
		});

		// hint 생성시
		fn.hintWidth();

		// 정답 오답 애니메이션 : 2017.07.27 : 추가
		// fn.checkAnimation('pass'); // 정답 = pass, 오답 = fail, 10번이상 틀렸을때 = exceed, 다시풀기/10번이상 틀린 후 정답확인시 = remove

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
	<main id="wrap" class="learning objective">
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
                    <h4>주관식</h4>
                    <small><b>5</b>/38</small>
                </div>

				<!-- 2017.08.03 : 추가 // -->
				<div class="complete">
					<p class="txt icon">어휘 문제 풀이가 끝났어요!</p>

					<div class="btn_area">
						<a href="#" class="btn box next">어휘 풀기</a>
					</div>
				</div>
				<!-- // 2017.08.03 : 추가 -->

				<!-- 2017.08.08 : 추가 // -->
				<div class="result"><!-- try again : class="result tryagain", not bad : class="result notbad", excellent일때 : class="result excellent", master일때 : class="result master" -->
					<div class="output_area">
						<p class="unit">Unit 17.1 – 수동태 기초</p>
					</div>

					<div class="txt_area">
						<!-- try again 일때 // -->
						<!-- <p class="txt">
							<b class="bold">Unit 1.2 - be 동사 1(am/are/is)</b> 동영상 시청 후<br>
							틀린문제를 다시 풀어볼까요?
						</p> -->
						<!-- // try again 일때 -->

						<!-- not bad, excellent일때 // -->
						<p class="txt">
							<b class="bold">162문제 중 3문제를 틀렸어요</b><br>
							틀린 문제를 다시 풀어볼까요?
						</p>
						<!-- // not bad, excellent일때 -->

						<!-- master일때 // -->
						<!-- <p class="txt">
							<b class="bold">162 문제 모두 맞췄어요!</b>
						</p> -->
						<!-- // master일때 -->

						<div>
							<a href="#" class="btn box tryagain">재도전</a> <!-- try again, not bad, excellent일때 -->
							<!-- <a href="#" class="btn box next">다음 Unit으로 이동</a> --> <!-- master일때 -->
						</div>

						<a href="#" class="btn result_view">Unit 학습결과 보기</a>
					</div>
				</div>
				<!-- // 2017.08.08 : 추가 -->

				<div class="whiteboard">
					<p class="question">"나는 당신에 의해서 밀려집니다"를 영어로 만드세요</p>

					<form>
						<fieldset>
							<legend>정답 선택</legend>

							<div class="answer_area">
								<div class="answer_sheet">
									<ul>
										<!-- <li class="word"><span>I</span></li> -->
									</ul>
								</div>
								<ul class="word_list"><!-- .answer_sheet > ul > .word 에 span이 복사됩니다. -->
									<li><span>I</span></li>
									<li><span>you</span></li>
									<li><span>your</span></li>
									<li><span>am</span></li>
									<li><span>are</span></li>
									<li><span>is</span></li>
									<li><span>was</span></li>
									<li><span>were</span></li>
									<li><span>push</span></li>
									<li><span>pushs</span></li>
									<li><span>pushes</span></li>
									<li><span>pushed</span></li>
									<li><span>by</span></li>
								</ul>
							</div>

							<!-- 2017.08.03 : 추가 // -->
							<div class="claim_area">
								<input type="checkbox" id="claim">
								<label for="claim"><span>문제가 이상해요</span></label>

								<button type="button" class="btn box register">등록</button>
							</div>
							<!-- // 2017.08.03 : 추가 -->

							<div class="btn_area">
								<button type="button" class="btn box check" onclick="fn.unitResult('master');">정답확인</button><!-- 2017.07.27 : class변경 -->
								<button type="button" class="btn box answer" onclick="fn.checkAnimation('remove');">정답확인</button> <!-- 힌트 10회사용시 사용 : 2017.08.03 : 추가 -->
								<a href="#" class="btn box next">다음 문제 이동</a><!-- 2017.07.27 : 추가 -->
								<button type="button" class="btn box tryagain" onclick="fn.checkAnimation('remove');">다시 풀기</button><!-- 2017.07.27 : 추가 --><!-- 2017.08.03 : 수정 -->
							</div>
						</fieldset>
					</form>

					<!-- 힌트 // -->
					<dl class="hint_area">
                        <dt><span>am pushed am pushed am pushed</span></dt>
                        <dd>am pushed의 합쳐진 뜻은 밀려집니다가 맞지만 am은 문장의 주인이 I (나는) 일 때 사용 am pushed의 합쳐진 뜻은 밀려집니다가 맞지만 am은 문장의 주인이 I (나는) 일 때 사용 am pushed의 합쳐진 뜻은 밀려집니다가 맞지만 am은 문장의 주인이 I (나는) 일 때 사용 am pushed의 합쳐진 뜻은 밀려집니다가 맞지만 am은 문장의 주인이 I (나는) 일 때 사용 am pushed의 합쳐진 뜻은 밀려집니다가 맞지만 am은 문장의 주인이 I (나는) 일 때 사용</dd>

                        <dt><span>is you</span></dt>
                        <dd>is pushed의 합쳐진 뜻은 밀려집니다가 맞지만 is은 문장의 주인이 나도 아니고 너도 아니고 다른 사람인데 한 명 또는 나도 아니고 너도 아니고 다른 것인데 하나일 때 사용</dd>

						<dt><span>am pushed</span></dt>
                        <dd>am pushed의 합쳐진 뜻은 밀려집니다가 맞지만 am은 문장의 주인이 I (나는) 일 때 사용</dd>

                        <dt><span>is you</span></dt>
                        <dd>is pushed의 합쳐진 뜻은 밀려집니다가 맞지만 is은 문장의 주인이 나도 아니고 너도 아니고 다른 사람인데 한 명 또는 나도 아니고 너도 아니고 다른 것인데 하나일 때 사용</dd>

						<dt><span>am pushed</span></dt>
                        <dd>am pushed의 합쳐진 뜻은 밀려집니다가 맞지만 am은 문장의 주인이 I (나는) 일 때 사용</dd>

						<dt><span>is you</span></dt>
                        <dd>is pushed의 합쳐진 뜻은 밀려집니다가 맞지만 is은 문장의 주인이 나도 아니고 너도 아니고 다른 사람인데 한 명 또는 나도 아니고 너도 아니고 다른 것인데 하나일 때 사용</dd>

						<dt><span>is you</span></dt>
                        <dd>is pushed의 합쳐진 뜻은 밀려집니다가 맞지만 is은 문장의 주인이 나도 아니고 너도 아니고 다른 사람인데 한 명 또는 나도 아니고 너도 아니고 다른 것인데 하나일 때 사용</dd>

						<!-- 이전 힌트 // -->
						<dt class="temp"><span>am pushed</span></dt>
                        <dd class="temp">am pushed의 합쳐진 뜻은 밀려집니다가 맞지만 am은 문장의 주인이 I (나는) 일 때 사용</dd>
						<!-- // 이전 힌트 -->
                    </dl>
					<!-- // 힌트 -->


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
