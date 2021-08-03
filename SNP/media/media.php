<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "MEDIA";
	$path2Tit = "";
	$path1Href = "/media/media.php";
	$path2Href = "";
	$pageClass = "media";
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
				<div class="tab-menu">
				    <a href="#" class="active">ALL</a><!-- 현재페이지 class="active" -->
				    <a href="#">CH.BEAUTY</a>
				    <a href="#">N POST</a>
					<a href="#">POSTING</a>
				</div>

				<div class="tab-contents active">
				    <ul class="archive-list">
						<!-- 반복영역 // -->
				        <li class="naverpost"><!-- 네이버포스트의경우 class="naverpost" -->
				            <a href="#archive-view" class="pic" onclick="fn.popupOpen('#archive-view');"><img src="/pjtCom/pc/images/temp/archive_360x_1.jpg" alt="" class="img"></a>

							<p class="subject ellipsis">[코스모폴리탄] 11월호 히든랩 스킨 세이버 컨센트레이트 11월호 히든랩 스킨 세이버 컨센트레이트 11월호 히든랩 스킨 세이버 컨센트레이트 11월호 히든랩 스킨 세이버 컨센트레이트 11월호 히든랩 스킨 세이버 컨센트레이트</p>

							<p class="txt ellipsis">
								Enjoy Your Urban Life 즐도녀들을 위한 어반 폴루션 케어 더마코스메틱 히든랩의 ‘스킨 세이버 컨센트레이트’ 가 디렉터파이 # 착한 보습 크림 으로 선정되었습니다.
								Enjoy Your Urban Life 즐도녀들을 위한 어반 폴루션 케어 더마코스메틱 히든랩의 ‘스킨 세이버 컨센트레이트’ 가 디렉터파이 # 착한 보습 크림 으로 선정되었습니다.
								Enjoy Your Urban Life 즐도녀들을 위한 어반 폴루션 케어 더마코스메틱 히든랩의 ‘스킨 세이버 컨센트레이트’ 가 디렉터파이 # 착한 보습 크림 으로 선정되었습니다.
								Enjoy Your Urban Life 즐도녀들을 위한 어반 폴루션 케어 더마코스메틱 히든랩의 ‘스킨 세이버 컨센트레이트’ 가 디렉터파이 # 착한 보습 크림 으로 선정되었습니다.
							</p>

							<ul class="product">
								<li>
									<a href="#">
										<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
										<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
									</a>
								</li>
							</ul>
				        </li>
						<!-- // 반복영역 -->

						<li>
				            <a href="#" class="pic"><img src="/pjtCom/pc/images/temp/archive_360x_2.jpg" alt="" class="img"></a>

							<p class="subject ellipsis">뷰티 유투버들이 제품력 입증한 액티브 씰 마스크! #액티브씰 #속채움</p>

							<ul class="product">
								<li>
									<a href="#">
										<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
										<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
									</a>
								</li>
							</ul>
				        </li>

						<li>
				            <a href="#" class="pic"><img src="/pjtCom/pc/images/temp/archive_360x_2.jpg" alt="" class="img"></a>

							<p class="subject ellipsis">뷰티 유투버들이 제품력 입증한 액티브 씰 마스크! #액티브씰 #속채움</p>

				        </li>

						<li>
				            <a href="#" class="pic"><img src="/pjtCom/pc/images/temp/archive_360x_1.jpg" alt="" class="img"></a>

							<p class="subject ellipsis">뷰티 유투버들이 제품력 입증한 액티브 씰 마스크! #액티브씰 #속채움</p>
				        </li>

						<li>
				            <a href="#" class="pic"><img src="/pjtCom/pc/images/temp/archive_360x_2.jpg" alt="" class="img"></a>

							<p class="subject ellipsis">뷰티 유투버들이 제품력 입증한 액티브 씰 마스크! #액티브씰 #속채움</p>

							<ul class="product">
								<li>
									<a href="#">
										<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
										<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
									</a>
								</li>

								<li>
									<a href="#">
										<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_2.jpg" class="img" alt=""></div>
										<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
									</a>
								</li>
							</ul>
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

	<!-- 팝업 : 상세보기 // -->
	<div id="archive-view" class="popup archive-view">
		<div class="inner">
			<div class="contents">
				<div class="txt-area">
					<p class="subject">뷰티 유투버들이 제품력 입증한 액티브 씰 마스크! #속채움마스크 #액티브씰</p>

					<p class="txt">
						아무리 케어해도 어두침침해지는 안색, 이제는 ‘속’미백에 신경써야 할 때! 겉보다는 속을 케어하자!
						#속미백마스크 #잡티순삭팩 #멜라브라이트액티브씰마스크 가 새롭게 나왔어요 랄라블라, 부츠에서 만나보세요!
					</p>

					<ul class="product-area">
						<li>
							<div class="pic"><img src="/pjtCom/pc/images/temp/product_80x80.jpg" alt="" class="img"></div>
							<p class="name">퍼핏 바이오 셀 마스크 더블 수딩</p>
						</li>
						<li>
							<div class="pic"><img src="/pjtCom/pc/images/temp/product_80x80.jpg" alt="" class="img"></div>
							<p class="name">퍼핏 바이오 셀 마스크 더블 수딩 퍼핏 바이오 셀 마스크 더블 수딩</p>
						</li>
					</ul>
				</div>

				<!-- 이미지일경우 // -->
				<!-- <div class="pic"><img src="/pjtCom/pc/images/temp/archive_1000x1375.jpg" alt=""></div> -->
				<!-- // 이미지일경우 -->

				<!-- 영상일경우 // -->
				<div class="vidio">
					<iframe width="1000" height="562" src="https://www.youtube.com/embed/YRv07bl0iTk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"></iframe>
				</div>
				<!-- // 영상일경우 -->

				<button type="button" class="btn-prev">이전</button>
				<button type="button" class="btn-next">다음</button>
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close" onclick="fn.popupClose();">확인</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 상세보기 -->

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
