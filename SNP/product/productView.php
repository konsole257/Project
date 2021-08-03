<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "PRODUCT";
	$path2Tit = "SKIN CARE";
	$path1Href = "/product/productList.php";
	$path2Href = "/product/productList.php";
	$pageClass = "product view";
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
				<div class="info-area">
					<!-- 반복 영역 // -->
					<div class="pic">
						<div class="swiper-container pic-swiper">
							<div class="swiper-wrapper">
								<span class="swiper-slide"><img src="/pjtCom/pc/images/temp/product_500x500_1.jpg" class="img" alt=""></span>
								<span class="swiper-slide"><img src="/pjtCom/pc/images/temp/product_500x500_2.jpg" class="img" alt=""></span>
							</div>
						</div>

						<div class="swiper-pagination"></div>

						<div class="gift-area">
							<span class="icon"></span>
							<dl class="gift">
								<dt>증정사은품</dt>

								<dd>리얼 큐텐 핸드크림</dd>
								<dd>아크시스 컨트롤 스킨 토너</dd>
								<dd>SD 더조은 황사방역 마스크</dd>
							</dl>
						</div>
					</div>


					<div class="info">
						<div class="top-area">
							<ul class="flag">
								<li><span>Bestseller</span></li>
								<li><span>Hot Item</span></li>
							</ul>

							<!-- 타임특가시 노출 // -->
							<div class="time">
								<span class="time-dday">D-</span><span class="time-day">0</span>
								<span class="time-h">00</span>:<span class="time-m">00</span>:<span class="time-s">00</span>
							</div>
							<script>
							$(document).ready(function(){
								//fn.countDownTimer('종료');
								fn.countDownTimer('2019-07-30 11:59:52');
							});
							</script>
							<!-- // 타임특가시 노출 -->

							<!-- 해시태그 등록시 노출 // -->
							<div class="hashtag">
								<a href="#">#원스텝클렌징</a>
								<a href="#">#원스텝클렌징</a>
							</div>
							<!-- // 해시태그 등록시 노출 -->

							<p class="name">[히든솔루션] 디렉터파이_히든랩 스킨 세이버 컨센트레이트</p>

							<p class="txt">미세먼지 같은 유해환경과 자외선, 블루라이트를 차단해주는 어반폴루션 크림</p>

							<p class="weight">50g / 1.46 oz.</p>

							<!-- 2019.07.25 : 추가 // -->
							<button type="button" class="btn smaller stroke black btn-download" onclick="fn.popupOpen('#coupon-download');">쿠폰 다운로드</button><!-- 쿠폰 다운로드 -->
							<!--<button type="button" class="btn smaller stroke black btn-download" onclick="fn.popupOpen('#coupon-no');">쿠폰 다운로드</button>--><!-- 쿠폰 없음 -->
							<!--<button type="button" class="btn smaller stroke black btn-download" onclick="fn.popupOpen('#coupon-login');">쿠폰 다운로드</button>--><!-- 로그인 확인 -->
							<!-- // 2019.07.25 : 추가 -->

							<div class="ea-area">
								<input type="number" title="수량 입력" value="1" data-min="1" data-max="99"><!-- data-min="최소값" data-max="최대값" -->
								<button tyle="button" class="btn-down" onclick="fn.optionEa(this, 'down'); priceCalcul('35000');">수량 낮추기</button>
								<button tyle="button" class="btn-up" onclick="fn.optionEa(this, 'up'); priceCalcul('35000');">수량 올리기</button>
							</div>

							<div class="price">
								<del>48,000원</del>
								<span>35,000원</span>
							</div>
						</div>

						<span class="select">
							<select title="옵션 선택" onchange="addItem(this);">
								<option>추가상품을 선택해주세요</option>
								<option>추가상품을 선택해주세요</option>
								<option>추가상품을 선택해주세요</option>
								<option>추가상품을 선택해주세요</option>
								<option>추가상품을 선택해주세요</option>
								<option>추가상품을 선택해주세요</option>
								<option>추가상품을 선택해주세요</option>
								<option>추가상품을 선택해주세요</option>
								<option>추가상품을 선택해주세요</option>
							</select>
						</span>

						<div class="scrollbar option">
							<ul>
								<!-- 20190.05.15 : 수정 // -->
								<li>
									<p class="name">SD 더조은 황사방역 마스크</p>

									<div class="ea-area">
										<input type="number" title="수량 입력" value="1" data-min="1" data-max="99"><!-- data-min="최소값" data-max="최대값" -->
										<button tyle="button" class="btn-down" onclick="fn.optionEa(this, 'down');">수량 낮추기</button>
										<button tyle="button" class="btn-up" onclick="fn.optionEa(this, 'up');">수량 올리기</button>
									</div>
									<div class="price">
										<span>35,000원</span>
									</div>
									<button type="button" class="btn-del" onclick="delItem(this);">삭제</button>
								</li>
								<!-- // 20190.05.15 : 수정 -->

								<li>
									<p class="name">SD 더조은 황사방역 마스크</p>
									<div class="ea-area">
										<input type="number" title="수량 입력" value="1" data-min="1" data-max="99">
										<button tyle="button" class="btn-down" onclick="fn.optionEa(this, 'down');">수량 낮추기</button>
										<button tyle="button" class="btn-up" onclick="fn.optionEa(this, 'up');">수량 올리기</button>
									</div>
									<div class="price">
										<span>35,000원</span>
									</div>
									<button type="button" class="btn-del"  onclick="delItem(this);">삭제</button>
								</li>
							</ul>
						</div>

						<!-- 2019.05.15 : 추가 // -->
						<script>
						var item = '';
							item += '<li>'
							item += '	<p class="name">SD 더조은 황사방역 마스크</p>'
							item += '	<div class="ea-area">'
							item += '		<input type="number" title="수량 입력" value="1" data-min="1" data-max="99">'
							item += '		<button tyle="button" class="btn-down" onclick="fn.optionEa(this, '+"'down'"+');">수량 낮추기</button>'
							item += '		<button tyle="button" class="btn-up" onclick="fn.optionEa(this, '+"'up'"+');">수량 올리기</button>'
							item += '	</div>'
							item += '	<div class="price">'
							item += '		<span>35,000원</span>'
							item += '	</div>'
							item += '	<button type="button" class="btn-del" onclick="delItem(this);">삭제</button>'
							item += '</li>'

						var addItem = function(target){
							var $this = $(target),
								$item = $this.closest('.select').siblings('.option').find('ul');

							if ($item.length === 0) {
								$('.info-area .option.scroll-content').append('<ul></ul>')
								$('.info-area .option.scroll-content ul').append(item);
							} else {
								$('.info-area .option.scroll-content ul').append(item);
							}
						}

						var delItem = function(target){
							var $this = $(target);

							if ($this.closest('.option').find('li').length <= 1) {
								$this.closest('ul').remove();
							} else {
								$this.parent('li').remove();
							}
						}

						var priceCalcul = function(price) {
							var price = price;

							console.log(price)
						}
						</script>
						<!-- // 2019.05.15 : 추가 -->

						<dl class="total-price">
							<dt>총 상품 금액</dt>
							<dd>
								<b>35,000원</b>
								<span>(<b>+1,050</b> P)</span>
							</dd>
						</dl>

						<div class="info-txt">
							<p>예상 적립금은 최종 결제 금액에 따라 달라질 수 있습니다.</p>
