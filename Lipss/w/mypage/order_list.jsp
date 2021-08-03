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
	<main id="wrap" class="mypage order_list">
		<div id="contents" class="">

			<div class="tit_area">
				<h2 class="tit"><span>Order List</span>주문내역조회</h2>

				<!-- menu // -->
				<%@ include file="/w/inCom/menu_mypage.jsp" %>
				<!-- // menu -->
			</div>

			<div class="tab_menu">
				<a href="#" class="on">
					<span class="tit">
						주문내역
						<small>전체 주문 내역</small>
					</span>

					<span class="count">4</span>
				</a>
				<a href="#">
					<span class="tit">
						취소내역
						<small>취소 완료 내역</small>
					</span>

					<span class="count">4</span>
				</a>
				<a href="#">
					<span class="tit">
						반품내역
						<small>반품 완료 내역</small>
					</span>

					<span class="count">4</span>
				</a>
				<a href="#">
					<span class="tit">
						교환내역
						<small>교환 완료 내역</small>
					</span>

					<span class="count">4</span>
				</a>
			</div>

			<div class="tab_contents all">
				<form>
					<fieldset class="search_field">
						<legend class="tit">조회기간</legend>

						<a href="#" class="btn_week on">1주일</a><!-- 해당페이지 class="on"-->
						<a href="#" class="btn_month">1개월</a>
						<a href="#" class="btn_3month">3개월</a>

						<div class="date_area">
							<span class="input"><input type="text" id="datepicker1"></span>
							<span class="hyphen">-</span>
							<span class="input"><input type="text" id="datepicker2"></span>
							<button type="submit" class="btn_search">검색</button>
						</div>
					</fieldset>
				</form>

				<table class="tbl_type1">
					<caption class="hide">주문내역</caption>

					<colgroup>
						<col style="width:211px;">
						<col style="width:489px;">
						<col style="width:181px;">
						<col style="width:159px;">
					</colgroup>

					<thead>
						<tr>
							<th>주문일 / 주문번호</th>
							<th>상품정보</th>
							<th>주문금액</th>
							<th>상태</th>
						</tr>
					</thead>

					<tbody>
						<!-- 주문내역 없음 // -->
						<tr>
							<td colspan="4" class="no_data">주문 내역이 없습니다.</td>
						</tr>
						<!-- // 주문내역 없음 -->

						<!-- 추가 : 2018.11.05 // -->
						<tr>
							<td>
								<a href="#">
									2018.03.13
									<span>20188456156324851643</span>
								</a>
							</td>
							<td>
								<figure class="img_area">
									<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg"  class="img" onerror="this.src='/w/images/w/noimage.jpg'" alt="상품 썸네일 이미지">
								</figure>
								<div class="info_area">
									<span class="subject">[젝스키스] The studio 은지원 no.1</span>

									<dl class="option">
										<dt>Option</dt>
										<dd>Stand – 매트 (8X12)</dd>
									</dl>
								</div>
							</td>
							<td>&#8361; 38,000</td>
							<td>
								구매확정
								<button type="button" class="btn_write">상품평<br>작성가능</button>
							</td>
						</tr>
						<!-- // 추가 : 2018.11.05 -->

						<!-- 수정 : 2018.06.15 // -->
						<tr>
							<td rowspan="2">
								<a href="#">
									2018.03.13
									<span>20188456156324851643</span>
								</a>
							</td>
							<td>
								<figure class="img_area">
									<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg"  class="img" onerror="this.src='/w/images/w/noimage.jpg'" alt="상품 썸네일 이미지">
								</figure>
								<div class="info_area">
									<span class="subject">[젝스키스] The studio 은지원 no.1</span>

									<dl class="option">
										<dt>Option</dt>
										<dd>Stand – 매트 (8X12)</dd>
									</dl>
								</div>
							</td>
							<td>&#8361; 38,000</td>
							<td>
								결제완료
								<button type="button" class="btn_cancel">전체주문 취소</button>
								<button type="button" class="btn_delivery">배송추적</button>
								<button type="button" class="btn_change">교환/반품신청</button>
							</td>
						</tr>
						<tr>
							<td>
								<figure class="img_area">
									<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg"  class="img" onerror="this.src='/w/images/w/noimage.jpg'" alt="상품 썸네일 이미지">
								</figure>
								<div class="info_area">
									<span class="subject">[젝스키스] The studio 은지원 no.1</span>

									<dl class="option">
										<dt>Option</dt>
										<dd>Stand – 매트 (8X12)</dd>
									</dl>
								</div>
							</td>
							<td>&#8361; 38,000</td>
							<td>
								결제완료
								<button type="button" class="btn_cancel">전체주문 취소</button>
								<button type="button" class="btn_delivery">배송추적</button>
								<button type="button" class="btn_change">교환/반품신청</button>
							</td>
						</tr>
						<!-- // 수정 : 2018.06.15 -->

						<tr>
							<td>
								<a href="#">
									2018.03.13
									<span>20188456156324851643</span>
								</a>
							</td>
							<td>
								<figure class="img_area">
									<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg"  class="img" onerror="this.src='/w/images/w/noimage.jpg'" alt="상품 썸네일 이미지">
								</figure>
								<div class="info_area">
									<span class="subject">[젝스키스] The studio 은지원 no.1</span>

									<dl class="option">
										<dt>Option</dt>
										<dd>Stand – 매트 (8X12)</dd>
									</dl>
								</div>
							</td>
							<td>&#8361; 38,000</td>
							<td>
								결제완료
								<button type="button" class="btn_change">교환/반품신청</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>

		</div>
	</main>
	<!-- // wrap -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>

</html>
