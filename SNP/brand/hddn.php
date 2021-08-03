<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "hddn"; /* 샵 네임 */
	$path1Tit = "ABOUT BRAND";
	$path2Tit = "hddn=lab";
	$path1Href = "/brand/hddn.php";
	$path2Href = "";
	$pageClass = "brand hddn";
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
				<img src="/pjtCom/pc/images/brand/hddn/con1.jpg" alt="" class="img">
			</div>
			<div class="con2">
				<img src="/pjtCom/pc/images/brand/hddn/con2.jpg" alt="" class="img">
			</div>
			<div class="con3">
				<img src="/pjtCom/pc/images/brand/hddn/con3.jpg" alt="도시 속 피부 유해요소들로부터 우리가 좀 더 자유로워질 수 있도록. 어반폴루션&amp;라이프를 연구하는 더마 코스메틱 브랜드, 히든랩" class="img">
			</div>
			<div class="con4">
				<img src="/pjtCom/pc/images/brand/hddn/con4.jpg" alt="OPEN YOUR ICE - 열 받은 피부온도 때문에 들뜬 메이크업이 신셩쓰이나요? 오픈유어아이스와 함께 피부도, 마음도 쿨~한 하루의 시작!" class="img">
			</div>
			<div class="con5">
				<img src="/pjtCom/pc/images/brand/hddn/con5.jpg" alt="SKIN SAVIOR - 예민 피부도 튼튼하게 철통방어! 도시 속 피부유해요소들은 스킨세이버가 도와드릴게요." class="img">
			</div>
			<div class="con6">
				<img src="/pjtCom/pc/images/brand/hddn/con6.jpg" alt="BACK TO THE PURE, BRAND NEW - 깨끗해져라 깨끗해져라 주문을 거는 순간, 순수했던 피부로 돌아가는 즐거운 클렌징 타임!" class="img">
			</div>
			<div class="con7">
				<img src="/pjtCom/pc/images/brand/hddn/con7.jpg" alt="GOD BREATH YOU - 스트레스에 지친 피부에 새로운 숨결을 불어넣어드려요." class="img">
			</div>

			<div class="con8">
				<div class="swiper-container con8-swiper">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<div class="txt-area">
								<p class="tit">SKIN SAVIOR</p>
								<p class="txt">
									도시 생활 속 자극받은 피부를 보호해주며 지치고 손상된 피부를<br>
									속부터 생기 있고 건강하게 가꿔줍니다.
								</p>
								<p class="name">히든랩 스킨 세이버 컨센트레이트</p>
							</div>

							<div class="con8-pro-swiper-wrap">
								<div class="swiper-container con8-pro-swiper">
									<div class="swiper-wrapper">
										<div class="swiper-slide">
											<p class="name">히든랩 스킨 세이버 컨센트레이트</p>

											<img src="/pjtCom/pc/images/brand/hddn/con8_swiper1_1.png" alt="" class="img">
										</div>
										<div class="swiper-slide">
											<p class="name">히든랩 스킨 세이버 유스 에센스</p>

											<img src="/pjtCom/pc/images/brand/hddn/con8_swiper1_2.png" alt="" class="img">
										</div>
									</div>
								</div>
							</div>
							<div class="indicator">
								<div class="swiper-pagination"></div>

								<div class="swiper-button-prev"></div>
								<div class="swiper-button-next"></div>
							</div>
						</div>

						<div class="swiper-slide">
							<div class="txt-area">
								<p class="tit">GOD BREATH YOU</p>
								<p class="txt">
									피부에 건강한 활력을 불어넣어 주며<br>
									대기오염, 자외선으로부터 피부를 지켜줍니다.
								</p>
								<p class="name">히든랩 갓브레스유 밸런싱 토너</p>
							</div>

							<div class="con8-pro-swiper-wrap">
								<div class="swiper-container con8-pro-swiper">
									<div class="swiper-wrapper">
										<div class="swiper-slide">
											<p class="name">히든랩 갓브레스유 밸런싱 토너</p>

											<img src="/pjtCom/pc/images/brand/hddn/con8_swiper2_1.png" alt="" class="img">
										</div>
										<div class="swiper-slide">
											<p class="name">히든랩 갓브레스유 에센스 인 밀크</p>

											<img src="/pjtCom/pc/images/brand/hddn/con8_swiper2_2.png" alt="" class="img">
										</div>
										<div class="swiper-slide">
											<p class="name">히든랩 갓브레스유 크림 플루이드</p>

											<img src="/pjtCom/pc/images/brand/hddn/con8_swiper2_3.png" alt="" class="img">
										</div>
									</div>
								</div>
							</div>
							<div class="indicator">
								<div class="swiper-pagination"></div>

								<div class="swiper-button-prev"></div>
								<div class="swiper-button-next"></div>
							</div>
						</div>

						<div class="swiper-slide">
							<div class="txt-area">
								<p class="tit">BRAND NEW</p>
								<p class="txt">
									하루 동안의 스트레스, 피로 및 미세먼지로부터 피부를 말끔히 씻어주고,<br>
									클렌징에 탁월한 제형으로 더 꼼꼼히 노폐물이 클렌징 됩니다.
								</p>
								<p class="name">히든랩 브랜드뉴 마그네틱 클렌저</p>
							</div>

							<div class="con8-pro-swiper-wrap">
								<div class="swiper-container con8-pro-swiper">
									<div class="swiper-wrapper">
										<div class="swiper-slide">
											<p class="name">히든랩 브랜드뉴 마그네틱 클렌저</p>

											<img src="/pjtCom/pc/images/brand/hddn/con8_swiper3_1.png" alt="" class="img">
										</div>
										<div class="swiper-slide">
											<p class="name">히든랩 브랜드뉴 실크 휘핑 클렌저</p>

											<img src="/pjtCom/pc/images/brand/hddn/con8_swiper3_2.png" alt="" class="img">
										</div>
									</div>
								</div>
							</div>
							<div class="indicator">
								<div class="swiper-pagination"></div>

								<div class="swiper-button-prev"></div>
								<div class="swiper-button-next"></div>
							</div>
						</div>

						<div class="swiper-slide">
							<div class="txt-area">
								<p class="tit">OPEN YOUR ICE</p>
								<p class="txt">
									피부 온도가 상승하면서 발생할 수 있는 홍조와 피부 노화를 케어해주며,<br>
									미백과 주름개선 기능이 포함되어 있습니다.
								</p>
								<p class="name">히든랩 오픈 유어 아이스 세럼</p>
							</div>

							<div class="con8-pro-swiper-wrap">
								<div class="swiper-container con8-pro-swiper">
									<div class="swiper-wrapper">
										<div class="swiper-slide">
											<p class="name">히든랩 오픈 유어 아이스 세럼</p>

											<img src="/pjtCom/pc/images/brand/hddn/con8_swiper4_1.png" alt="" class="img">
										</div>
										<div class="swiper-slide">
											<p class="name">히든랩 오픈 유어 아이스 크림</p>

											<img src="/pjtCom/pc/images/brand/hddn/con8_swiper4_2.png" alt="" class="img">
										</div>
										<div class="swiper-slide">
											<p class="name">히든랩 오픈 유어 아이스 팩</p>

											<img src="/pjtCom/pc/images/brand/hddn/con8_swiper4_3.png" alt="" class="img">
										</div>
									</div>
								</div>
							</div>
							<div class="indicator">
								<div class="swiper-pagination"></div>

								<div class="swiper-button-prev"></div>
								<div class="swiper-button-next"></div>
							</div>
						</div>

						<div class="swiper-slide">
							<div class="txt-area">
								<p class="tit">BACK TO THE PURE</p>
								<p class="txt">
									약쑥 성분이 피부의 당김과 자극 없이<br>
									메이크업과 미세먼지를 부드럽게 클렌징해줍니다.
								</p>
								<p class="name">백 투 더 퓨어 클렌징 워터 </p>
							</div>

							<div class="con8-pro-swiper-wrap">
								<div class="swiper-container con8-pro-swiper">
									<div class="swiper-wrapper">
										<div class="swiper-slide">
											<p class="name">백 투 더 퓨어 클렌징 워터 </p>

											<img src="/pjtCom/pc/images/brand/hddn/con8_swiper5_1.png" alt="" class="img">
										</div>
										<div class="swiper-slide">
											<p class="name">백 투 더 퓨어 클렌징 폼</p>

											<img src="/pjtCom/pc/images/brand/hddn/con8_swiper5_2.png" alt="" class="img">
										</div>
									</div>
								</div>
							</div>
							<div class="indicator">
								<div class="swiper-pagination"></div>

								<div class="swiper-button-prev"></div>
								<div class="swiper-button-next"></div>
							</div>
						</div>
					</div>

					<div class="swiper-button-prev"></div>
					<div class="swiper-button-next"></div>
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
