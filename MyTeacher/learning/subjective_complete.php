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
		// 학습 완료시
		var learningComplete = function(next){
			var completeContent = '<div class="complete">';
				completeContent += '<p class="txt icon">객관식 문제 풀이가 끝났어요!</p>';
				completeContent += '<div class="btn_area">';
				switch ( next ) {
					case 'vocabulary' :
						completeContent += '<a href="#" class="btn box next">어휘 풀기</a>';
					break;

					case 'subjective' :
						completeContent += '<a href="#" class="btn box next">객관식 풀기</a>';
					break;

					case 'objective' :
						completeContent += '<a href="#" class="btn box next">주관식 풀기</a>';
					break;

					case 'result' :
						completeContent += '<a href="#" class="btn box next">결과 확인</a>';
					break;
				}
			completeContent += '</div>';
			completeContent += '</div>';

			$('.whiteboard').html(completeContent);
		}
		learningComplete('objective');
	});
	</script>
</head>

<body>
	<!-- header // -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/header.php"; ?>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="learning subjective"><!-- 동영상 : video, 어휘 : vocabulary, 객관식 : subjective, 주관식 : objective -->
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
                    <small><b>1</b>/1</small>
                </div>

                <div class="whiteboard">

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