<!-- 2019.03.15// -->
							<p><span>배송비 <b>2,500원</b></span> (30,000원 이상 무료배송)</p>
<!-- //2019.03.15 -->
						</div>

						<div class="btn-area">
							<button type="button" class="btn fill black btn-buy">바로구매</button>
							<button type="button" class="btn stroke black btn-cart">장바구니</button>
						</div>

						<div class="npay">
							<img src="/pjtCom/pc/images/temp/npay.jpg" alt="">
						</div>
					</div>
				</div>

				<div class="add-info-area">
					<!-- 2019.03.14 : 태그추가 -->
					<div class="grade-area">
						<!-- 리뷰가 있을때만 출력 // -->
						<div class="grade">
							<div>
								<span class="one"></span><!-- 1점 -->
								<span class="one"></span>
								<span class="one"></span>
								<span class="half"></span><!-- 0.5점 -->
								<span class="blank"></span><!-- 0점 -->
							</div>
							<span class="point">3.5</span><!--평균 평점 계산 - 0.5는 0.5점, 0.5미만은 0점, 0.5초과는 1점으로 계산 -->
						</div>
						<!-- // 리뷰가 있을때만 출력 -->

						<p><b>여러분의 소중한 SNP 사용 리뷰를 남겨주세요.</b></p>
						<p>구매하신 상품의 후기를 작성해주시면 적립금을 드립니다. <span>(상품별 1회)</span></p>
						<small><span>텍스트 리뷰 100P</span> / <span>포토 리뷰 500P</span></small>
					</div>

					<!-- 2019.03.14 : 추가 // -->
					<div class="benefit">
						<dl>
							<dt>회원혜택</dt>
							<dd>
								무료배송 쿠폰 및 회원 등급 별로 지급되는 할인 쿠폰 등<br> SNP MALL 회원 만이 누릴 수 있는 특별 혜택을 만나보세요.
							</dd>

							<!-- 관련이벤트가 있을경우 출력 // -->
							<dt>관련 이벤트</dt>
							<dd><a href="#">히든랩 상품 구매 시 쇼핑백 증정!</a></dd>
							<dd><a href="#">SNP 전 브랜드 상관 없이 3만원 이상 구매 시, 15% 할인!</a></dd>
							<!-- // 관련이벤트가 있을경우 출력 -->
						</dl>
					</div>
					<!-- // 2019.03.14 : 추가 -->
				</div>

				<!-- 2019.03.15 : 회원혜택이 없다면 grade-area에 full 클래스 추가 -->
				<div class="add-info-area">
					<!-- 2019.03.14 : 태그추가 -->
					<div class="grade-area full">
						<!-- 리뷰가 있을때만 출력 // -->
						<div class="grade">
							<div>
								<span class="one"></span><!-- 1점 -->
								<span class="one"></span>
								<span class="one"></span>
								<span class="half"></span><!-- 0.5점 -->
								<span class="blank"></span><!-- 0점 -->
							</div>
							<span class="point">3.5</span><!--평균 평점 계산 - 0.5는 0.5점, 0.5미만은 0점, 0.5초과는 1점으로 계산 -->
						</div>
						<!-- // 리뷰가 있을때만 출력 -->

						<p><b>여러분의 소중한 SNP 사용 리뷰를 남겨주세요.</b></p>
						<p>구매하신 상품의 후기를 작성해주시면 적립금을 드립니다. <span>(상품별 1회)</span></p>
						<small><span>텍스트 리뷰 100P</span> / <span>포토 리뷰 500P</span></small>
					</div>
				</div>
				<!-- //2019.03.15 : 회원혜택이 없다면 grade-area에 full 클래스 추가 -->

				<!-- 2019.03.15 : 회원혜택만 존재할 경우// -->
				<div class="add-info-area">
					<div class="grade-area">
						<!-- 리뷰가 있을때만 출력 // -->
						<div class="grade">
							<div>
								<span class="one"></span><!-- 1점 -->
								<span class="one"></span>
								<span class="one"></span>
								<span class="half"></span><!-- 0.5점 -->
								<span class="blank"></span><!-- 0점 -->
							</div>
							<span class="point">3.5</span><!--평균 평점 계산 - 0.5는 0.5점, 0.5미만은 0점, 0.5초과는 1점으로 계산 -->
						</div>
						<!-- // 리뷰가 있을때만 출력 -->

						<p><b>여러분의 소중한 SNP 사용 리뷰를 남겨주세요.</b></p>
						<p>구매하신 상품의 후기를 작성해주시면 적립금을 드립니다. <span>(상품별 1회)</span></p>
						<small><span>텍스트 리뷰 100P</span> / <span>포토 리뷰 500P</span></small>
					</div>

					<div class="benefit">
						<dl>
							<dt>회원혜택</dt>
							<dd>
								무료배송 쿠폰 및 회원 등급 별로 지급되는 할인 쿠폰 등<br> SNP MALL 회원 만이 누릴 수 있는 특별 혜택을 만나보세요.
							</dd>
							<dd>
								모든 회원 등급 월 10만원 이상 구매 시 1만원 캐쉬백 포인트를 증정합니다.
							</dd>
						</dl>
					</div>
				</div>
				<!-- //2019.03.15 : 회원혜택만 존재할 경우 -->

				<div class="detail-area">
					<div class="tab-menu">
						<a href="#detail" class="active">상품 상세</a>
						<a href="#info">상품정보 안내</a>
						<a href="#review" onclick="fn.reviewMasonry();fn.reviewThumbSize();">리뷰(13)</a><!-- 2019.04.25 : 수정 -->
						<a href="#qna">상품문의</a>
					</div>

					<div id="detail" class="tab-contents detail active">
						<? include $_SERVER["DOCUMENT_ROOT"]."/product/productViewDetail.php" ?>
					</div>

					<div id="info" class="tab-contents info">
						<? include $_SERVER["DOCUMENT_ROOT"]."/product/productViewInfo.php" ?>
					</div>

					<div id="review" class="tab-contents review">
						<? include $_SERVER["DOCUMENT_ROOT"]."/product/productViewReview.php" ?>
					</div>

					<div id="qna" class="tab-contents qna">
						<? include $_SERVER["DOCUMENT_ROOT"]."/product/productViewQna.php" ?>
					</div>
				</div>


			</div>
		</div>
	</main>
	<!-- //contents -->

	<!-- 팝업 : 쿠폰없음 : 2019.07.25 : 추가 // -->
	<div id="coupon-no" class="alert coupon-no">
		<div class="inner">
			<div class="contents">
			다운로드 가능한 쿠폰이 없습니다.
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close" onclick="fn.popupClose();">확인</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 쿠폰없음 -->

	<!-- 팝업 : 로그인 : 2019.07.25 : 추가 // -->
	<div id="coupon-login" class="alert coupon-login">
		<div class="inner">
			<div class="contents">
			로그인 후 확인 가능합니다.<br>
			로그인 하시겠습니까?
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close" onclick="fn.popupClose();">확인</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 로그인 -->

	<!-- 팝업 : 쿠폰 다운로드 : 2019.07.25 : 추가 // -->
	<div id="coupon-download" class="popup coupon-download">
		<div class="inner">
			<header class="header">
				<h2 class="tit">다운로드 가능한 쿠폰</h2>

				<button type="button" class="btn-close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<ul class="scrollbar">
					<li>
						<p class="name">히든랩 상품 3,000원 할인 쿠폰</p>
						<p class="date">2019.01.16 – 2019.01.23</p>
						<button type="button" class="btn fill black btn-coupon">쿠폰 다운로드</button>
					</li>
					<li>
						<p class="name">히든랩 상품 3,000원 할인 쿠폰</p>
						<p class="date">2019.01.16 – 2019.01.23</p>
						<button type="button" class="btn stroke black btn-coupon">사용가능</button>
					</li>
					<li>
						<p class="name">히든랩 상품 3,000원 할인 쿠폰</p>
						<p class="date">2019.01.16 – 2019.01.23</p>
						<button type="button" class="btn stroke black btn-coupon">사용가능</button>
					</li>
					<li>
						<p class="name">히든랩 상품 3,000원 할인 쿠폰</p>
						<p class="date">2019.01.16 – 2019.01.23</p>
						<button type="button" class="btn stroke black btn-coupon">사용가능</button>
					</li>
				</ul>
			</div>

			<div class="btn-area">
				<button type="button" class="btn fill black btn-close" onclick="fn.popupClose();">확인</button>
			</div>
		</div>
	</div>
	<!-- // 팝업 : 쿠폰 다운로드 -->

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
