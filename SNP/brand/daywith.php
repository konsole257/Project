<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "daywith"; /* 샵 네임 */
	$path1Tit = "ABOUT BRAND";
	$path2Tit = "DAYWITH";
	$path1Href = "/brand/daywith.php";
	$path2Href = "";
	$pageClass = "brand daywith";
?>

<head>
	<!-- config// -->
	<?php include $_SERVER["DOCUMENT_ROOT"]."/inCom/config.php" ?>
	<!-- //config -->

	<link rel="stylesheet" type="text/css" href="/pjtCom/pc/css/sub.css" />
</head>

<body>

<div id="wrap" class="sub <?= $shopName ?>">
	<!-- header// -->
	<?php include $_SERVER["DOCUMENT_ROOT"]."/inCom/header.php" ?>
	<!-- //header -->

	<!-- contents// -->
	<main id="container" class="<?= $pageClass ?>">
		<div id="contents">
			<div class="con1">
				<img src="/pjtCom/pc/images/brand/daywith/con1.jpg" alt="" class="img">
			</div>

			<div class="con2">
				<div class="inner">
					<p class="txt1">DAYWITH BRAND STORY</p>

					<p class="txt2">
						Enjoy your secret day!<br>
						Feel the sensation
					</p>

					<p class="txt3">
						내 주변 소중한 사람에게 선물하는 마음으로 ‘걱정없이 안전한 여성용품을 만들자’ 라는<br>
						생각으로 데이위드 제품이 탄생하게 되었습니다.
					</p>
				</div>
			</div>

			<div class="con3">
				<img src="/pjtCom/pc/images/brand/daywith/con3.jpg" alt="" class="img">
			</div>

			<div class="con4">
				<p class="txt1">
					5가지 Clean 가장 소중한 당신을 위한<br>
					데이위드의 선물
				</p>

				<p class="txt2">
					원료 선정부터 남다른 DAYWITH의 자신감<br>
					모든 여성들을 위한 DAYWITH의 작지만 큰 선물!!<br>
					Only WOMEN INSIDE CARE 입니다.
				</p>

				<div class="certification-list">
					<div class="left-area">
						<div>
							<div class="img-area"><img src="/pjtCom/pc/images/brand/daywith/con4_dermatest.jpg" alt="" class="img"></div>
							<div class="txt-area">
								<span class="name">피부저자극 EXCELLENT등급 인증</span>
								<ul>
									<li>독일 더마테스트</li>
									<li>피부 저자극 테스트 결과</li>
									<li>상위 등급 EXCELLENT 인증</li>
								</ul>
							</div>
						</div>

						<div>
							<div class="img-area"><img src="/pjtCom/pc/images/brand/daywith/con4_organic.jpg" alt="" class="img"></div>
							<div class="txt-area">
								<span class="name">100% 유기농 순면 소재</span>
								<ul>
									<li>Certificated by ECOCERT Greenlife</li>
									<li>100% 유기농 순면 시트<br>(인증번호 Nº EGL/190273/761793/1)</li>
								</ul>
							</div>
						</div>

						<div>
							<div class="img-area"><img src="/pjtCom/pc/images/brand/daywith/con4_sgs.jpg" alt="" class="img"></div>
							<div class="txt-area">
								<span class="name">SGS 인증을 획득한 흡수체 사용</span>
								<ul>
									<li>카드뮴, 납,수은, 크로뮴 불검출 시험완료</li>
								</ul>
							</div>
						</div>
					</div>

					<div class="right-area">
						<div>
							<div class="img-area"><img src="/pjtCom/pc/images/brand/daywith/con4_fda.jpg" alt="" class="img"></div>
							<div class="txt-area">
								<span class="name">미국 식품의약국 등록</span>
								<ul>
									<li>미국 식품의약처 1급 의료기기 등록<br>(의료기기 등록번호 10057991)<br>(제품등록번호 : D324523)</li>
								</ul>
							</div>
						</div>

						<div>
							<div class="img-area"><img src="/pjtCom/pc/images/brand/daywith/con4_test.jpg" alt="" class="img"></div>
							<div class="txt-area">
								<span class="name">피부 알러지및 자극 테스트 통과</span>
								<ul>
									<li>인체적용시험 테스트 완료</li>
									<li>피부 1차 자극 테스트 완료<br>(시험기관 주식회사 더마프로, 시험기간 2018.03.27~2018.03.30)</li>
									<li>피부 감작성 테스트 완료<br>(시험기관 주식회사 더마프로, 시험기간 2018.03.19~2018.04.27)</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="con5">
				<p class="txt">
					모든 여성들을 위한<br>
					데이위드의 작지만 큰 선물<br>
					Present For you
				</p>

				<div class="swiper-container con5-swiper">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<p class="name">데이위드 울트라 슬림</p>
							<img src="/pjtCom/pc/images/brand/daywith/con5_swiper1_1.png" alt="" class="img">
						</div>
						<div class="swiper-slide">
							<p class="name">데이위드 슈퍼 소프트</p>
							<img src="/pjtCom/pc/images/brand/daywith/con5_swiper1_2.png" alt="" class="img">
						</div>
						<div class="swiper-slide">
							<p class="name">데이위드 페미닌 워시</p>
							<img src="/pjtCom/pc/images/brand/daywith/con5_swiper1_3.png" alt="" class="img">
						</div>
					</div>

					<div class="indicator">
						<div class="swiper-pagination"></div>
					</div>
				</div>

			</div>
		</div>
	</main>
	<!-- //contents -->

	<!-- footer// -->
	<?php include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
