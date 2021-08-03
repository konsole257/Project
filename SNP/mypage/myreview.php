<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "MY PAGE";
	$path2Tit = "나의 리뷰";
	$path1Href = "/mypage/index.php";
	$path2Href = "/mypage/reviewList.php";
	$pageClass = "mypage myreview";
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
					<a href="/mypage/oderList.php">주문배송 조회</a>
					<a href="/mypage/claimList_history.php">취소/교환/반품 조회</a>
					<a href="/mypage/coupon.php">쿠폰 내역</a>
					<a href="/mypage/point.php">포인트 내역</a>
					<a href="/mypage/reviewList.php" class="active">나의 리뷰</a>
					<a href="/mypage/qna.php">내 글 관리</a>
					<a href="/mypage/modify.php">회원정보 수정</a>
				</div>

				<!-- sub tab // -->
				<div class="tab-menu sub">
					<a href="/mypage/reviewList.php">리뷰 작성 가능한 상품</a>
					<a href="/mypage/myreview.php" class="active">작성한 리뷰 내역</a>
				</div>
				<!-- // sub tab -->

				<div class="view">
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

									<p class="txt ellipsis">
										여드름 패치 밀리고, 말리는 거 때문에 사용 진짜 안했었는데 기초 짱짱하게 하고 붙여도 잘 붙어있고,
										베이스메이크업할 때 브러쉬가 마구마구 지나가도 여드름 패치 밀리고, 말리는 거 때문에 사용 진짜 안했었는데 기초 짱짱하게 하고 붙여도 잘 붙어있고,
										베이스메이크업할 때 브러쉬가 마구마구 지나가도
									</p>

									<div>
										<p class="txt-date">작성일자</p><!-- 2019.03.12 : 수정 -->
										<p class="date">2018.12.17</p>
									</div>

									 <span class="btn-more">더보기</span><!-- 2019.03.12 : 수정 -->
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
							<a href="#review-view" onclick="fn.popupOpen('#review-view'); fn.reviewViewPicSwiper();">
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
										<p class="txt-date">작성일자</p>
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
							<a href="#review-view" onclick="fn.popupOpen('#review-view'); fn.reviewViewPicSwiper();">
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
										<p class="txt-date">작성일자</p>
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
							<a href="#review-view" onclick="fn.popupOpen('#review-view'); fn.reviewViewPicSwiper();">
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
										<p class="txt-date">작성일자</p>
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
							<a href="#review-view" onclick="fn.popupOpen('#review-view'); fn.reviewViewPicSwiper();">
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
										<p class="txt-date">작성일자</p>
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
						<p class="txt-date">작성일자</p>
						<p class="date">2018.12.17</p>
					</div>

					<a href="#review-modify" class="btn smaller fill black btn-modify" onclick="fn.popupClose();fn.popupOpen('#review-modify');">수정</a><!-- 2019.03.12 : 수정 -->

					<div class="info-product">
						<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
						<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 리뷰 보기 -->

	<!-- 팝업 : 리뷰수정 // -->
	<div id="review-modify" class="popup review-modify">
		<div class="inner">
			<header class="header">
				<h2 class="tit">리뷰수정</h2>

				<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<form class="form-area">
					<fieldset>
						<!-- 2019.03.15// -->
						<p class="guide-txt">이미 텍스트리뷰를 작성하신 경우 이미지를 추가하셔도 텍스트리뷰의 포인트로 지급됩니다.</p>
						<!-- //2019.03.15 -->
						<div class="input-area">
							<div>
								<div>
									<span class="field-tit">만족도</span>
									<span class="field-input">
										<span class="inner">
											<div class="grade small">
												<div>
													<label><input type="checkbox" checked onchange="fn.grade(this);"><span></span></label>
													<label><input type="checkbox" checked onchange="fn.grade(this);"><span></span></label>
													<label><input type="checkbox" checked onchange="fn.grade(this);"><span></span></label>
													<label><input type="checkbox" checked onchange="fn.grade(this);"><span></span></label>
													<label><input type="checkbox" checked onchange="fn.grade(this);"><span></span></label>
												</div>
												<span class="point">5</span>
											</div>
										</span>
									</span>
								</div>
							</div>

							<div>
								<div>
									<span class="field-tit">리뷰 내용</span>
									<span class="field-input">
										<span class="inner">
											<textarea placeholder="리뷰 내용은 최대 50자 이상 입력해주세요." title="입력">피부에 부드러운 보습막을 형성해줘서 수분 증발 방지를 해준다고해요. 동시에!! 유수분 밸런스까지 최적화시켜준답니다:-) 연한 블루 컬러의 크림으로 피부에 부담감이 전혀 없고 시원한 쿨링감까지 있어서 겨울 뿐 만 아니라 여름에 사용해도 무관할 거 같아요. 속부터 촉촉하게 차오르는 느낌과정말 끈적임 없이 가볍고 실키한 제형이에요. 끈적임 1도 없고, 발림성도 굉장히 매끄러워요! 칙칙한 피부톤을 환하게 해주는 미백효과와 늘어진 피부에 탄력감을 선사해주는 주름개선, 유분을 최소화 시킨 제형으로 번들거림과 끈적임 없이 흡수할수 있는 짱짱한 환절기 수분크림♥ 수분부족형 지성 피부분들께 강,추 드려요!!!</textarea>
										</span>

										<strong class="validate-error">리뷰 내용은 50자 이상 입력해주세요.</strong><!-- 입력한 정보가 틀릴경우 출력 -->
									</span>
								</div>
							</div>

							<div>
								<div>
									<span class="field-tit">이미지 등록</span>
									<span class="field-input">
										<span class="inner">
											<span class="file">
												<span class="btn smaller stroke black btn-file" onclick="fn.filePreviewBtn(this);">파일첨부</span>
												<input type="file" title="파일찾기" onchange="fn.filePreview(this);" data-index="1">
												<input type="file" title="파일찾기" onchange="fn.filePreview(this);">
												<input type="file" title="파일찾기" onchange="fn.filePreview(this);">
												<input type="file" title="파일찾기" onchange="fn.filePreview(this);">
												<input type="file" title="파일찾기" onchange="fn.filePreview(this);">
												<p class="txt">이미지는 최대 5개 까지 등록 가능합니다.</p>

												<div class="preview-area">
													<div class="preview" data-index="1" onclick="fn.filePreviewRemove(this)"><img src="/pjtCom/pc/images/temp/review_360x_1.jpg" alt="" class="img"></div>
												</div>
											</span>
										</span>
									</span>
								</div>
							</div>
						</div>
					</fieldset>
				</form>
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close" onclick="fn.popupClose();">수정완료</button><!-- 2019.03.12 : 수정 -->
			</div>
		</div>
	</div>
	<!-- // 팝업 : 리뷰수정 -->

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
