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
	<main id="wrap" class="mypage review">
		<div id="contents" class="">

			<div class="tit_area">
				<h2 class="tit"><span>Lipss Talk</span>LIPSS TALK</h2>

				<!-- menu // -->
				<%@ include file="/w/inCom/menu_mypage.jsp" %>
				<!-- // menu -->
			</div>

			<div class="view_area">

				<div class="tab_menu">
					<a href="#" class="on">작성가능한 후기(140)</a>
					<a href="#">작성한 후기(0)</a>
				</div>

				<div class="text_area">
					<strong>립스토크 작성안내</strong>
					<p>립스 토크를 작성해주시면 <span>“혜택”</span>을 드립니다.(일반후기, 프리미엄후기)</p>
					<p>후기 작성은 [구매확정]을 하신 주문 상품에 대해서만 1회 작성 가능합니다.</p>
					<p>구매하신 상품과 관련 없는 내용을 작성할 경우 임의 삭제 될 수 있습니다.</p>
					<p>비방, 욕설 등 적절치 않은 단어 포함 시 임의 삭제됩니다.</p>
					<p>개인정보보호법에 의거 개인의 연락처, 메일주소, 카드 번호 등의 개인정보는 작성하지 말아주십시오.</p>
				</div>

				<div class="list_field">
					<table class="tbl_type1">
						<caption class="hide">작성가능한 후기 목록</caption>

						<colgroup>
							<col style="width:634px;">
							<col style="width:224px;">
							<col style="width:182px;">
						</colgroup>

						<thead>
							<tr>
								<th>상품정보</th>
								<th>주문금액</th>
								<th>상태</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td>
									<figure class="img_area">
										<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
									</figure>

									<div class="info_area">
										<span class="subject">[젝스키스] The studio 은지원 no.1(외 1건)</span>

										<dl class="option">
											<dt>Option</dt>
											<dd>Stand – 매트 (8X12)</dd>
										</dl>

										<dl class="price">
											<dt>금액</dt>
											<dd>&#8361; 5,000</dd>

											<dt>수량</dt>
											<dd>1개</dd>
										</dl>
									</div>
								</td>
								<td>&#8361; 5,000</td>
								<td>
									<span>구매확정</span>
									<button type="button" class="btn_write" onclick="fn.popupOpen('#review_write');">상품평 작성</button>
								</td>
							</tr>
							<tr>
								<td>
									<figure class="img_area">
										<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
									</figure>

									<div class="info_area">
										<span class="subject">[젝스키스] The studio 은지원 no.1(외 1건)</span>

										<dl class="option">
											<dt>Option</dt>
											<dd>Stand – 매트 (8X12)</dd>
										</dl>

										<dl class="price">
											<dt>금액</dt>
											<dd>&#8361; 5,000</dd>

											<dt>수량</dt>
											<dd>1개</dd>
										</dl>
									</div>
								</td>
								<td>&#8361; 5,000</td>
								<td>
									<span>구매확정</span>
									<button type="button" class="btn_write" onclick="fn.popupOpen('#review_write');">상품평 작성</button>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="paging">
					<a href="#" class="btn_prev">이전</a>
					<span class="num">
						<a href="#" class="on">1</a>
						<a href="#">2</a>
						<a href="#">3</a>
					</span>
					<a href="#" class="btn_next">다음</a>
				</div>

			</div>
		</div>
	</main>
	<!-- // wrap -->

	<!-- 상품평 작성 // -->
	<div id="review_write" class="popup review_write">
		<div class="inner">
			<header class="header">
				<h2 class="tit">상품평 작성 <span>Reviews</span></h2>
				<!--<h2 class="tit">상품평 수정 <span>Reviews</span></h2>--><!-- 수정일경우 : 2018.12.10 : 수정 -->

				<button type="button" class="btn_close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<strong class="require">필수항목</strong>

				<form>
					<table class="tbl_type2">
						<colgroup>
							<col style="width:145px">
							<col style="width:385px">
						</colgroup>

						<tbody>
							<tr>
								<th class="require">별점</th>
								<td>
									<div class="grade_heart" title="4하트">
										<a href="javascript:void(0);" class="active"></a>
										<a href="javascript:void(0);" class="active"></a>
										<a href="javascript:void(0);" class="active"></a>
										<a href="javascript:void(0);" class="active"></a>
										<a href="javascript:void(0);"></a>
									</div>
								</td>
							</tr>
							<tr>
								<th class="require">품질</th>
								<td>
									<input type="radio" class="rdo_type1" name="quality" id="quality1" checked>
									<label for="quality1">만족</label>

									<input type="radio" class="rdo_type1" name="quality" id="quality2">
									<label for="quality2">보통</label>

									<input type="radio" class="rdo_type1" name="quality" id="quality3">
									<label for="quality3">불만</label>
								</td>
							</tr>
							<tr>
								<th class="require">배송</th>
								<td>
									<input type="radio" class="rdo_type1" name="delivery" id="delivery1" checked>
									<label for="delivery1">만족</label>

									<input type="radio" class="rdo_type1" name="delivery" id="delivery2">
									<label for="delivery2">보통</label>

									<input type="radio" class="rdo_type1" name="delivery" id="delivery3">
									<label for="delivery3">불만</label>
								</td>
							</tr>
							<tr>
								<th class="require">상품후기</th>
								<td>
									<textarea class="write_txt" title="내용 입력"></textarea>
								</td>
							</tr>
							<tr>
								<th>포토등록<br>(프리미엄)</th>
								<td>
									<div class="filebox preview-image">
										<input type="text" class="txt_type1 upload-name" placeholder="파일 선택" disabled>
										<label for="input-file">업로드</label>
										<input type="file" id="input-file" class="upload-hidden">
										<ul class="filetxt">
											<li>첨부 파일은 1개만 등록 가능합니다. (JPG,PNG,GIF파일)</li>
											<li>첨부파일은 최대 10M의 용량 제한이 있습니다.</li>
										</ul>
									</div>
								</td>
							</tr>
						</tbody>
					</table>

					<!--  2018.12.10 : 수정 // -->
					<div class="btn_area">
						<button type="submit" class="btn_ok"><span>확인 <span>Ok</span></span></button>
						<!-- <button type="submit" class="btn_ok"><span>수정 <span>Modify</span></span></button> --><!-- 수정일경우 : 2018.12.10 : 수정 -->
						<button type="button" class="btn_cancel" onclick="fn.popupClose();"><span>취소 <span>Cancel</span></span></button>
					</div>
					<!--  // 2018.12.10 : 수정 -->
				</form>
			</div>
		</div>
	</div>
	<!-- // 상품평 작성 -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>

</html>
