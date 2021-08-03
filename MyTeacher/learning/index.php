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
	<main id="wrap" class="learning main">
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
                </div>

                <ul class="learning_list">
                    <li class="video inactive"> <!-- 해당 학습이 없을때 class="inactive" -->
                        <span class="icon">동영상</span>
						<!-- <small>(<b>1</b>/1)</small>--> <!-- 해당 학습이 있을때-->
                        <small>동영상 학습이 없습니다.</small> <!-- 해당 학습이 없을때-->
                    </li>
                    <li class="vocabulary">
                        <span class="icon">어휘</span>
                        <small>(<b>74</b>/74)</small>
						<!-- <small>어휘 학습이 없습니다.</small> -->
                    </li>
                    <li class="subjective ing"> <!-- 현재 학습진행중인곳에 class="now" -->
                        <span class="icon">객관식</span>
                        <small>(<b>5</b>/50)</small>
						<!-- <small>객관식 학습이 없습니다.</small> -->
                    </li>
                    <li class="objective">
                        <span class="icon">주관식</span>
                        <small>(<b>0</b>/38)</small>
						<!-- <small>주관식 학습이 없습니다.</small> -->
                    </li>
                </ul>

                <div class="btn_area">
                    <a href="#" class="btn box icon beginning">처음부터 학습하기</a>
                    <a href="#" class="btn box icon continue">이어서 학습하기</a>
                </div>

                <dl class="tooltip">
                    <dt class="icon">수동태(기초)</dt>
					<!-- 2017.08.21 : 수정 // -->
                    <dd>
						누군가가 직접 하는 것을 어려운 말로 능동이라고 하고, 직접 하는 것이 아니라 누군가에 의해서 되어지는 것을 어려운 말로 수동이라고 합니다.
						즉, ‘나는 너를 밀어’는 내가 미는 것이기에 능동이고 ‘너는 나에 의해서 밀려져’는 네가 미는 것이 아니라 나에 의해서 밀려지기 때문에 수동이라고 합니다.
						수동태의 태는 형태라는 말일뿐이에요.<br><br>

						우리말에는 ‘나는 너를 밀고 너는 나한테 밀려’등 ‘밀다’도 있고 ‘밀리다’도 있지만 영어는 ‘밀다’ 밖에 없어요. 그래서 ‘~되어 집니다’라는 말이 필요하고 이것을 어려운 말로 수동태라고 합니다~
                    </dd>
					<!-- // 2017.08.21 : 수정 -->
                </dl>
            </section>

		</div>
	</main>
	<!-- //wrap -->

	<!-- footer // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php"; ?>
	<!-- //footer -->
</body>

</html>
