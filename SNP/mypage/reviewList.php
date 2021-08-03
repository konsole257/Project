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
					<a href="/mypage/reviewList.php" class="active">리뷰 작성 가능한 상품</a>
					<a href="/mypage/myreview.php">작성한 리뷰 내역</a>
				</div>
				<!-- // sub tab -->

				<!-- list // -->
				<ul class="write-list">
					<li>
						<div>
							<p class="txt-date">주문일자</p>
							<p class="date">2018.12.17</p>
							<a href="#review-write" class="btn smaller fill black btn-write" onclick="fn.popupOpen('#review-write');">리뷰 작성</a>
						</div>
						<div class="info-product">
							<a href="#">
								<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
								<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
							</a>
						</div>
					</li>
					<li>
						<div>
							<p class="txt-date">주문일자</p>
							<p class="date">2018.12.17</p>
							<a href="#review-write" class="btn smaller fill black btn-write" onclick="fn.popupOpen('#review-write');">리뷰 작성</a>
						</div>
						<div class="info-product">
							<a href="#">
								<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
								<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
							</a>
						</div>
					</li>
					<li>
						<div>
							<p class="txt-date">주문일자</p>
							<p class="date">2018.12.17</p>
							<a href="#review-write" class="btn smaller fill black btn-write" onclick="fn.popupOpen('#review-write');">리뷰 작성</a>
						</div>
						<div class="info-product">
							<a href="#">
								<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
								<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
							</a>
						</div>
					</li>
					<li>
						<div>
							<p class="txt-date">주문일자</p>
							<p class="date">2018.12.17</p>
							<a href="#review-write" class="btn smaller fill black btn-write" onclick="fn.popupOpen('#review-write');">리뷰 작성</a>
						</div>
						<div class="info-product">
							<a href="#">
								<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
								<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
							</a>
						</div>
					</li>
				</ul>
				<!-- // list -->

				<!-- pagination // -->
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
				<!-- // pagination -->
			</div>
		</div>
	</main>
	<!-- //contents -->

	<!-- 팝업 : 리뷰 작성 // -->
	<div id="review-write" class="popup review-write">
		<div class="inner">
			<header class="header">
				<h2 class="tit">리뷰작성</h2>

				<button type="button" class="btn-close" onclick="fn.popupClose(); $('.form-area').trigger('reset')">닫기</button>
			</header>

			<div class="contents">
				<form class="form-area">
					<fieldset>
						<!-- 2019.03.15// -->
						<p class="guide-txt">부적절한 내용에 대하여 관리자에 의해 포인트를 회수할수있습니다.</p>
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
											<textarea placeholder="리뷰 내용은 최대 50자 이상 입력해주세요." title="입력"></textarea>
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
												<input type="file" title="파일찾기" onchange="fn.filePreview(this);">
												<input type="file" title="파일찾기" onchange="fn.filePreview(this);">
												<input type="file" title="파일찾기" onchange="fn.filePreview(this);">
												<input type="file" title="파일찾기" onchange="fn.filePreview(this);">
												<p class="txt">이미지는 최대 5개 까지 등록 가능합니다.</p>
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
				<button type="button" class="btn fill black btn-close" onclick="fn.popupClose();">등록</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 리뷰 작성 -->

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
