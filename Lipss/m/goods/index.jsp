<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
	<!-- config// -->
	<%@ include file="/m/inCom/_config.jsp" %>
	<!-- //config -->

	<link rel="stylesheet" type="text/css" href="/m/mpjtCom/css/sub.css" />
	<title>LIPSS</title>
	<script>
	$(window).load(function(){
		var $grid = $('.goods-list').imagesLoaded( function(){
			$grid.masonry({
				itemSelector: '.goods-item'
			});
		});
	});
	</script>
</head>
<body class="goods">
<div id="wrap" class="index">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- timeline// -->
		<div class="timeline">
			<ul>
				<li>GOODS</li>
				<li>YG</li>
				<li><strong>WINNER</strong></li>
			</ul>
		</div>
		<!-- //timeline -->

		<!-- filter// -->
		<div class="filter">
			<form>
				<fieldset>
					<legend class="hide">Search</legend>
					<div class="ls">
						<!-- input checked="checked" 로 기본 일경우 search result 영역 활성화됨 -->
						<a href="#" class="btn-artist">ARTIST</a>
						<ul>
							<li><label><input type="radio" name="artist" title="ARTIST1" />ARTIST1</label></li>
							<li><label><input type="radio" name="artist" title="ARTIST2" />ARTIST2</label></li>
							<li><label><input type="radio" name="artist" title="ARTIST3" />ARTIST3</label></li>
							<li><label><input type="radio" name="artist" title="ARTIST4" />ARTIST4</label></li>
							<li><label><input type="radio" name="artist" title="ARTIST5" />ARTIST5</label></li>
						</ul>
						<a href="#" class="btn-theme">GALLERY</a>
						<ul>
							<li><label><input type="checkbox" name="gallery1" title="GALLERY1"/>GALLERY1</label></li>
							<li><label><input type="checkbox" name="gallery2" title="강승윤" />강승윤</label></li>
							<li><label><input type="checkbox" name="gallery3" title="이승훈" />이승훈</label></li>
							<li><label><input type="checkbox" name="gallery4" title="하와이" />하와이</label></li>
						</ul>
						<a href="#" class="btn-member">THEME</a>
						<ul>
							<li><label><input type="checkbox" name="theme1" title="THEME1" />THEME1</label></li>
							<li><label><input type="checkbox" name="theme2" title="THEME2" />THEME2</label></li>
							<li><label><input type="checkbox" name="theme3" title="레드" />레드</label></li>
							<li><label><input type="checkbox" name="theme4" title="블루" />블루</label></li>
							<li><label><input type="checkbox" name="theme5" title="런던" />런던</label></li>
							<li><label><input type="checkbox" name="theme6" title="런던" />런던</label></li>
							<li><label><input type="checkbox" name="theme7" title="Group photo" />Group photo</label></li>
						</ul>
					</div>
					<!-- result// -->
					<div class="result">
						<div class="rls"></div>
						<p>
							<a href="#" class="btn-refresh">Refresh</a>
							<a href="#" class="btn-search">Search</a>
						</p>
					</div>
					<!-- //result -->
				</fieldset>
			</form>
		</div>
		<!-- //filter -->

<!-- 수정 : 2018.10.30 // -->
		<!-- 현재 페이지 모두 담기 // -->
		<div class="goods_cart_all">
			<button  type="button" class="btn_cartall">현재 페이지 모두 담기 <small>Add All to Cart</small></button>
			<a href="#" class="btn-popinfo">!</a>
			<div class="popinfo">
				<p>
					현재 목록에 보여지고 있는 상품을 장바구니로 모두 담기가 가능한 기능입니다. 최하위 옵션을 기준으로 품절인 상품은 제외하고 장바구니에 담기게 됩니다.
				</p>
			</div>
		</div>
		<!-- // 현재 페이지 모두 담기 -->
<!-- // 수정 : 2018.10.30 -->

		<!-- banner// -->
		<div class="ban">
			<a href="#"><img src="/m/mpjtCom/images/temp/img_ban_720x280.jpg" alt="EVERYD4Y COMEBACK CUT 04 / 14 12:00 ~ 05 / 06 18:00" /></a>
		</div>
		<!-- //banner -->

		<!-- list// -->
		<div class="goodslist">
			<div class="sti">
				<p class="tot">총 <em>20</em>개</p>
				<p class="sort">
					<a href="#" class="active">최신순</a>
					<a href="#">판매순</a>
				</p>
			</div>
			<div class="goods-list">
				<!-- 상품없음 : 추가 : 2018.06.01 // -->
				<div class="nodata">
					판매중인 상품이 없습니다.
				</div>
				<!-- // 상품없음 : 추가 : 2018.06.01 -->

				<div class="goods-item">
					<a href="/m/goods/detail.jsp">
						<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="[젝스키스] Now, Here, We - in Hawaii We, 은지원 no.2" />
					</a>
				</div>
				<div class="goods-item soldout">
					<a href="/m/goods/detail.jsp">
						<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="[젝스키스] Now, Here, We - in Hawaii We, 은지원 no.2" />
						<span class="soldout">SOLD OUT</span>
					</a>
				</div>
				<div class="goods-item">
					<a href="/m/goods/detail.jsp">
						<img src="/w/pjtCom/images/temp/img_goods_440x294.jpg" alt="[젝스키스] Now, Here, We - in Hawaii We, 은지원 no.2" />
					</a>
				</div>
				<div class="goods-item">
					<a href="/m/goods/detail.jsp">
						<img src="/w/pjtCom/images/temp/img_goods_440x294.jpg" alt="[젝스키스] Now, Here, We - in Hawaii We, 은지원 no.2" />
					</a>
				</div>
				<div class="goods-item">
					<a href="/m/goods/detail.jsp">
						<img src="/w/pjtCom/images/temp/img_goods_440x294.jpg" alt="[젝스키스] Now, Here, We - in Hawaii We, 은지원 no.2" />
					</a>
				</div>
				<div class="goods-item">
					<a href="/m/goods/detail.jsp">
						<img src="/w/pjtCom/images/temp/img_goods_440x294.jpg" alt="[젝스키스] Now, Here, We - in Hawaii We, 은지원 no.2" />
					</a>
				</div>
				<div class="goods-item">
					<a href="/m/goods/detail.jsp">
						<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="[젝스키스] Now, Here, We - in Hawaii We, 은지원 no.2" />
					</a>
				</div>
				<div class="goods-item">
					<a href="/m/goods/detail.jsp">
						<img src="/w/pjtCom/images/temp/img_goods_440x294.jpg" alt="[젝스키스] Now, Here, We - in Hawaii We, 은지원 no.2" />
					</a>
				</div>
				<div class="goods-item">
					<a href="/m/goods/detail.jsp">
						<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="[젝스키스] Now, Here, We - in Hawaii We, 은지원 no.2" />
					</a>
				</div>
				<div class="goods-item">
					<a href="/m/goods/detail.jsp">
						<img src="/w/pjtCom/images/temp/img_goods_440x294.jpg" alt="[젝스키스] Now, Here, We - in Hawaii We, 은지원 no.2" />
					</a>
				</div>
			</div>
			<%-- <div class="paging paging_type2">
				<a href="#" class="btn_prev">이전</a>
				<span class="num">
					<a href="#" class="on">1</a>
					<span>/</span>
					<a href="#">5</a>
				</span>
				<a href="#" class="btn_next">다음</a>
			</div> --%>
		</div>
		<!-- //list -->

	</main>
	<!-- //content -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->



</div>
</body>
</html>
