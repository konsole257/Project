<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "MY PAGE";
	$path2Tit = "";
	$path1Href = "/mypage/index.php";
	$path2Href = "";
	$pageClass = "mypage index";
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
					<a href="/mypage/qna.php">내 글 관리</a>
					<a href="/mypage/modify.php">회원정보 수정</a>
				</div>

				<!-- myinfo // -->
				<div class="myinfo">
					<!--
						회원등급
						뉴비 : newbie
						프렌즈 : friends
						셀럽 : celebrity
						VIP : vip
					-->
					<div class="profile celebrity">
						<p><strong>박보검</strong>님은 <strong>셀렙</strong>회원입니다.</p>

						<!-- 2019.08.19 : 수정 // -->
						<div class="btn-area">
							<button type="button" class="btn smaller fill black btn-staff" onclick="fn.popupOpen('#popstaff');">임직원몰 매출 누적금액</button>
							<a href="#" class="btn smaller fill black">등급혜택</a>
						</div>
						<!-- // 2019.08.19 : 수정 -->

					</div>
					<ul class="info-number">
						<li>
							<a href="#">
								<span>사용 가능 쿠폰</span>
								<span><strong>3</strong>개</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>사용 가능 포인트</span>
								<span><strong>16,000</strong>P</span>
							</a>
						</li>
					</ul>
				</div>
				<!-- //myinfo -->

				<div class="order-area">
					<h3>주문배송 진행 현황 <small>(최근 1개월 기준)</small></h3>

					<div class="lately-state">
						<ol>
							<li class="active"> <!-- 1건 이상 일 경우 class="active" 추가 -->
								<span class="tit">입금/결제</span>
								<span class="num">9</span>
							</li>
							<li>
								<span class="tit">출고완료</span>
								<span class="num">0</span>
							</li>
							<li>
								<span class="tit">배송중</span>
								<span class="num">0</span>
							</li>
							<li>
								<span class="tit">배송완료</span>
								<span class="num">0</span>
							</li>
							<li class="active">
								<span class="tit">취소/교환/반품</span>
								<span class="num">9</span>
							</li>
						</ol>
					</div>

					<table class="tbl-type1">
						<caption class="hide">주문배송 진행 현황 목록</caption>
						<colgroup>
							<col style="width:140px;">
							<col style="width:237px;">
							<col>
							<col style="width:143px;">
							<col style="width:143px;">
						</colgroup>
						<thead>
							<tr>
								<th>주문일</th>
								<th>주문번호</th>
								<th>상품정보</th>
								<th>결제금액</th>
								<th>상태</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>2019.01.16</td>
								<td><a href="#">201901171235750S45GWA</a></td>
								<td><a href="#">히든랩 브랜 뉴 마그네틱 클렌저 외 3개</a></td>
								<td>85,000원</td>
								<td class="state">
									<span>주문접수</span>
								</td>
							</tr>
							<tr>
								<td>2019.01.16</td>
								<td><a href="#">201901171235750S45GWA</a></td>
								<td><a href="#">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트 [히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</a></td>
								<td>85,000원</td>
								<td class="state">
									<span>배송중</span>
								</td>
							</tr>
							<tr>
								<td>2019.01.16</td>
								<td><a href="#">201901171235750S45GWA</a></td>
								<td><a href="#">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</a></td>
								<td>85,000원</td>
								<td class="state">
									<span class="bold">배송완료</span><!-- 완료 class="bold"-->
								</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="review-area">
					<h3>리뷰 작성 가능한 상품 <a href="#" class="btn-more">더보기</a></h3>

					<ul class="write-list">
						<li>
							<div>
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
				</div>
			</div>
		</div>
	</main>
	<!-- //contents -->

	<!-- 팝업 : 리뷰 작성 // -->
	<div id="review-write" class="popup review-write">
		<div class="inner">
			<header class="header">
				<h2 class="tit">리뷰작성</h2>

				<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<form class="form-area">
					<fieldset>
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

	<!-- 팝업 : 임직원몰 매출 누적금액 : 2019.08.19 : 추가 // -->
	<div id="popstaff" class="popup popstaff">
		<div class="inner">
			<header class="header">
				<h2 class="tit">임직원몰 매출 누적금액</h2>

				<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<p class="txt">
					임직원몰 운영 기간동안 회원님의 ID를 인증한<br>
					주문건의 결제금액 총 액수입니다.
				</p>

				<dl class="info">
					<dt>기간</dt>
					<dd>2019.08.15 ~ 2019.08.24</dd>

					<dt>주문건수</dt>
					<dd>8건</dd>

					<dt>누적금액</dt>
					<dd><b>648,000원</b></dd>
				</dl>
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close" onclick="fn.popupClose();">확인</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 임직원몰 매출 누적금액 -->

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
