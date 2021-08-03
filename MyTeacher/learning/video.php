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
		// 비디오 재생
		$('.video_controls .play').click(function(){
			if (video.paused) {
				video.play();
				$('.video_controls').hide();
				$('#video').prop('controls', true);
			}
		});

		var videoCurrentTime = 0,
			videoSeekingTime = 0,
			videoPlayTime = 0,
			videoWatchTime = 0, // 비디오 총 재생 시간
			videoWatchTimeTmp = 0;
		$('#video').on({
			'timeupdate' : function(){
				videoCurrentTime = video.currentTime;

				if (!video.paused) {
					videoPlayTime = videoCurrentTime - videoSeekingTime;
					videoWatchTime = videoWatchTimeTmp + videoPlayTime;
				}
			},

			'seeking' : function(e){
				e.preventDefault();
				videoSeekingTime = video.currentTime;
				videoWatchTimeTmp = videoWatchTime;
			},

			'ended' : function(){
				videoWatchTimeTmp = videoWatchTime;
			}
		});
	});
	</script>
</head>

<body>
	<!-- header // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/header.php"; ?>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="learning video">
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
                    <h4>동영상</h4>
                    <small><b>1</b>/1</small>
                </div>

                <div class="whiteboard">
					<div class="video_controls">
						<a href="#" class="btn play icon">재생</a>
					</div>
					<video id="video">
						<source src="/pjtCom/video/video.mp4" type="video/mp4">
						브라우저가 비디오 태그를 지원하지 않습니다.<br>
						다른브라우저를 이용해 주세요.
                    </video>

					<!-- 2017.08.03 : 추가 // -->
					<div class="bottom">
						<fieldset class="choice_area">
							<legend class="txt">동영상 강의 내용을 이해했나요?</legend>

							<form>
								<input type="radio" name="choice" id="choice1">
								<label for="choice1" class="icon"><span>이해함</span></label>

								<input type="radio" name="choice" id="choice2">
								<label for="choice2" class="icon"><span>보통</span></label>

								<input type="radio" name="choice" id="choice3">
								<label for="choice3" class="icon"><span>이해하지 못함</span></label>

								<button type="button" class="btn box register">등록</button>
							</form>
						</fieldset>

						<div class="btn_area">
							<button type="button" class="btn box next">다음</button><!-- 2017.08.21 : 수정 -->
	                    </div>
						<!-- // 2017.08.03 : 추가 -->
					</div>
                </div>

				<!-- 학습 QnA // -->
                <section class="qna_area">
					<div class="tit_area">
	                    <h4 class="tit"><img src="/pjtCom/images/sub/tit_learning_video_qna.png" alt="학습 QnA"></h4>
						<a href="#write_area" class="btn box question icon">질문 등록하기</a>
					</div>

					<!-- 2017.08.03 : 추가 // -->
					<div class="write_area" id="write_area">
						<fieldset>
							<legend>질문 입력</legend>

							<form>
								<textarea class="write" placeholder="질문을 입력해주세요." title="500자 이내로 작성해 주세요."></textarea>
								<div class="btn_area">
									<button type="submit" class="btn box register">등록</button>
									<small class="letter_limit">0/500</small>
								</div>
							</form>
						</fieldset>
					</div>
					<!-- // 2017.08.03 : 추가 -->

					<ul class="question_area">
						<!-- 답변이 있는 경우 // -->
						<li>
							<a href="#" class="summary_area">
								<p class="question">
									<span>동사의 과거와 과거분사가 같을때 문장속에 있는 것이 과거인지 과거분사인지 어떻게 아나요?</span>
									<small class="reply">답변완료</small> <!-- 답변 완료시 -->
								</p>
								<p class="date">2017.06.25</p>
								<p class="user_id">shw26**</p>
							</a>
							<div class="view_area">
								<dl class="view">
									<dt class="q">질문</dt>
									<dd>동사의 과거와 과거분사가 같을때 문장속에 있는 것이 과거인지 과거분사인지 어떻게 아나요?</dd>
									<dt class="a">답변</dt> <!-- 답변 완료시 -->
									<dd>
									매우 좋은 질문입니다. 많은 분들이 이 부분이 늘 헷갈려서 수동태를 어렵게 생각하곤 하는데요. 상식적으로 생각하면 됩니다.<br><br>

									우선 동사의 뜻을 잘 이해해야 합니다.<br>
									현재는 ~ 한다 과거는 ~ 했다 과거분사는 ~가 되어지는 (되어집니다.가 아닙니다)<br><br>

									make의 예를 들어 보죠. <br>
									make는 만들다, 과거 made는 만들었다, 과거분사 made는 만들어진 이라는 뜻입니다.<br><br>

									문장을 볼까요?<br>
									I make a toy = 나는 만든다 하나의 장난감 = 나는 장난감을 만들어요.<br>
									이번에는 I made a toy를 볼까요? I made a toy의 made는 만들었다 일까요 아니면 만들어진 일까요? <br>
									made가 만약 과거분사인 만들어진이라면 I made a toy는 나는 만들어진 하나의 장난감 이라는 희한한 뜻이 되고 (참고로 ~입니다.가 없으니 문장이 아닌 완성되지 않은 말 입니다),<br>
									과거인 만들었다라면 I made a toy는 나는 만들었다 하나의 장난감이 됩니다.<br>
									둘 중 뭐가 말이 되나요? 당연히 나는 장난감을 만들었다가 말이 되겠죠^^<br>

									그럼 과거분사로 쓰여질때를 살펴봅시다. <br>
									A toy is made를 볼까요? is의 뜻은 뭐다? ~ 입니다 (물론 어디어디 있습니다.의 뜻도 있습니다만) <br>
									그럼 made가 동사의 과거라면 무슨 뜻이 될까요? A toy is made = 하나의 장난감이 ~ 입니다 만듭니다. 세상에 이런 말은 없죠. <br>
									그럼 과거분사라면 무슨 뜻이 될까요? A toy is made  = 하나의 장난감이 ~ 입니다 만들어진. ~ 입니다 만들어진을 합치면 우리 말로 만들어집니다.가 됩니다. (정확히는 만들어짐을 당합니다.라는 뜻이구요). <br>
									무턱태고 be동사 + 과거분사라고 외우는 어려운 방법도 있고 지금처럼 이미 알고 있는 단어의 뜻을 활용해서 쉽게 이해하는 방법이 있다는 점 기억하세요~
									</dd> <!-- 답변 완료시 -->
								</dl>
								<div class="btn_area">
									<a href="#" class="btn box modify">수정</a>
									<a href="#" class="btn box del">삭제</a>
								</div>
							</div>
						</li>
						<!-- // 답변이 있는 경우 -->

						<!-- 답변이 없는 경우 // -->
						<li>
							<a href="#" class="summary_area">
								<p class="question">
									<span>is/are p.p 는 현재에 쓰이는 수동태고 was/were p.p는 과거에 쓰이는 수동태인가요?</span>
								</p>
								<!-- 2017.08.21 : 수정 // -->
								<p class="date">2017.06.04</p>
								<p class="user_id">ever**</p>
								<!-- // 2017.08.21 : 수정 -->
							</a>
							<div class="view_area">
								<dl class="view">
									<dt class="q">질문</dt>
									<dd>is/are p.p 는 현재에 쓰이는 수동태고 was/were p.p는 과거에 쓰이는 수동태인가요?</dd>
								</dl>
								<div class="btn_area">
									<a href="#" class="btn box modify">수정</a>
									<a href="#" class="btn box del">삭제</a>
								</div>
							</div>
						</li>
						<!-- // 답변이 없는 경우 -->

						<!-- 비밀글 // -->
						<!-- 2017.08.21 : 삭제 // -->
						<!-- <li class="secret">
							<a href="#" class="summary_area">
								<p class="question">
									<span class="icon">비밀글 입니다.</span>
									<small class="reply">답변완료</small>
								</p>
								<p class="date">2017.06.25</p>
								<p class="user_id">shw26**</p>
							</a>
							<div class="view_area">
								<dl class="view">
									<dt class="q">질문</dt>
									<dd>is/are p.p 는 현재에 쓰이는 수동태고 was/were p.p는 과거에 쓰이는 수동태인가요?</dd>
									<dt class="a">답변</dt>
									<dd>네 그렇습니다.</dd>
								</dl>
								<div class="btn_area">
									<a href="#" class="btn box modify">수정</a>
									<a href="#" class="btn box del">삭제</a>
								</div>
							</div>
						</li> -->
						<!-- // 2017.08.21 : 삭제 -->
						<!-- // 비밀글 -->
					</ul>

					<!-- 페이징 // -->
					<div class="paging">
						<a href="#" class="btn first icon">처음으로</a>
						<a href="#" class="btn prev icon">이전</a>
						<span class="num">
							<a href="#" class="on">1</a>
							<a href="#">2</a>
							<a href="#">3</a>
							<a href="#">4</a>
							<a href="#">5</a>
						</span>
						<a href="#" class="btn next icon">다음</a>
						<a href="#" class="btn last icon">끝으로</a>
					</div>
					<!-- // 페이징 -->
                </section>
				<!-- // 학습 QnA -->

				<!-- 질문하기 : 2017.08.03 : 삭제 // -->
				<!-- <div class="modal" id="popup_write">
					<article class="inner popup_write">
						<div class="tit_area">
							<h4 class="tit">질문하기</h4>
							<a href="#close" class="btn icon close">닫기</a>
						</div>
						<div class="contents">
							<form>
								<fieldset>
									<legend>질문 입력</legend>

									<textarea class="write" placeholder="질문을 입력해주세요."></textarea>

									<div class="chk_area">
										<input type="checkbox" id="chk_secret">
										<label for="chk_secret"><span>비밀글로 질문하기</span></label>

										<small class="letter_limit">0/500</small>
									</div>

									<div class="btn_area">
										<button type="submit" class="btn box submit">등록</button>
										<a href="#close" class="btn box cancel">취소</a>
									</div>
								</fieldset>
							</form>
						</div>
					</article>
				</div> -->
				<!-- // 질문하기 -->

            </section>



		</div>
	</main>
	<!-- //wrap -->

	<!-- footer // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php"; ?>
	<!-- //footer -->
</body>

</html>
