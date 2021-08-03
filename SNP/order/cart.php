<!DOCTYPE html>
<html lang="ko">

<?
	$shopName = "snpmall"; /* 샵 네임 */
	$path1Tit = "장바구니";
	$path2Tit = "";
	$path1Href = "/order/cart.php";
	$path2Href = "";
	$pageClass = "cart";
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
			</div>

			<div class="body">
				<div class="cart-area">
					<form>
						<fieldset>
							<legend class="hide">상품정보</legend>

							<div class="left-area">
								<!-- list // -->
								<table>
									<caption class="hide">상품정보 목록</caption>
									<colgroup>
										<col style="width:53px">
										<col style="width:130px">
										<col>
										<col style="width:120px">
										<col style="width:120px">
									</colgroup>

									<thead>
										<tr>
											<th colspan="2" class="txt-left"><label><input type="checkbox" data-name="all" checked><span>전체 선택(3)</span></label></th>
											<th>상품정보</th>
											<th>가격</th>
											<th>최종 금액</th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<td><label><input type="checkbox" data-name="check" checked><span></span></label></td>
											<td><figure><img src="/pjtCom/pc/images/temp/product_110x110.jpg" alt=""></figure></td>
											<td>
												<a href="#">엠솔릭 훈남의 정석 세트 (드라잉/오일 디펜더 올인원, 폼 앤 쉐이브 클렌저, 올인원 워시)</a>
												<div class="ea-area">
													<input type="number" title="수량 입력" value="1" data-min="1" data-max="99"><!-- data-min="최소값" data-max="최대값" -->
													<button tyle="button" class="btn-down" onclick="fn.optionEa(this, 'down');">수량 낮추기</button>
													<button tyle="button" class="btn-up" onclick="fn.optionEa(this, 'up');">수량 올리기</button>
												</div>
											</td>
											<td><del>48,000원</del><em>9,999,000원</em></td>
											<td><em>9,999,000원</em></td>
										</tr>

										<tr class="disabled"><!-- 2019.06.24 : 일시품절, 품절일경우 class="disabled" -->
											<td><label><input type="checkbox"><span></span></label></td><!-- 2019.06.24 : 일시품절, 품절일경우 data-name="check" checked 제거 -->
											<td><figure><img src="/pjtCom/pc/images/temp/product_110x110.jpg" alt=""></figure></td>
											<td>
												<!-- 2019.06.24 : 일시품절 아이콘 // -->
												<ul class="flag">
													<li><span class="soldout">일시품절</span></li>
												</ul>
												<!-- // 일시품절 아이콘 -->
												<a href="#">엠솔릭 훈남의 정석 세트 (드라잉/오일 디펜더 올인원, 폼 앤 쉐이브 클렌저, 올인원 워시)</a>
												<div class="ea-area">
													<input type="number" title="수량 입력" value="1" data-min="1" data-max="99"><!-- data-min="최소값" data-max="최대값" -->
													<button tyle="button" class="btn-down" onclick="fn.optionEa(this, 'down');">수량 낮추기</button>
													<button tyle="button" class="btn-up" onclick="fn.optionEa(this, 'up');">수량 올리기</button>
												</div>
												<p class="txt-gifts">[사은품] 애니멀 타이거 온열 아이 마스크/과일 젤라또 진정 마스크/싱싱 비타 씨 젤리 마스크</p>
											</td>
											<td><del>48,000원</del><em>9,999,000원</em></td>
											<td><em>9,999,000원</em></td>
										</tr>

										<tr>
											<td><label><input type="checkbox" data-name="check" checked><span></span></label></td>
											<td><figure><img src="/pjtCom/pc/images/temp/product_110x110.jpg" alt=""></figure></td>
											<td>
												<a href="#">[추가상품] LAB+ 에버라스팅 듀얼 앰플</a>
												<div class="ea-area">
													<input type="number" title="수량 입력" value="1" data-min="1" data-max="99"><!-- data-min="최소값" data-max="최대값" -->
													<button tyle="button" class="btn-down" onclick="fn.optionEa(this, 'down');">수량 낮추기</button>
													<button tyle="button" class="btn-up" onclick="fn.optionEa(this, 'up');">수량 올리기</button>
												</div>
											</td>
											<td><em>9,999,000원</em></td>
											<td><em>9,999,000원</em></td>
										</tr>
									</tbody>
								</table>
								<!-- // list -->

								<div class="btn-area">
									<button type="button" class="btn small stroke black">선택 삭제</button>
								</div>

								<!-- banner // -->
								<div class="banner">
									<a href="#"><img src="/pjtCom/pc/images/temp/cart_750x.jpg" alt=""></a>
								</div>
								<!-- // banner -->
							</div>

							<div class="right-area">
								<!-- 총상품금액 // -->
								<ul>
									<li class="txt-totprice">
										<strong>총 상품금액</strong>
										<em>135,000원</em>
									</li>
									<li>
										<!-- 2019.03.15// -->
										<strong>- 상품할인</strong>
										<!-- //2019.03.15 -->
										<em>- 9,000원</em>
									</li>
									<li>
										<strong>- 등급할인(셀럽)</strong><!-- 2019.03.22 : 수정 -->
										<em>- 7,000원</em>
									</li>
									<li class="txt-delivery">
										<strong>+ 배송비</strong>
										<em>3,000원</em>
									</li>
								</ul>
								<!-- // 총상품금액 -->

								<!-- 결제예상금액 // -->
								<div class="txt-orderprice">
									<ul>
										<li class="txt-total">
											<strong>결제 예상금액</strong>
											<span><em>40,850</em>원</span>
										</li>
									</ul>

									<div class="info-txt">
										<p>총 결제 예상금액이 30,000원 미만일 경우 <br>배송비가 부과됩니다.</p>
										<p>회원등급별 상품 할인혜택이 다릅니다.</p>
										<p>타임세일 등 특정 프로모션 상품의 경우<br>포인트적립이 제한됩니다.</p>
									</div>
								</div>
								<!-- // 결제예상금액 -->

								<!-- btn // -->
								<div class="btn-area">
									<a href="#" class="btn fill black btn-buy">주문하기</a>
									<div class="npay">
										<img src="/pjtCom/pc/images/temp/npay2.jpg" alt="">
									</div>
								</div>
								<!-- // btn -->
							</div>
						</fieldset>
					</form>
				</div>

				<!-- 배송비 절약 상품 // -->
				<section class="with-area">
					<h2 class="tit">배송비 절약 상품</h2>

					<div class="swiper-container with-swiper">
						<ul class="product-list small swiper-wrapper">
							<!-- 반복 영역 // -->
							<li class="swiper-slide">
								<ul class="flag">
									<li><span style="color:#000; border:1px solid #000; background:#fff;">Bestseller</span></li><!-- 관리자에서 style등록 -->
									<li><span style="color:#eb0f29; border:1px solid #f5b4bb; background:#fff;">Hot Item</span></li><!-- 관리자에서 style등록 -->
									<li><span style="color:#fff; background:#b172f4;">디렉터파이 선정<br>착한 보습크림</span></li><!-- 관리자에서 style등록 -->
								</ul>

								<a href="#"><span class="thumb"><img src="/pjtCom/pc/images/temp/product_226x226_2.jpg" class="img" alt=""></span></a>

								<div class="info">
									<a href="#">
										<p class="name ellipsis">[디렉터파이 선정] 히든랩 스킨 세이버 컨센트레이트1</p>
									</a>
								</div>

								<div class="price">
									<del>48,000원</del>
									<span>35,000원</span>
								</div>

								<a href="#cart" class="btn-cart" onclick="fn.popupOpen('#cart')">장바구니 담기/빼기</a>
							</li>
							<!-- // 반복 영역 -->

							<li class="swiper-slide">
								<ul class="flag">
									<li><span style="color:#000; border:1px solid #000; background:#fff;">Bestseller</span></li><!-- 관리자에서 style등록 -->
									<li><span style="color:#eb0f29; border:1px solid #f5b4bb; background:#fff;">Hot Item</span></li><!-- 관리자에서 style등록 -->
									<li><span style="color:#fff; background:#b172f4;">디렉터파이 선정<br>착한 보습크림</span></li><!-- 관리자에서 style등록 -->
								</ul>

								<a href="#"><span class="thumb"><img src="/pjtCom/pc/images/temp/product_226x226_2.jpg" class="img" alt=""></span></a>

								<div class="info">
									<a href="#">
										<p class="name ellipsis">[디렉터파이 선정] 히든랩 스킨 세이버 컨센트레이트</p>
									</a>
								</div>

								<div class="price">
									<del>48,000원</del>
									<span>35,000원</span>
								</div>

								<a href="#cart" class="btn-cart" onclick="fn.popupOpen('#cart')">장바구니 담기/빼기</a>
							</li>

							<li class="swiper-slide">
								<ul class="flag">
									<li><span style="color:#000; border:1px solid #000; background:#fff;">Bestseller</span></li><!-- 관리자에서 style등록 -->
									<li><span style="color:#eb0f29; border:1px solid #f5b4bb; background:#fff;">Hot Item</span></li><!-- 관리자에서 style등록 -->
									<li><span style="color:#fff; background:#b172f4;">디렉터파이 선정<br>착한 보습크림</span></li><!-- 관리자에서 style등록 -->
								</ul>

								<a href="#"><span class="thumb"><img src="/pjtCom/pc/images/temp/product_226x226_2.jpg" class="img" alt=""></span></a>

								<div class="info">
									<a href="#">
										<p class="name ellipsis">[디렉터파이 선정] 히든랩 스킨 세이버 컨센트레이트</p>
									</a>
								</div>

								<div class="price">
									<del>48,000원</del>
									<span>35,000원</span>
								</div>

								<a href="#cart" class="btn-cart" onclick="fn.popupOpen('#cart')">장바구니 담기/빼기</a>
							</li>

							<li class="swiper-slide">
								<ul class="flag">
									<li><span style="color:#000; border:1px solid #000; background:#fff;">Bestseller</span></li><!-- 관리자에서 style등록 -->
									<li><span style="color:#eb0f29; border:1px solid #f5b4bb; background:#fff;">Hot Item</span></li><!-- 관리자에서 style등록 -->
									<li><span style="color:#fff; background:#b172f4;">디렉터파이 선정<br>착한 보습크림</span></li><!-- 관리자에서 style등록 -->
								</ul>

								<a href="#"><span class="thumb"><img src="/pjtCom/pc/images/temp/product_226x226_2.jpg" class="img" alt=""></span></a>

								<div class="info">
									<a href="#">
										<p class="name ellipsis">[디렉터파이 선정] 히든랩 스킨 세이버 컨센트레이트</p>
									</a>
								</div>

								<div class="price">
									<del>48,000원</del>
									<span>35,000원</span>
								</div>

								<a href="#cart" class="btn-cart" onclick="fn.popupOpen('#cart')">장바구니 담기/빼기</a>
							</li>

							<li class="swiper-slide">
								<ul class="flag">
									<li><span style="color:#000; border:1px solid #000; background:#fff;">Bestseller</span></li><!-- 관리자에서 style등록 -->
									<li><span style="color:#eb0f29; border:1px solid #f5b4bb; background:#fff;">Hot Item</span></li><!-- 관리자에서 style등록 -->
									<li><span style="color:#fff; background:#b172f4;">디렉터파이 선정<br>착한 보습크림</span></li><!-- 관리자에서 style등록 -->
								</ul>

								<a href="#"><span class="thumb"><img src="/pjtCom/pc/images/temp/product_226x226_2.jpg" class="img" alt=""></span></a>

								<div class="info">
									<a href="#">
										<p class="name ellipsis">[디렉터파이 선정] 히든랩 스킨 세이버 컨센트레이트</p>
									</a>
								</div>

								<div class="price">
									<del>48,000원</del>
									<span>35,000원</span>
								</div>

								<a href="#cart" class="btn-cart" onclick="fn.popupOpen('#cart')">장바구니 담기/빼기</a>
							</li>

							<li class="swiper-slide">
								<ul class="flag">
									<li><span style="color:#000; border:1px solid #000; background:#fff;">Bestseller</span></li><!-- 관리자에서 style등록 -->
									<li><span style="color:#eb0f29; border:1px solid #f5b4bb; background:#fff;">Hot Item</span></li><!-- 관리자에서 style등록 -->
									<li><span style="color:#fff; background:#b172f4;">디렉터파이 선정<br>착한 보습크림</span></li><!-- 관리자에서 style등록 -->
								</ul>

								<a href="#"><span class="thumb"><img src="/pjtCom/pc/images/temp/product_226x226_2.jpg" class="img" alt=""></span></a>

								<div class="info">
									<a href="#">
										<p class="name ellipsis">[디렉터파이 선정] 히든랩 스킨 세이버 컨센트레이트</p>
									</a>
								</div>

								<div class="price">
									<del>48,000원</del>
									<span>35,000원</span>
								</div>

								<a href="#cart" class="btn-cart" onclick="fn.popupOpen('#cart')">장바구니 담기/빼기</a>
							</li>
						</ul>

						<div class="swiper-button-next"></div>
						<div class="swiper-button-prev"></div>
					</div>
				</section>
				<!-- // 배송비 절약 상품 -->
			</div>
		</div>
	</main>
	<!-- //contents -->

	<!-- footer// -->
	<? include $_SERVER["DOCUMENT_ROOT"]."/inCom/footer.php" ?>
	<!-- //footer -->
</div>

</body>
</html>
