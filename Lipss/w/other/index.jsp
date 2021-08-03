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
	<main id="wrap" class="other">
		<div id="contents" class="">

			<div class="inner">
				<!-- 분류 // -->
				<div class="sort">
					<form>
						<table class="tbl_type1">
							<colgroup>
								<col style="width:162px;">
								<col style="">
							</colgroup>

							<tbody>
								<tr class="product">
									<th>PRODUCT</th>
									<td>
										<input type="checkbox" name="product" id="product_all" onchange="fn.goodsSortAdd(this);"><label for="product_all">전체</label>
										<input type="checkbox" name="product" id="product_album" onchange="fn.goodsSortAdd(this);"><label for="product_album">앨범</label>
										<input type="checkbox" name="product" id="product_frame" onchange="fn.goodsSortAdd(this);"><label for="product_frame">액자</label>
										<input type="checkbox" name="product" id="product_bag" onchange="fn.goodsSortAdd(this);"><label for="product_bag">가방</label>
										<input type="checkbox" name="product" id="product_cap" onchange="fn.goodsSortAdd(this);"><label for="product_cap">모자</label>
										<input type="checkbox" name="product" id="product_clothes" onchange="fn.goodsSortAdd(this);"><label for="product_clothes">옷</label>
										<input type="checkbox" name="product" id="product_etc" onchange="fn.goodsSortAdd(this);"><label for="product_etc">etc</label>
									</td>
								</tr>

								<tr class="brand">
									<th>BRAND</th>
									<td>
										<input type="radio" name="brand" id="brand1" onchange="fn.goodsSortAdd(this);"><label for="brand1">YG</label>
										<input type="radio" name="brand" id="brand2" onchange="fn.goodsSortAdd(this);"><label for="brand2">JYP</label>
									</td>
								</tr>

								<tr class="artist">
									<th>ARTIST</th>
									<td>
										<input type="radio" name="artist" id="artist_ikon" onchange="fn.goodsSortAdd(this);"><label for="artist_ikon">iKON</label>
										<input type="radio" name="artist" id="artist_jungyonghwa" onchange="fn.goodsSortAdd(this);"><label for="artist_jungyonghwa">JUNG YONG HWA</label>
									</td>
								</tr>

								<!--
								<tr>
									<th>MEMBER</th>
									<td>
										<input type="checkbox" name="member" id="member_all" onchange="fn.goodsSortAdd(this);"><label for="member_all">ALL</label>
										<input type="checkbox" name="member" id="member1" onchange="fn.goodsSortAdd(this);"><label for="member1">강승윤</label>
										<input type="checkbox" name="member" id="member2" onchange="fn.goodsSortAdd(this);"><label for="member2">이승훈</label>
									</td>
								</tr>
								-->

							</tbody>
						</table>

						<div class="choose_area">
							<button type="reset" class="btn_reset" onclick="fn.goodsSortReset();">전체해제</button>
							<div class="choose_list">
								<!-- <button type="button" class="artist_jungyonghwa" onclick="fn.goodsSortDel(this);">JUNG YONG HWA</button> -->
							</div>
							<button  class="btn_search">검색</button>
						</div>

						<img src="/w/pjtCom/images/temp/img_other_banner.jpg" alt="" class="img">
					</form>
				</div>
				<!-- // 분류 -->

				<!-- 일반상품 리스트 // -->
				<div class="other_list_area">

					<div class="top_area">
						<span class="total">총 <span>23</span>개의 상품</span>

						<form>
							<fieldset>
								<legend class="hide">정렬</legend>
								<label class="select">
									<select>
										<option>정렬기준</option>
										<option>정렬기준</option>
									</select>
								</label>
							</fieldset>
						</form>
					</div>

					<!-- 목록 // -->
					<ul class="other_list">
						<!-- 상품이 없을경우 // -->
						<!-- <li class="nodata">판매중인 상품이 없습니다.</li> -->
						<!-- // 상품이 없을경우 -->

						<!-- 반복영역 // -->
						<li>
							<a href="#"><img src="/w/pjtCom/images/temp/img_other_440x440.jpg" alt="" class="img"></a>

							<div class="menu_area">
								<a href="#" class="btn_wish on">찜하기</a><!-- 위시리스트에 있는경우 class="on" -->
								<a href="#" class="btn_cart">장바구니</a>
							</div>

							<div class="info_area">
								<a href="#">
									<span class="txt_ti ellipsis">일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십</span>
									<span class="txt_info ellipsis">일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십일이삼사오육칠팔구십</span>
									<span class="txt-price">46,000원</span>
								</a>
							</div>
						</li>
						<!-- // 반복영역 -->

						<li>
							<a href="#"><img src="/w/pjtCom/images/temp/img_other_440x440.jpg" alt="" class="img"></a>

							<div class="menu_area">
								<a href="#" class="btn_wish">찜하기</a>
								<a href="#" class="btn_cart">장바구니</a>
							</div>

							<div class="info_area">
								<a href="#">
									<span class="txt_ti ellipsis">WINNER(위너) SECOND ALBUM EVERYD4Y</span>
									<span class="txt_info ellipsis">심쿵 나이 샷! in LA 찌워크 No.198</span>
									<span class="txt-price">46,000원</span>
								</a>
							</div>
						</li>
						<li>
							<a href="#"><img src="/w/pjtCom/images/temp/img_other_440x440.jpg" alt="" class="img"></a>

							<div class="menu_area">
								<a href="#" class="btn_wish">찜하기</a>
								<a href="#" class="btn_cart">장바구니</a>
							</div>

							<div class="info_area">
								<a href="#">
									<span class="txt_ti ellipsis">SECHSKIES(젝스키스) 은지원 화보컷 액자</span>
									<span class="txt_info ellipsis">심쿵 나이 샷! in LA 찌워크 No.198 심쿵 나이 샷! in LA 찌워크 No.198</span>
									<span class="txt-price">46,000원</span>
								</a>
							</div>
						</li>
						<li>
							<a href="#"><img src="/w/pjtCom/images/temp/img_other_440x440.jpg" alt="" class="img"></a>

							<div class="menu_area">
								<a href="#" class="btn_wish">찜하기</a>
								<a href="#" class="btn_cart">장바구니</a>
							</div>

							<div class="info_area">
								<a href="#">
									<span class="txt_ti ellipsis">SECHSKIES(젝스키스) 은지원 화보컷 액자</span>
									<span class="txt_info ellipsis">심쿵 나이 샷! in LA 찌워크 No.198</span>
									<span class="txt-price">46,000원</span>
								</a>
							</div>
						</li>
						<li>
							<a href="#"><img src="/w/pjtCom/images/temp/img_other_440x440.jpg" alt="" class="img"></a>

							<div class="menu_area">
								<a href="#" class="btn_wish">찜하기</a>
								<a href="#" class="btn_cart">장바구니</a>
							</div>

							<div class="info_area">
								<a href="#">
									<span class="txt_ti ellipsis">SECHSKIES(젝스키스) 은지원 화보컷 액자</span>
									<span class="txt_info ellipsis">심쿵 나이 샷! in LA 찌워크 No.198</span>
									<span class="txt-price">46,000원</span>
								</a>
							</div>
						</li>
						<li>
							<a href="#"><img src="/w/pjtCom/images/temp/img_other_440x440.jpg" alt="" class="img"></a>

							<div class="menu_area">
								<a href="#" class="btn_wish">찜하기</a>
								<a href="#" class="btn_cart">장바구니</a>
							</div>

							<div class="info_area">
								<a href="#">
									<span class="txt_ti ellipsis">SECHSKIES(젝스키스) 은지원 화보컷 액자</span>
									<span class="txt_info ellipsis">심쿵 나이 샷! in LA 찌워크 No.198</span>
									<span class="txt-price">46,000원</span>
								</a>
							</div>
						</li>
						<li>
							<a href="#"><img src="/w/pjtCom/images/temp/img_other_440x440.jpg" alt="" class="img"></a>

							<div class="menu_area">
								<a href="#" class="btn_wish">찜하기</a>
								<a href="#" class="btn_cart">장바구니</a>
							</div>

							<div class="info_area">
								<a href="#">
									<span class="txt_ti ellipsis">SECHSKIES(젝스키스) 은지원 화보컷 액자</span>
									<span class="txt_info ellipsis">심쿵 나이 샷! in LA 찌워크 No.198</span>
									<span class="txt-price">46,000원</span>
								</a>
							</div>
						</li>
						<li>
							<a href="#"><img src="/w/pjtCom/images/temp/img_other_440x440.jpg" alt="" class="img"></a>

							<div class="menu_area">
								<a href="#" class="btn_wish">찜하기</a>
								<a href="#" class="btn_cart">장바구니</a>
							</div>

							<div class="info_area">
								<a href="#">
									<span class="txt_ti ellipsis">SECHSKIES(젝스키스) 은지원 화보컷 액자</span>
									<span class="txt_info ellipsis">심쿵 나이 샷! in LA 찌워크 No.198</span>
									<span class="txt-price">46,000원</span>
								</a>
							</div>
						</li>
					</ul>
					<!-- // 목록 -->

					<div class="paging_type2">
						<a href="#" class="btn_prev">이전</a>
						<span class="num">
							<a href="#">1</a>
							<span>/</span>
							<a href="#">3</a>
						</span>
						<a href="#" class="btn_next">다음</a>
					</div>

				</div>
				<!-- // 일반 리스트 -->
			</div>

		</div>
	</main>
	<!-- // wrap -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->

</body>

</html>