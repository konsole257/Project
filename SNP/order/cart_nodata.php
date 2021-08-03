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
											<th colspan="2" class="txt-left"><label><input type="checkbox" data-name="all"><span>전체 선택(0)</span></label></th>
											<th>상품정보</th>
											<th>가격</th>
											<th>최종 금액</th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<td colspan="5">
												<div class="info-nodata">
													장바구니에 담긴 상품이 없습니다.
													<button type="button" class="btn fill black">쇼핑 계속하기</button>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
								<!-- // list -->

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
										<em>0원</em>
									</li>
									<li>
										<!-- 2019.03.15// -->
										<strong>- 상품할인</strong>
										<!-- //2019.03.15 -->
										<em>0원</em>
									</li>
									<li>
										<strong>- 등급할인(셀럽)</strong><!-- 2019.03.22 : 수정 -->
										<em>0원</em>
									</li>
									<li class="txt-delivery">
										<strong>+ 배송비</strong>
										<em>0원</em>
									</li>
								</ul>
								<!-- // 총상품금액 -->

								<!-- 결제예상금액 // -->
								<div class="txt-orderprice">
									<strong>결제 예상금액</strong>
									<span><em>0</em>원</span>
									<!-- 2019.03.15// -->
									<p class="validate-pass">총 결제 예상금액이 30,000원 미만일 경우 <br>배송비가 부과됩니다.</p>
									<!-- //2019.03.15 -->
								</div>
								<!-- // 결제예상금액 -->

								<!-- btn // -->
								<div class="btn-area">
									<a href="#" class="btn fill gray btn-buy">주문하기</a>
									<div class="npay">
										<img src="/pjtCom/pc/images/temp/npay2.jpg" alt="">
									</div>
								</div>
								<!-- // btn -->
							</div>
						</fieldset>
					</form>
				</div>
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
