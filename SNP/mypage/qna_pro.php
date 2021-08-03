<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "MY PAGE";
	$path2Tit = "내 글 관리";
	$path1Href = "/mypage/index.php";
	$path2Href = "/mypage/qna.php";
	$pageClass = "mypage qna";
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
					<a href="/mypage/reviewList.php">나의 리뷰</a>
					<a href="/mypage/qna.php" class="active">내 글 관리</a>
					<a href="/mypage/modify.php">회원정보 수정</a>
				</div>

				<!-- sub tab // -->
				<div class="tab-menu sub">
					<a href="/mypage/qna.php">1:1상담</a>
					<a href="/mypage/qna_pro.php" class="active">상품문의</a>
				</div>
				<!-- // sub tab -->

				<!-- list // -->
				<ul class="fold-list">
					<li class="noreply"><!-- 답변이 없을경우 class="noreply" -->
						<a href="javascript:void(0);" onclick="fn.toggleClass(this);">
							<em>답변대기</em>
							<strong>제품 유통기한 알려주세요~ 제품 유통기한 알려주세요~ 제품 유통기한 알려주세요~ 제품 유통기한 알려주세요~ 제품 유통기한 알려주세요~ 제품 유통기한 알려주세요~ 제품 유통기한 알려주세요~ 제품 유통기한 알려주세요~ 제품 유통기한 알려주세요~</strong>
							<div>
								<p class="date">2018.12.17</p>
							</div>
						</a>
						<div class="info-product">
							<a href="#">
								<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
								<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
							</a>
							<a href="#qna-delete" class="btn smaller stroke black" onclick="fn.popupOpen('#qna-delete');">삭제</a> <!-- 답변이 없는 경우 노출 -->
						</div>
					</li>
					<li>
						<a href="javascript:void(0);" onclick="fn.toggleClass(this);">
							<em>답변완료</em>
							<strong>제품 유통기한 알려주세요~</strong>
							<div>
								<p class="date">2018.12.17</p>
							</div>
						</a>
						<div class="info-product">
							<a href="#">
								<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
								<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
							</a>
						</div>
						<div class="acont">
							안녕하세요. 고객님. SD SHOP 입니다.<br>
							히든랩 스킨 세이버 컨센트레이트의 유통기한은 2020년 1월 17일 이후인 상품입니다.<br>
							유통기한은 케이스 하단이나 케이스 옆면에 표기되어 있으니, 이용에 참고해주시길 바랍니다. 감사합니다:)

							<div>
								<p class="id">관리자</p>
								<p class="date">2018.12.17</p>
							</div>
						</div>
					</li>
					<li class="noreply">
						<a href="javascript:void(0);" onclick="fn.toggleClass(this);">
							<em>답변대기</em>
							<strong>제품 유통기한 알려주세요~</strong>
							<div>
								<p class="date">2018.12.17</p>
							</div>
						</a>
						<div class="info-product">
							<a href="#">
								<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
								<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
							</a>
							<a href="#qna-delete" class="btn smaller stroke black" onclick="fn.popupOpen('#qna-delete');">삭제</a>
						</div>
					</li>
					<li class="noreply">
						<a href="javascript:void(0);" onclick="fn.toggleClass(this);">
							<em>답변대기</em>
							<strong>제품 유통기한 알려주세요~</strong>
							<div>
								<p class="date">2018.12.17</p>
							</div>
						</a>
						<div class="info-product">
							<a href="#">
								<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
								<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
							</a>
							<a href="#qna-delete" class="btn smaller stroke black" onclick="fn.popupOpen('#qna-delete');">삭제</a>
						</div>
					</li>
					<li class="noreply">
						<a href="javascript:void(0);" onclick="fn.toggleClass(this);">
							<em>답변대기</em>
							<strong>제품 유통기한 알려주세요~</strong>
							<div>
								<p class="date">2018.12.17</p>
							</div>
						</a>
						<div class="info-product">
							<a href="#">
								<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
								<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
							</a>
							<a href="#qna-delete" class="btn smaller stroke black" onclick="fn.popupOpen('#qna-delete');">삭제</a>
						</div>
					</li>
					<li class="noreply">
						<a href="javascript:void(0);" onclick="fn.toggleClass(this);">
							<em>답변대기</em>
							<strong>제품 유통기한 알려주세요~</strong>
							<div>
								<p class="date">2018.12.17</p>
							</div>
						</a>
						<div class="info-product">
							<a href="#">
								<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
								<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
							</a>
							<a href="#qna-delete" class="btn smaller stroke black" onclick="fn.popupOpen('#qna-delete');">삭제</a>
						</div>
					</li>
					<li class="noreply">
						<a href="javascript:void(0);" onclick="fn.toggleClass(this);">
							<em>답변대기</em>
							<strong>제품 유통기한 알려주세요~</strong>
							<div>
								<p class="date">2018.12.17</p>
							</div>
						</a>
						<div class="info-product">
							<a href="#">
								<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
								<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
							</a>
							<a href="#qna-delete" class="btn smaller stroke black" onclick="fn.popupOpen('#qna-delete');">삭제</a>
						</div>
					</li>
					<li class="noreply">
						<a href="javascript:void(0);" onclick="fn.toggleClass(this);">
							<em>답변대기</em>
							<strong>제품 유통기한 알려주세요~</strong>
							<div>
								<p class="date">2018.12.17</p>
							</div>
						</a>
						<div class="info-product">
							<a href="#">
								<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
								<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
							</a>
							<a href="#qna-delete" class="btn smaller stroke black" onclick="fn.popupOpen('#qna-delete');">삭제</a>
						</div>
					</li>
					<li class="noreply">
						<a href="javascript:void(0);" onclick="fn.toggleClass(this);">
							<em>답변대기</em>
							<strong>제품 유통기한 알려주세요~</strong>
							<div>
								<p class="date">2018.12.17</p>
							</div>
						</a>
						<div class="info-product">
							<a href="#">
								<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
								<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
							</a>
							<a href="#qna-delete" class="btn smaller stroke black" onclick="fn.popupOpen('#qna-delete');">삭제</a>
						</div>
					</li>
					<li class="noreply">
						<a href="javascript:void(0);" onclick="fn.toggleClass(this);">
							<em>답변대기</em>
							<strong>제품 유통기한 알려주세요~</strong>
							<div>
								<p class="date">2018.12.17</p>
							</div>
						</a>
						<div class="info-product">
							<a href="#">
								<div class="pic"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></div>
								<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>
							</a>
							<a href="#qna-delete" class="btn smaller stroke black" onclick="fn.popupOpen('#qna-delete');">삭제</a>
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

	<!-- 팝업 : 상품문의가 삭제 // -->
	<div id="qna-delete" class="alert">
		<div class="inner">
			<div class="contents">
				상품문의가 삭제되었습니다.
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close" onclick="fn.popupClose();">확인</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 상품문의가 삭제 -->

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>