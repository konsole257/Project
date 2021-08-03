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
<div id="wrap" class="order_list">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- menu//-->
		<div class="submenu">
			<h2 class="tit">주문내역조회</h2>

			<%@ include file="/m/inCom/_menu_mypage.jsp" %>
		</div>
		<!-- //menu -->

		<div class="tab_menu">
			<a href="#" class="on"><span>주문내역</span></a><!-- 해당페이지 class="on"-->
			<a href="#"><span>취소내역</span></a>
			<a href="#"><span>반품내역</span></a>
			<a href="#"><span>교환내역</span></a>
		</div>

		<div class="tab_contents">
			<form>
				<fieldset class="search_field">
					<a href="#" class="btn_week on">1주일</a><!-- 해당페이지 class="on"-->
					<a href="#" class="btn_month">1개월</a>
					<a href="#" class="btn_3month">3개월</a>

					<div class="date_area">
						<span class="input"><input type="date" id="datepicker1"></span>
						<span class="hyphen">-</span>
						<span class="input"><input type="date" id="datepicker2"></span>
						<button type="submit" class="btn_search">검색</button>
					</div>
				</fieldset>
			</form>

			<div class="order_area">
				<div class="count"><strong>전체</strong> 총 주문 <em>4</em>건</div>

				<ul class="list">
					<!-- 수정 : 2018.06.15 // -->
					<li>
						<div class="top">
							<div class="ord_no">
								<a href="#">주문번호 : <span>20188456156324851643</span></a>
								2018.03.13
							</div>

							<div class="state">
								<span>결제완료</span>
								<button type="button" class="btn_cancel">전체주문취소</button>
								<%-- <button type="button" class="btn_delivery">배송추적</button> --%>
								<%-- <button type="button" class="btn_change">교환/반품신청</button> --%>
							</div>
						</div>
						<div class="bottom">
							<figure class="img_area">
								<img src="/m/mpjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
							</figure>

							<div class="info_area">
								<span class="subject">[젝스키스] The studio 은지원 no.1</span>

								<dl class="option">
									<dt>Option</dt>
									<dd>Stand – 매트 (8X12)</dd>
								</dl>

								<div class="price">&#8361; 38,000</div>
							</div>
						</div>
						<div class="bottom">
							<figure class="img_area">
								<img src="/m/mpjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
							</figure>

							<div class="info_area">
								<span class="subject">[젝스키스] The studio 은지원 no.1</span>

								<dl class="option">
									<dt>Option</dt>
									<dd>Stand – 매트 (8X12)</dd>
								</dl>

								<div class="price">&#8361; 38,000</div>
							</div>
						</div>
					</li>
					<!-- // 수정 : 2018.06.15 -->

					<li>
						<div class="top">
							<div class="ord_no">
								<a href="#">주문번호 : <span>20188456156324851643</span></a>
								2018.03.13
							</div>

							<div class="state">
								<span>결제완료</span>
								<button type="button" class="btn_delivery">배송추적</button>
							</div>
						</div>
						<div class="bottom">
							<figure class="img_area">
								<img src="/m/mpjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
							</figure>

							<div class="info_area">
								<span class="subject">[젝스키스] The studio 은지원 no.1</span>

								<dl class="option">
									<dt>Option</dt>
									<dd>Stand – 매트 (8X12)</dd>
								</dl>

								<div class="price">&#8361; 38,000</div>
							</div>
						</div>
					</li>

					<!-- 추가 : 2018.11.07 // -->
					<li>
						<div class="top">
							<div class="ord_no">
								<a href="#">주문번호 : <span>20188456156324851643</span></a>
								2018.03.13
							</div>

							<div class="state">
								<span>구매확정</span>
								<button type="button" class="btn_write">상품평작성가능</button>
							</div>
						</div>
						<div class="bottom">
							<figure class="img_area">
								<img src="/m/mpjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
							</figure>

							<div class="info_area">
								<span class="subject">[젝스키스] The studio 은지원 no.1</span>

								<dl class="option">
									<dt>Option</dt>
									<dd>Stand – 매트 (8X12)</dd>
								</dl>

								<div class="price">&#8361; 38,000</div>
							</div>
						</div>
					</li>
					<!-- // 추가 : 2018.11.07 -->

					<li>
						<div class="top">
							<div class="ord_no">
								<a href="#">주문번호 : <span>20188456156324851643</span></a>
								2018.03.13
							</div>

							<div class="state">
								<span>결제완료</span>
								<button type="button" class="btn_change">교환/반품신청</button>
							</div>
						</div>
						<div class="bottom">
							<figure class="img_area">
								<img src="/m/mpjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
							</figure>

							<div class="info_area">
								<span class="subject">[젝스키스] The studio 은지원 no.1</span>

								<dl class="option">
									<dt>Option</dt>
									<dd>Stand – 매트 (8X12)</dd>
								</dl>

								<div class="price">&#8361; 38,000</div>
							</div>
						</div>
					</li>
				</ul>

				<div class="paging paging_type2">
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
	<!-- //content -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>

</body>
</html>
