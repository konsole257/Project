<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
	<!-- config// -->
	<%@ include file="/m/inCom/_config.jsp" %>
	<!-- //config -->
	<link rel="stylesheet" type="text/css" href="/m/mpjtCom/css/sub.css" />

</head>
<body class="mypage">
<div id="wrap" class="wish">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- menu//-->
		<div class="submenu">
			<h2 class="tit">위시리스트</h2>

			<%@ include file="/m/inCom/_menu_mypage.jsp" %>
		</div>
		<!-- //menu -->

		<div class="wish_area">
			<div class="btn_area">
				<label><input type="checkbox" class="chk_type2 all"><span><span>전체선택</span></span></label>
				<button type="button" class="btn_del">선택삭제</button>
			</div>

			<ul class="wish_list">
				<!-- 반복영역 // -->
				<li>
					<div class="icon_area">
						<span class="icon_only">ONLY</span>
						<span class="icon_new">NEW</span>
					</div>

					<div><img src="/m/mpjtCom/images/temp/img_goods_480x320_B.jpg" alt="" class="img"></div>

					<div>
						<label><input type="checkbox" class="chk_type1"><span></span></label>
						<button type="button" class="btn_option">Stand - 매트</button>
					</div>

					<ul class="option_list">
						<li>Stand - 매트</li>
						<li>Stand - 매트</li>
						<li>Stand - 매트</li>
						<li>Stand - 매트</li>
					</ul>
				</li>
				<!-- // 반복영역 -->

				<li>
					<div class="icon_area">
						<span class="icon_only">ONLY</span>
						<span class="icon_new">NEW</span>
					</div>

					<div><img src="/m/mpjtCom/images/temp/img_goods_480x320_B.jpg" alt="" class="img"></div>

					<div>
						<label><input type="checkbox" class="chk_type1"><span></span></label>
						<button type="button" class="btn_option">Stand - 매트</button>
					</div>

					<ul class="option_list">
						<li>Stand - 매트</li>
						<li>Stand - 매트</li>
						<li>Stand - 매트</li>
						<li>Stand - 매트</li>
					</ul>
				</li>

				<li>
					<div class="icon_area">
						<span class="icon_only">ONLY</span>
						<span class="icon_new">NEW</span>
					</div>

					<div><img src="/m/mpjtCom/images/temp/img_goods_213x320_B.jpg" alt="" class="img"></div>

					<div>
						<label><input type="checkbox" class="chk_type1"><span></span></label>
						<button type="button" class="btn_option">Stand - 매트</button>
					</div>

					<ul class="option_list">
						<li>Stand - 매트</li>
						<li>Stand - 매트</li>
						<li>Stand - 매트</li>
						<li>Stand - 매트</li>
					</ul>
				</li>

				<li>
					<div class="icon_area">
						<span class="icon_only">ONLY</span>
						<span class="icon_new">NEW</span>
					</div>

					<div><img src="/m/mpjtCom/images/temp/img_goods_480x320_B.jpg" alt="" class="img"></div>

					<div>
						<label><input type="checkbox" class="chk_type1"><span></span></label>
						<button type="button" class="btn_option">Stand - 매트</button>
					</div>

					<ul class="option_list">
						<li>Stand - 매트</li>
						<li>Stand - 매트</li>
						<li>Stand - 매트</li>
						<li>Stand - 매트</li>
					</ul>
				</li>
			</ul>


		</div>

		<div class="paging_type2">
			<a href="#" class="btn_prev">이전</a>
			<span class="num">
				<a href="#" class="on">1</a>
				<span>/</span>
				<a href="#">5</a>
			</span>
			<a href="#" class="btn_next">다음</a>
		</div>

		<button type="button" class="btn_purple btn_cart">장바구니<span>Cart</span></button>

	</main>
	<!-- //content -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>

</body>
</html>
