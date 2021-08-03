<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "MY PAGE";
	$path2Tit = "쿠폰 내역";
	$path1Href = "/mypage/index.php";
	$path2Href = "/mypage/coupon.php";
	$pageClass = "mypage coupon";
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
					<a href="/mypage/coupon.php" class="active">쿠폰 내역</a>
					<a href="/mypage/point.php">포인트 내역</a>
					<a href="/mypage/reviewList.php">나의 리뷰</a>
					<a href="/mypage/qna.php">내 글 관리</a>
					<a href="/mypage/modify.php">회원정보 수정</a>
				</div>

				<!-- 2019.03.12 : 수정 // -->
				<div class="myinfo-box">
					<ul class="state">
						<li class="active">
							<a href="/mypage/coupon.php">
								<span>사용가능</span>
								<strong>5</strong>
							</a>
						</li>
					</ul>

					<div class="info-txt">
						<p>발급된 쿠폰은 해당 페이지 하단에서 확인 가능합니다.</p>
						<p>발급된 쿠폰을 다운로드하셔야 결제 시 적용 가능합니다.</p>
						<p>장바구니/상품 쿠폰은 동시에 사용할 수 없습니다.</p>
						<p>장바구니 쿠폰은 포인트 사용 전 전체 금액에서 적용됩니다.</p>
						<p>상품 쿠폰은 회원등급 할인 이후 상품별로 적용됩니다.</p>
						<p>쿠폰별로 사용 가능한 상품, 카테고리, 유효 기간이 있으니 참고하여 주시기 바랍니다.</p>
						<p>도서산간지역인 경우 무료배송 적용 시 결제 배송비에서 2,500원 차감됩니다.</p><!-- 2019.07.31 : 수정 -->

						<a href="/mypage/coupon/coupon_complete">사용완료 쿠폰내역</a>
					</div>

					<!-- 2019.07.31 : 추가 // -->
					<div class="register-area">
						<input type="text">
						<button type="button" class="btn big fill black btn-register">쿠폰번호 등록</button>
					</div>
					<!-- // 2019.07.31 : 추가 -->

				</div>
				<!-- // 2019.03.12 : 수정 -->

				<!-- list // -->
				<ul class="coupon-list">
					<li>
						<div class="coupon">
							<em>50</em>%
							<span>할인 쿠폰</span>
						</div>

						<div class="info-area">
							<strong class="subject ellipsis">SNP MALL 사이트 오픈 기념 모든 고객 대상50% 할인 쿠폰 지급! SNP MALL 사이트 오픈 기념 모든 고객 대상50% 할인 쿠폰 지급! SNP MALL 사이트 오픈 기념 모든 고객 대상50% 할인 쿠폰 지급!</strong>
							<span class="date ">사용 가능 기간 : 2019.01.16 – 2019.01.23</span>
						</div>
						<button type="button" class="btn stroke gray" onclick="fn.popupOpen('#applyCoupon');">적용 가능 상품</button>
					</li>
					<!-- 무료배송 쿠폰 // -->
					<li>
						<div class="coupon delivery">
							<em>3,000</em>원
							<span>무료배송</span>
						</div>

						<div class="info-area">
							<strong class="subject ellipsis">히든랩 상품 3,000원 할인 쿠폰</strong>
							<span class="date ">사용 가능 기간 : 2019.01.16 – 2019.01.23</span>
						</div>
						<button type="button" class="btn fill black">쿠폰 다운로드</button><!-- 2019.03.29 : 수정 -->
					</li>
					<!-- // 무료배송 쿠폰 -->
					<li>
						<div class="coupon">
							<em>3,000</em>원
							<span>할인 쿠폰</span>
						</div>

						<div class="info-area">
							<strong class="subject ellipsis">히든랩 상품 3,000원 할인 쿠폰</strong>
							<span class="date ">사용 가능 기간 : 2019.01.16 – 2019.01.23</span>
						</div>
						<button type="button" class="btn fill black">쿠폰 다운로드</button>
					</li>
					<li>
						<div class="coupon">
							<em>50</em>%
							<span>할인 쿠폰</span>
						</div>

						<div class="info-area">
							<strong class="subject ellipsis">히든랩 상품 3,000원 할인 쿠폰</strong>
							<span class="date ">사용 가능 기간 : 2019.01.16 – 2019.01.23</span>
						</div>
						<button type="button" class="btn fill black">쿠폰 다운로드</button>
					</li>
					<li>
						<div class="coupon">
							<em>50</em>%
							<span>할인 쿠폰</span>
						</div>

						<div class="info-area">
							<strong class="subject ellipsis">히든랩 상품 3,000원 할인 쿠폰</strong>
							<span class="date ">사용 가능 기간 : 2019.01.16 – 2019.01.23</span>
						</div>
						<button type="button" class="btn fill black">쿠폰 다운로드</button>
					</li>
					<li>
						<div class="coupon">
							<em>50</em>%
							<span>할인 쿠폰</span>
						</div>

						<div class="info-area">
							<strong class="subject ellipsis">히든랩 상품 3,000원 할인 쿠폰</strong>
							<span class="date ">사용 가능 기간 : 2019.01.16 – 2019.01.23</span>
						</div>
						<button type="button" class="btn fill black">쿠폰 다운로드</button>
					</li>
				</ul>
				<!-- // list -->

				<!-- 2019.03.15// -->
				<!-- pagination // -->
				<!--
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
				-->
				<!-- // pagination -->
				<!-- //2019.03.15 -->
			</div>
		</div>
	</main>
	<!-- //contents -->

	<!-- 팝업 : 적용 가능 상품 : 추가 : 2019.03.12 // -->
	<div id="applyCoupon" class="popup applyCoupon">
		<div class="inner">
			<header class="header">
				<h2 class="tit">적용 가능 상품</h2>

				<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<dl>
					<dt>쿠폰정보</dt>
					<dd>히든랩 상품 3,000원 할인 쿠폰( 2019.01.16 – 2019.01.23)</dd>
				</dl>

				<div class="scrollbar"><!-- <div class="scrollbar"> 태그 추가 -->
					<table>
						<caption>적용 가능 상품 목록</caption>
						<colgroup>
							<col style="width:153px">
							<col style="width:230px">
							<col style="width:144px">
						</colgroup>

						<tbody>
							<tr>
								<td><figure><img src="/pjtCom/pc/images/temp/product_110x110.jpg" alt=""></figure></td>
								<td>
									<ul class="flag">
										<li><span style="color:#a9a9a9; border:1px solid #cfcfcf; background:#e2e2e2;">일시품절</span></li><!-- 관리자에서 style등록 -->
										<li><span style="color:#ea303d; border:1px solid #ec0e41; background:#fff;">품절임박</span></li><!-- 관리자에서 style등록 -->
									</ul>
									<a href="#">엠솔릭 훈남의 정석 세트 (드라잉/오일 디펜더 올인원, 폼 앤 쉐이브 클렌저, 올인원 워시)</a>
								</td>
								<td>
									<em>
										<del>48,000원</del>
										9,999,000원
									</em>
								</td>
							</tr>

							<tr>
								<td><figure><img src="/pjtCom/pc/images/temp/product_110x110.jpg" alt=""></figure></td>
								<td>
									<ul class="flag">
										<li><span style="color:#a9a9a9; border:1px solid #cfcfcf; background:#e2e2e2;">일시품절</span></li><!-- 관리자에서 style등록 -->
										<li><span style="color:#ea303d; border:1px solid #ec0e41; background:#fff;">품절임박</span></li><!-- 관리자에서 style등록 -->
									</ul>
									<a href="#">엠솔릭 훈남의 정석 세트</a>
								</td>
								<td><em>9,999,000원</em></td>
							</tr>

							<tr>
								<td><figure><img src="/pjtCom/pc/images/temp/product_110x110.jpg" alt=""></figure></td>
								<td>
									<ul class="flag">
										<li><span style="color:#a9a9a9; border:1px solid #cfcfcf; background:#e2e2e2;">일시품절</span></li><!-- 관리자에서 style등록 -->
										<li><span style="color:#ea303d; border:1px solid #ec0e41; background:#fff;">품절임박</span></li><!-- 관리자에서 style등록 -->
									</ul>
									<a href="#">엠솔릭 훈남의 정석 세트</a>
								</td>
								<td><em>9,999,000원</em></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>

			<div class="btn-area">
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
	<!-- // 팝업 : 적용 가능 상품 -->

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
