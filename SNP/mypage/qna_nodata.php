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
					<a href="/mypage/qna.php" class="active">1:1상담</a>
					<a href="/mypage/qna_pro.php">상품문의</a>
				</div>
				<!-- // sub tab -->

				<!-- info-nodata // -->
				<div class="info-nodata">
					등록하신 1:1상담 내역이 없습니다.
				</div>
				<!-- // info-nodata -->

				<div class="btn-area">
					<a href="#myqna-write" class="btn fill black btn-write" onclick="fn.popupOpen('#myqna-write');">1:1 상담하기</a>
				</div>

			</div>
		</div>
	</main>
	<!-- //contents -->

	<!-- 팝업 : 1:1상담하기 // -->
	<div id="myqna-write" class="popup myqna-write">
		<div class="inner">
			<header class="header">
				<h2 class="tit">1:1 상담하기</h2>

				<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<div class="scrollbar">
					<p class="txt">1:1 상담 내용은 작성자 본인만이 확인하실 수 있습니다.</p>

					<form class="form-area">
						<fieldset>
							<div class="input-area">
								<div class="select-qna">
									<div>
										<span class="field-tit require">문의 유형</span>
										<span class="field-input">
											<span class="inner">
												<span class="select">
													<select title="문의 유형 선택">
														<option>선택해주세요.</option>
														<option value="order">주문/결제/배송</option> <!-- value="order" 일 경우 주문 내역 노출 -->
														<option>선택해주세요</option>
														<option>선택해주세요</option>
														<option>선택해주세요</option>
														<option>선택해주세요</option>
													</select>
												</span>
											</span>
										</span>
									</div>
								</div>

								<div class="select-order">
									<div>
										<span class="field-tit require">주문 내역</span>
										<span class="field-input">
											<span class="inner">
												<span class="select">
													<select title="옵션 선택">
														<option>주문번호를 선택해주세요.</option>
														<option>20190115165750S45GWA (히든랩 브랜드 뉴 마그네틸 클렌저 외4개)</option>
														<option>20190115165750S45GWA (히든랩 브랜드 뉴 마그네틸 클렌저 외4개)</option>
														<option>20190115165750S45GWA (히든랩 브랜드 뉴 마그네틸 클렌저 외4개)</option>
														<option>20190115165750S45GWA (히든랩 브랜드 뉴 마그네틸 클렌저 외4개)</option>
														<option>20190115165750S45GWA (히든랩 브랜드 뉴 마그네틸 클렌저 외4개)</option>
														<option>20190115165750S45GWA (히든랩 브랜드 뉴 마그네틸 클렌저 외4개)</option>
														<option>20190115165750S45GWA (히든랩 브랜드 뉴 마그네틸 클렌저 외4개)</option>
													</select>
												</span>
											</span>
										</span>
									</div>
								</div>

								<div>
									<div>
										<span class="field-tit require">제목</span>
										<span class="field-input">
											<span class="inner">
												<input type="text" title="제목 입력">
											</span>
										</span>
									</div>
								</div>

								<div>
									<div>
										<span class="field-tit require">문의내용</span>
										<span class="field-input">
											<span class="inner">
												<textarea  placeholder="리뷰 내용은 최대 50자 이상 입력해주세요." title="입력"></textarea>
											</span>
											<strong class="validate-error">필수항목을 모두 입력해주세요.</strong><!-- 필수항목 미입력 시 해당 문구 출력 -->
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
													<p class="txt">이미지는 최대 3개 까지 등록 가능합니다.</p>
												</span>

											</span>
										</span>
									</div>
								</div>
							</div>
						</fieldset>
					</form>
				</div>
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close "onclick="fn.popupClose();">등록</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 1:1상담하기 -->

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
