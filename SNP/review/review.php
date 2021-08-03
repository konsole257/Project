<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "REVIEW";
	$path2Tit = "전체리뷰";
	$path1Href = "/review/reviewList.php";
	$path2Href = "/review/reviewList.php";
	$pageClass = "review";
?>

<head>
	<!-- config// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/config.php" ?>
	<!-- //config -->

	<link rel="stylesheet" type="text/css" href="/pjtCom/pc/css/sub.css" />
</head>

<body>

<div id="wrap" class="sub <?= $shopName ?>">
	<!-- header// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/header.php" ?>
	<!-- //header -->

	<!-- contents// -->
	<main id="container" class="<?= $pageClass ?>">
		<div id="contents">
			<div class="top-area">
				<h2 class="tit"><?= $path1Tit ?></h2>

				<!-- path// -->
				<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/path.php" ?>
				<!-- //path -->
			</div>

			<div class="body">

				<!-- 2019.04.25 : 수정 // -->
				<!-- <div class="tab-menu">
					<a href="/review/review.php" class="active">ALL</a>
					<a href="/review/review.php">SNP</a>
					<a href="/review/review.php">hddn=lab</a>
					<a href="/review/review.php">M’SOLIC</a>
					<a href="/review/review.php">DAYWiTH</a>
				</div> -->

				<form class="search-area">
					<fieldset>
						<legend class="hide">검색</legend>
						<input type="text" placeholder="상품명을 입력해주세요." title="상품명 입력">
						<button type="button" class="btn btn-search" onclick="fn.popupOpen('#popSearchAlert');">검색</button>
					</fieldset>
				</form>
				<!-- // 2019.04.25 : 수정 -->

				<div class="tab-contents active">
					<!-- 2019.04.25 : 수정 // -->
					<div class="photo-reviewcheck">
						<label><input type="checkbox" value=""><span>포토리뷰 모아보기</span></label>
					</div>
					<!-- // 2019.04.25 : 수정 -->

					<div class="align">
						<a href="/review/review.php" class="active">최신순</a><!-- 현재 페이지 class="active" -->
						<a href="/review/review.php">평점순</a>
					</div>

				    <ul class="review-list">
				        <li>
							<a href="#review-view" onclick="fn.popupOpen('#review-view'); fn.reviewViewPicSwiper();">
					            <div class="pic"><img src="/pjtCom/pc/images/temp/review_360x_1.jpg" alt="" class="img"></div><!-- img 등록시 출력 -->

					            <div class="bottom-area">
					                <div class="grade small">
					                	<div>
					                		<span class="one"></span><!-- 1점 ( 0.5점 없음 ) -->
					                		<span class="one"></span>
					                		<span class="one"></span>
					                		<span class="one"></span>
					                		<span class="blank"></span><!-- 0점 ( 0.5점 없음 ) -->
					                	</div>
					                	<span class="point">4</span>
					                </div>

					                <div class="txt ellipsis">
					                    <p>여드름 패치 밀리고, 말리는 거 때문에 사용 진짜 안했었는데 기초 짱짱하게 하고 붙여도 잘 붙어있고,</p>
					                    베이스메이크업할 때 브러쉬가 마구마구 지나가도 여드름 패치 밀리고, 말리는 거 때문에 사용 진짜 안했었는데 기초 짱짱하게 하고 붙여도 잘 붙어있고,
					                    베이스메이크업할 때 브러쉬가 마구마구 지나가도
					                </div>

					                <div>
					                    <p class="id">bbp***</p>
					                    <p class="date">2018.12.17</p>
					                </div>

									 <span class="btn-more">더보기</span>
					            </div>
							</a>

							<div class="info-product">
								<a href="#">
									<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
									<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
								</a>
							</div>
				        </li>

				        <li>
							<a href="#">
					            <div class="pic"><img src="/pjtCom/pc/images/temp/review_360x_2.jpg" alt="" class="img"></div><!-- img 등록시 출력 -->

					            <div class="bottom-area">
					                <div class="grade small">
					                	<div>
					                		<span class="one"></span><!-- 1점 ( 0.5점 없음 ) -->
					                		<span class="one"></span>
					                		<span class="one"></span>
					                		<span class="one"></span>
					                		<span class="blank"></span><!-- 0점 ( 0.5점 없음 ) -->
					                	</div>
					                	<span class="point">4</span>
					                </div>

					                <p class="txt ellipsis">
					                    여드름 패치 밀리고, 말리는 거 때문에 사용 진짜 안했었는데 기초 짱짱하게 하고 붙여도 잘 붙어있고,
					                    베이스메이크업할 때 브러쉬가 마구마구 지나가도 여드름 패치 밀리고, 말리는 거 때문에 사용 진짜 안했었는데 기초 짱짱하게 하고 붙여도 잘 붙어있고,
					                    베이스메이크업할 때 브러쉬가 마구마구 지나가도
					                </p>

					                <div>
					                    <p class="id">bbp***</p>
					                    <p class="date">2018.12.17</p>
					                </div>

									 <span class="btn-more">더보기</span>

				            	</div>
							</a>

							<div class="info-product">
								<a href="#">
									<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
									<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
								</a>
							</div>
				        </li>

				        <li>
							<a href="#">
					            <div class="bottom-area">
					                <div class="grade small">
					                	<div>
					                		<span class="one"></span><!-- 1점 ( 0.5점 없음 ) -->
					                		<span class="one"></span>
					                		<span class="one"></span>
					                		<span class="one"></span>
					                		<span class="blank"></span><!-- 0점 ( 0.5점 없음 ) -->
					                	</div>
					                	<span class="point">4</span>
					                </div>

					                <p class="txt ellipsis">
					                    여드름 패치 밀리고, 말리는 거 때문에 사용 진짜 안했었는데 기초 짱짱하게 하고
					                </p>

					                <div>
					                    <p class="id">bbp***</p>
					                    <p class="date">2018.12.17</p>
					                </div>

									<span class="btn-more">더보기</span>
					            </div>
							</a>

							<div class="info-product">
								<a href="#">
									<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
									<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
								</a>
							</div>
				        </li>

				        <li>
							<a href="#">
					            <div class="pic"><img src="/pjtCom/pc/images/temp/review_360x_2.jpg" alt="" class="img"></div><!-- img 등록시 출력 -->

					            <div class="bottom-area">
					                <div class="grade small">
					                	<div>
					                		<span class="one"></span><!-- 1점 ( 0.5점 없음 ) -->
					                		<span class="one"></span>
					                		<span class="one"></span>
					                		<span class="one"></span>
					                		<span class="blank"></span><!-- 0점 ( 0.5점 없음 ) -->
					                	</div>
					                	<span class="point">4</span>
					                </div>

					                <p class="txt ellipsis">
					                    여드름 패치 밀리고, 말리는 거 때문에 사용 진짜 안했었는데 기초 짱짱하게 하고 붙여도 잘 붙어있고,
					                    베이스메이크업할 때 브러쉬가 마구마구 지나가도 여드름 패치 밀리고, 말리는 거 때문에 사용 진짜 안했었는데 기초 짱짱하게 하고 붙여도 잘 붙어있고,
					                    베이스메이크업할 때 브러쉬가 마구마구 지나가도
					                </p>

					                <div>
					                    <p class="id">bbp***</p>
					                    <p class="date">2018.12.17</p>
					                </div>

									<a href="#" class="btn-more">더보기</a>
					            </div>
							</a>

							<div class="info-product">
								<a href="#">
									<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
									<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
								</a>
							</div>
				        </li>

						<li>
							<a href="#">
					            <div class="pic"><img src="/pjtCom/pc/images/temp/review_360x_2.jpg" alt="" class="img"></div><!-- img 등록시 출력 -->

					            <div class="bottom-area">
					                <div class="grade small">
					                	<div>
					                		<span class="one"></span><!-- 1점 ( 0.5점 없음 ) -->
					                		<span class="one"></span>
					                		<span class="one"></span>
					                		<span class="one"></span>
					                		<span class="blank"></span><!-- 0점 ( 0.5점 없음 ) -->
					                	</div>
					                	<span class="point">4</span>
					                </div>

					                <p class="txt ellipsis">
					                    여드름 패치 밀리고
					                </p>

					                <div>
					                    <p class="id">bbp***</p>
					                    <p class="date">2018.12.17</p>
					                </div>

									<a href="#" class="btn-more">더보기</a>
					            </div>
							</a>

							<div class="info-product">
								<a href="#">
									<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
									<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
								</a>
							</div>
				        </li>
				    </ul>

				    <div class="pagination">
				    	<a href="#" class="btn-first">처음</a>
				    	<a href="#" class="btn-prev">이전</a>
				    	<span class="num">
				    		<a href="#" class="active">1</a>
				    		<a href="#">2</a>
				    		<a href="#">3</a>
				    		<a href="#">4</a>
				    		<a href="#">5</a>
				    	</span>
				    	<a href="#" class="btn-next">다음</a>
				    	<a href="#" class="btn-last">끝</a>
				    </div>
				</div>
			</div>
		</div>
	</main>
	<!-- //contents -->

	<!-- 팝업 : 리뷰 보기 // -->
	<div id="review-view" class="popup review-view">
		<div class="inner">
			<header class="header">
				<h2 class="tit">리뷰보기</h2>

				<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents picreview"><!-- 이미지 등록시 class="picreview" -->
				<!-- 이미지 등록시 노출 // -->
				<div class="pic">
					<div class="swiper-container pic-swiper">
						<div class="swiper-wrapper">
							<div class="swiper-slide"><img src="/pjtCom/pc/images/temp/review_400x266.jpg" alt="" class="img"></div>
							<div class="swiper-slide"><img src="/pjtCom/pc/images/temp/review_267x400.jpg" alt="" class="img"></div>
						</div>
					</div>

					<div class="indicator active">
						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>

						<div class="swiper-pagination"></div>
					</div>
				</div>
				<!-- // 이미지 등록시 노출 -->

				<div class="txt-area">
					<div class="grade small">
						<div>
							<span class="one"></span><!-- 1점 ( 0.5점 없음 ) -->
							<span class="one"></span>
							<span class="one"></span>
							<span class="one"></span>
							<span class="blank"></span><!-- 0점 ( 0.5점 없음 ) -->
						</div>
						<span class="point">4</span>
					</div>

					<div class="txt scrollbar">
						피부에 부드러운 보습막을 형성해줘서 수분 증발 방지를 해준다고 해요. 동시에!! 유수분 밸런스까지 최적화시켜준답니다:-) 연한 블루 컬러의 크림으로 피부에 부담감이 전혀 없고 시원한 쿨링감까지 있어서 겨울 뿐 만 아니라 여름에 사용해도 무관할 거 같아요.
						속부터 촉촉하게 차오르는 느낌과정말 끈적임 없이 가볍고 실키한 제형이에요. 끈적임 1도 없고, 발림성도 굉장히 매끄러워요! 칙칙한 피부톤을 환하게 해주는 미백효과와 늘어진 피부에 탄력감을 선사해 주는 주름개선, 유분을 최소화 시킨 제형으로 번들거림과 끈적임 없이 흡수할수 있는 짱짱한 환절기 수분크림♥ 수분부족형 지성 피부분들께 강,추 드려요!!!
						피부에 부드러운 보습막을 형성해줘서 수분 증발 방지를 해준다고해요. 동시에!! 유수분 밸런스까지 최적화시켜준답니다:-)
					</div>

					<div>
						<p class="id">bbp***</p>
						<p class="date">2018.12.17</p>
					</div>

					<div class="info-product">
						<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
						<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 리뷰 보기 -->

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
