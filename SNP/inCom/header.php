<noscript>
	이 사이트를 이용하기 위해서 자바스크립트를 활성화 시킬 필요가 있습니다.
	<a href="http://www.enable-javascript.com/ko/" target="_blank">브라우저에서 자바스크립트를 활성화하는 방법</a>을 참고 하세요.
</noscript>

<!-- loading : 2019.06.24 // -->
<!-- <?php include $_SERVER["DOCUMENT_ROOT"]."/loading.php" ?> -->
<!-- // loading : 2019.06.24 -->

<div class="skip">
	 <a href="#contents">본문으로 건너뛰기</a>
</div>

<!-- 상단 띠배너 : 2019.04.09 : 추가 // -->
<aside class="top-banner"><!-- 오늘 하루 열지않음 시 style="display:none;"-->
	<div class="inner">
		<a href="#"><img src="/pjtCom/pc/images/temp/top_banner.jpg" alt="" class="img"></a>
		<button type="button" class="btn-close" onclick="$('.top-banner').hide(); $('#header .top-area, #header .left-area').addClass('fixed');">닫기</button>
		<label class="btn-today"><input type="checkbox"><span>오늘은 그만보기</span></label>
	</div>
</aside>
<!-- // 상단 띠배너 -->

<aside id="notify">
	<p style="display:none;"><span><a href="#">20% 할인쿠폰이 40% 할인쿠폰</a><button type="button" class="btn-close">오늘 하루 열지않음</button></span></p><!-- 오늘 하루 열지않음 시 style="display:none;"-->
	<p><span><a href="#">20% 할인쿠폰이 40% 할인쿠폰이 도착했습니다.</a><button type="button" class="btn-close">오늘 하루 열지않음</button></span></p>
</aside>

