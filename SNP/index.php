<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "";
	$path2Tit = "";
	$path1Href = "";
	$path2Href = "";
	$pageClass = "";
?>

<head>
	<!-- config// -->
	<?php include $_SERVER["DOCUMENT_ROOT"]."/inCom/config.php" ?>
	<!-- //config -->

	<script src="/pjtCom/pc/js/main/<?= $shopName ?>.js"></script>
	<link rel="stylesheet" type="text/css" href="/pjtCom/pc/css/main/<?= $shopName ?>.css" />
</head>

<body>

<div id="wrap" class="main <?= $shopName ?>">
	<!-- header// -->
	<?php include $_SERVER["DOCUMENT_ROOT"]."/inCom/header.php" ?>
	<!-- //header -->

	<!-- contents// -->
	<main id="container">
		<div id="contents">
			<!-- visual // -->
			<?php include $_SERVER["DOCUMENT_ROOT"]."/main/snpmall/visual.php" ?>
			<!-- // visual -->

			<!-- like it // -->
			<?php include $_SERVER["DOCUMENT_ROOT"]."/main/snpmall/likeit.php" ?>
			<!-- // like it -->

			<!-- story // -->
			<?php include $_SERVER["DOCUMENT_ROOT"]."/main/snpmall/story.php" ?>
			<!-- // story -->

			<!-- event // -->
			<?php include $_SERVER["DOCUMENT_ROOT"]."/main/snpmall/event.php" ?>
			<!-- // event -->

			<!-- special // -->
			<?php include $_SERVER["DOCUMENT_ROOT"]."/main/snpmall/special.php" ?>
			<!-- // special -->

			<!-- best : 2019.04.16 : 추가 // -->
			<?php include $_SERVER["DOCUMENT_ROOT"]."/main/snpmall/best.php" ?>
			<!-- // best -->

			<!-- review // -->
			<?php include $_SERVER["DOCUMENT_ROOT"]."/main/snpmall/review.php" ?>
			<!-- // review -->

			<!-- post / -->
			<?php include $_SERVER["DOCUMENT_ROOT"]."/main/snpmall/post.php" ?>
			<!-- // post -->
		</div>
	</main>
	<!-- //contents -->

	<!-- footer// -->
	<?php include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->

	<!-- 2019.04.22// -->
				<!-- timesale popup// -->
				<script type="text/javascript">
					$(document).ready(function(){
						fn.countDownTimer('2019-07-30 11:59:52'); // 2019.07.18
					});
				</script>
				<div class="timesale-popup">
					<button type="button" name="button" class="btn-close" onclick="$('.timesale-popup').hide()">닫기</button>
					<!-- 2019.07.18 // -->
					<a href="#">
						<div class="inner">
							<div class="timeset time">
								<div><span class="time-dday">D-</span><span class="time-day">0</span></div>
								<div><span class="time-h">00</span>:<span class="time-m">00</span>:<span class="time-s">00</span></div>
							</div>
							<div class="txt">
								<p class="ellipsis">
									[디렉터파이 선정] 히든랩 스킨 세이버 컨센트레이트 세이버 컨센트레이트세이버 컨센트레이트컨센트레이트
								</p>
								<del>28,000원</del>
								<b>18,000원</b>
							</div>
						</div>
					</a>
					<!-- // 2019.07.18 -->
				</div>
				<!-- //timesale popup -->
	<!-- 2019.04.22// -->

				<div id="div_POP_LAYER_24" class="main-popup" style="top:0;left:0;">
					<a href="http://www.naver.com" target="_blank" style="display:block;">
						<img src="/pjtCom/pc/images/temp/main_popup.jpg">
					</a>

					<div class="bottom-area">
						<label class="btn-today" onclick="fSetBannerCookie('B_POP_24','Y',1);fHideLayerPOP('24');"><input type="checkbox"><span>오늘은 그만보기</span></label>
						<a href="#" onclick="fn.popupClose(this);" class="btn-close">닫기</a>
					</div>
				</div>
				<script>
				function fHideLayerPOP(argB_IDX){
					$('#div_POP_LAYER_'+argB_IDX).hide();
				}
				</script>
</div>

</body>
</html>
