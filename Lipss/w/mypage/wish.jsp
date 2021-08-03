<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- config // -->
	<%@ include file="/w/inCom/config.jsp" %>
	<!-- // config -->

	<link rel="stylesheet" type="text/css" href="/w/pjtCom/css/sub.css" />
</head>

<body class="sub">
	<!-- header // -->
	<%@ include file="/w/inCom/header.jsp" %>
	<!-- // header -->

	<!-- wrap -->
	<main id="wrap" class="mypage wish">
		<div id="contents" class="">

			<div class="tit_area">
				<h2 class="tit"><span>Wish List</span>위시리스트</h2>

				<!-- menu // -->
				<%@ include file="/w/inCom/menu_mypage.jsp" %>
				<!-- // menu -->
			</div>

			<div class="wish_area">
				<ul class="wish_list">
					<!-- 반복영역 // -->
					<li>
						<div class="icon_area">
							<span class="icon_only">ONLY</span>
							<span class="icon_new">NEW</span>
							<%-- <span class="icon_soldout">SOLD OUT</span> --%>
							<%-- <span class="icon_end">종료예정</span> --%>
							<%-- <span class="icon_sale">판매예정</span> --%>
						</div>

						<div><img src="/w/pjtCom/images/temp/img_goods_480x320_B.jpg" alt="" class="img"><div>

						<input type="checkbox" id="chk1" class="chk_type2"><label for="chk1">선택</label>
						<span class="subject">[  SECHSKIES  ]  강성훈 222H RONDON</span>
					</li>
					<!-- // 반복영역 -->

					<li>
						<div class="icon_area">
							<span class="icon_only">ONLY</span>
							<span class="icon_new">NEW</span>
						</div>

						<div><img src="/w/pjtCom/images/temp/img_goods_480x320_B.jpg" alt="" class="img"><div>

						<input type="checkbox" id="chk2" class="chk_type2"><label for="chk2">선택</label>

						<span class="subject">[  SECHSKIES  ]  강성훈 222H RONDON</span>
					</li>

					<li>
						<div class="icon_area">
							<span class="icon_only">ONLY</span>
							<span class="icon_new">NEW</span>
						</div>

						<div><img src="/w/pjtCom/images/temp/img_goods_213x320_B.jpg" alt="" class="img"><div>

						<input type="checkbox" id="chk3" class="chk_type2"><label for="chk3">선택</label>

						<span class="subject">[  SECHSKIES  ]  강성훈 222H RONDON</span>
					</li>

					<li>
						<div class="icon_area">
							<span class="icon_only">ONLY</span>
							<span class="icon_new">NEW</span>
						</div>

						<div><img src="/w/pjtCom/images/temp/img_goods_480x320_B.jpg" alt="" class="img"><div>

						<input type="checkbox" id="chk4" class="chk_type2"><label for="chk4">선택</label>

						<span class="subject">[  SECHSKIES  ]  강성훈 222H RONDON</span>
					</li>
				</ul>

				<div class="btn_area">
					<button type="button" class="btn_allchk"><span>전체선택<span>Select</span></span></button>
					<button type="button" class="btn_del"><span>선택삭제<span>Delete</span></span></button>
					<button type="button" class="btn_cart"><span>장바구니<span>Cart</span></span></button>
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
			</div>

		</div>
	</main>
	<!-- // wrap -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>

</html>