<header id="header">
	<div class="top-area">
		<!-- <h1 class="logo"><a href="#">SD SHOP</a></h1> 2019.03.25 : 삭제 -->

		<a href="#" class="btn-search">검색</a>
		<div class="search-area">
			<div class="inner">
				<form>
					<fieldset>
						<legend class="hide">검색</legend>

						<input type="text" placeholder="크리스마스 선물 추천" title="검색어 입력">
						<button type="submit" class="btn-search">검색</button>
					</fieldset>
				</form>

				<div class="recom">
					<a href="#">#애정템</a>
					<a href="#">#최애템</a>
					<a href="#">#수분촉촉</a>
				</div>

				<!-- 2019.09.24 // -->
				<div class="autosearch-area">
					<ul class="scrollbar">
						<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
						<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
						<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
						<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
						<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
						<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
						<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
						<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
						<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
						<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
						<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
						<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
						<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
						<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
						<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
						<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
						<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
						<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
						<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
						<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
						<li><a href="#">바다제비집 W+ 브라이트닝 크림</a></li>
					</ul>
				</div>
				<!-- // 2019.09.24 -->

				<button type="button" class="btn-close">닫기</button>
			</div>
		</div>

		<div class="brand">
			<a href="/index.php" <? if ($shopName == "snpmall") { ?>class="active"<? } ?>>SNP MALL</a><!-- 해당 페이지에서 class="active" -->
			<a href="/snp.php" <? if ($shopName == "snp") { ?>class="active"<? } ?>>SNP</a>
			<a href="/hddn.php" <? if ($shopName == "hddn") { ?>class="active"<? } ?>>hddn=lab</a>
			<a href="/msolic.php" <? if ($shopName == "msolic") { ?>class="active"<? } ?>>M’SOLIC</a>
			<a href="/daywith.php" <? if ($shopName == "daywith") { ?>class="active"<? } ?>>DAYWITH</a>
		</div>
		<div class="personal">
			<span class="btn-mypage">마이페이지</span>
			<!-- 로그인 전 // -->
			<div id="mypage-area" class="mypage-area">
				<ul>
					<li><a href="#">주문배송 조회</a></li>
					<li><a href="#">회원정보 수정</a></li>
					<li><a href="#">로그인</a></li>
				</ul>
			</div>
			<!-- // 로그인 전 -->

			<!-- 로그인 후 // -->
			<!-- <div id="mypage-area" class="mypage-area">
				<p><b>박보검</b>님</p>
				<ul>

					<li><a href="#">회원정보 수정</a></li>
					<li><a href="#">로그아웃</a></li>
				</ul>
			</div> -->
			<!-- // 로그인 후 -->

			<span class="btn-cart active">장바구니</span><!-- 장바구니에 상품이 있을경우 class="active" -->
			<!-- 장바구니에 상품이 없을경우 // -->
			<!-- <div class="cart-area">
				<p class="nodata">장바구니에 담긴 상품이 없습니다.</p>
			</div> -->
			<!-- // 장바구니에 상품이 없을경우 -->

			<!-- 장바구니에 상품이 있을경우 // -->
			<div class="cart-area">
				<p class="txt">장바구니 상품 6 개</p>
				<ul class="scrollbar">
					<li>
						<div class="pic"><img src="/pjtCom/pc/images/temp/product_110x110.jpg" alt="" class="img"></div>
						<div class="info">
							<span class="name">퍼핏 바이오 셀 마스크 더블 수딩퍼핏</span>
							<span class="ea">1개</span>
						</div>
					</li>

					<li>
						<div class="pic"><img src="/pjtCom/pc/images/temp/product_110x110.jpg" alt="" class="img"></div>
						<div class="info">
							<span class="name">퍼핏 바이오 셀 마스크 더블 수딩</span>
							<span class="ea">1개</span>
						</div>
					</li>

					<li>
						<div class="pic"><img src="/pjtCom/pc/images/temp/product_110x110.jpg" alt="" class="img"></div>
						<div class="info">
							<span class="name">퍼핏 바이오 셀 마스크 더블 수딩</span>
							<span class="ea">1개</span>
						</div>
					</li>

					<li>
						<div class="pic"><img src="/pjtCom/pc/images/temp/product_110x110.jpg" alt="" class="img"></div>
						<div class="info">
							<span class="name">퍼핏 바이오 셀 마스크 더블 수딩</span>
							<span class="ea">1개</span>
						</div>
					</li>
				</ul>

				<a href="/order/cart.php" class="btn-cart">장바구니 가기</a>
			</div>
			<!-- // 장바구니에 상품이 있을경우 -->
		</div>
	</div>

	<button type="button" class="btn-left-open">주메뉴 열기</button>

	<div class="left-area">
		<h1 class="logo"><a href="#"><?= $shopName ?></a></h1>

		<nav id="gnb">
			<h1 class="hide">주 메뉴</h1>

			<ul class="promotion">
				<li><a href="#">SKIN SAVIOR</a></li>
				<li><a href="#">GOD BREATH YOU</a></li>
			</ul>

			<ul>
				<li>
					<a href="#" class="brand">BRAND</a>
					<ul class="depth2">
						<li><a href="#" class="">SNP MALL</a></li><!-- 해당페이지에서 class="active" -->
						<li><a href="#">SNP</a></li>
						<li><a href="#">hddn=lab</a></li>
						<li><a href="#">M'SOLIC</a></li>
						<li><a href="#">DAYWITH</a></li>
					</ul>
				</li>
				<li>
					<a href="/product/productList.php" class="product active">PRODUCT</a><!-- 새로운 상품이 있을경우 class="active" -->
					<ul class="depth2">
						<li><a href="#" class="">SKIN TYPE</a></li><!-- 해당페이지에서 class="active" -->
						<li><a href="#">SKIN CARE</a></li>
						<li><a href="#">HAIR/BODY</a></li>
						<li><a href="#">MAKE UP</a></li>
						<li><a href="#">MEN</a></li>
						<li><a href="#">FEMINNE</a></li>
						<li><a href="#">SPECIAL</a></li>
						<li><a href="#">SET</a></li>
					</ul>
				</li>
				<li><a href="/product/productList.php" class="new active">BEST</a></li><!-- 새로운 상품이 있을경우 class="active" -->

				<li><a href="/product/productList.php" class="sale active">SALE</a></li><!-- 새로운 상품이 있을경우 class="active" -->
			</ul>

			<ul>
				<li><a href="/event/ingList.php">EVENT</a></li><!-- 해당페이지에서 class="active" -->
				<li><a href="/media/media.php">MEDIA</a></li><!-- 해당페이지에서 class="active" -->
				<li><a href="/review/review.php">REVIEW</a></li><!-- 해당페이지에서 class="active" -->
			</ul>

			<a href="/cscenter/noticeList.php" class="cscenter">CS CENTER</a><!-- 해당페이지에서 class="active" -->
		</nav>
	</div>
</header>

<hr>
