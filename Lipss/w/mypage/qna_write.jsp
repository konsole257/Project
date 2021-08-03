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
	<main id="wrap" class="mypage qna_write">
		<div id="contents" class="">

			<div class="tit_area">
				<h2 class="tit"><span>Q&A</span>1:1문의하기</h2>

				<!-- menu // -->
				<%@ include file="/w/inCom/menu_mypage.jsp" %>
				<!-- // menu -->
			</div>

			<div class="form_area">

				<form>
					<fieldset class="top_field">
						<strong class="require">필수항목</strong>

						<table class="tbl_type2">
							<colgroup>
								<col style="width:160px;">
								<col style="width:436px;">
							</colgroup>

							<tbody>
								<tr>
									<th class="require">Full name</th>
									<td><input type="text" placeholder="이름 (Full name / 국,영문으로만 표기)" title="이름 입력" class="txt_type1 write_name"></td>
								</tr>

								<tr>
									<th class="require">E-mail</th>
									<td>
										<input type="text" placeholder="이메일 (E-mail)" title="이메일 입력" class="txt_type1 write_mail1">
										<span class="at">@</span>
										<label class="select write_mail2">
											<select>
												<option>naver.com</option>
												<option>daum.net</option>
												<option>gmail.com</option>
												<option>nate.com</option>
												<option value="self">직접입력</option>
											</select>
											<input type="text" placeholder="직접입력">
										</label>
									</td>
								</tr>

								<tr>
									<th>Mobile Number</th>
									<td><input type="text" placeholder="핸드폰 번호 (Mobile phone number / -없이 입력)" title="핸드폰 입력" class="txt_type1 write_phone"></td>
								</tr>
							</tbody>
						</table>

						<div class="marketing_area">
							<span>휴대폰 번호 답변 수신여부</span>

							<div class="marketing_list">
								<input type="radio" id="yes" name="sms" class="rdo_type1" checked><label for="yes">예</label>
								<input type="radio" id="no" name="sms" class="rdo_type1"><label for="no">아니오</label>
							</div>
						</div>
					</fieldset>

					<fieldset class="middle_field">
						<table class="tbl_type2">
							<colgroup>
								<col style="width:160px;">
								<col style="width:436px;">
							</colgroup>

							<tbody>
								<tr>
									<th class="require">문의유형</th>
									<td>
										<label class="select category">
											<select>
												<option>선택</option>
											</select>
										</label>
									</td>
								</tr>

								<tr>
									<th>주문 검색</th>
									<td>
										<!-- 비회원일경우 // -->
										<%-- <input type="text" placeholder="주문번호" title="주문번호 입력" class="txt_type1 write_number">
										<a type="#order_search" class="btn_search" onclick="fn.popupOpen('#order_search');">검색</a> --%>
										<!-- // 비회원일경우 -->

										<!-- 회원일경우 // -->
										<div class="write_number_wrap">
											<input type="text" placeholder="주문번호" title="주문번호 입력" class="txt_type1 write_number">
											<input type="text" placeholder="상품명" title="상품명 입력" class="txt_type1 write_number2">
										</div>
										<a type="#order_search" class="btn_search" onclick="fn.popupOpen('#order_search');">검색</a>
										<!-- // 회원일경우 -->
									</td>
								</tr>

								<tr>
									<th>상품 검색</th>
									<td>
										<input type="text" placeholder="상품명" title="상품명 입력" class="txt_type1 write_goods">
										<a href="#goods_search" class="btn_search" onclick="fn.popupOpen('#goods_search');">검색</a>
									</td>
								</tr>

								<tr>
									<th class="require">제목</th>
									<td><input type="text" placeholder="제목" title="제목 입력" class="txt_type1 write_subject"></td>
								</tr>

								<tr>
									<th class="require">내용</th>
									<td>
										<textarea placeholder="내용" title="내용 입력" class="write_txt"></textarea>
										<small class="limit">0/400</small>
									</td>
								</tr>
							</tbody>
						</table>
					</fieldset>

					<fieldset class="bottom_field">
						<table class="tbl_type2">
							<colgroup>
								<col style="width:160px;">
								<col style="width:436px;">
							</colgroup>

							<tbody>
								<tr>
									<th>파일첨부</th>
									<td>
										<!-- 수정 : 2018.05.18 -->
										<div class="filebox preview-image">
											<input type="text" class="txt_type1 upload-name" placeholder="파일 선택" disabled>
											<label for="input-file">업로드</label>
											<input type="file" id="input-file" class="upload-hidden">
											<ul class="filetxt">
												<li>첨부 파일은 1개만 등록 가능합니다. (JPG,PNG,GIF파일)</li>
												<li>첨부파일은 최대 10M의 용량 제한이 있습니다.</li>
											</ul>
										</div>
										<!-- // 수정 : 2018.05.18 -->
									</td>
								</tr>
							</tbody>
						</table>
					</fieldset>

					<div class="btn_area">
						<button type="submit" class="btn_ok"><span>확인<span>Ok</span></span></button>
						<a href="#" class="btn_cancel"><span>취소<span>Cancel</span></span></a>
					</div>
				</form>
			</div>
		</div>
	</main>
	<!-- // wrap -->

	<!-- 주문검색 // -->
	<div id="order_search" class="popup order_search">
		<div class="inner">
			<header class="header">
				<h2 class="tit">주문검색</h2>

				<button type="button" class="btn_close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="scroll_area scrollbar-macosx">
				<div class="contents">
					<table class="tbl_type1">
						<colgroup>
							<col style="width:143px;">
							<col style="width:189px;">
							<col style="width:380px;">
							<col style="width:98px;">
						</colgroup>

						<thead>
							<tr>
								<th>주문일자</th>
								<th>주문번호</th>
								<th>상품정보</th>
								<th>주문상태</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td class="date" rowspan="3">
									2018.03.13
								</td>
								<td class="number" rowspan="3">
									<input type="radio" id="order1" name="order"><label for="order1">20168456156324851644</label>
								</td>
								<td class="goods">
									<figure class="img_area">
										<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
									</figure>
									<span class="subject"><input type="radio" id="order1_goods1" name="order"><label for="order1_goods1">[젝스키스] THE STUDIO 은지원 no.1</label></span>
								</td>
								<td class="state">
									주문접수
								</td>
							</tr>
							<tr>
								<td class="goods">
									<figure class="img_area">
										<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
									</figure>
									<span class="subject"><input type="radio" id="order1_goods2" name="order"><label for="order1_goods2">[젝스키스] THE STUDIO 은지원 no.1</label></span>
								</td>
								<td class="state">
									주문접수
								</td>
							</tr>
							<tr>
								<td class="goods">
									<figure class="img_area">
										<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
									</figure>
									<span class="subject"><input type="radio" id="order1_goods3" name="order"><label for="order1_goods3">[젝스키스] THE STUDIO 은지원 no.1</label></span>
								</td>
								<td class="state">
									주문접수
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<strong class="caution">주문번호 또는 상품명을 선택해 주세요.</strong>
		</div>
	</div>
	<!-- // 주문검색 -->

	<!-- 상품검색 // -->
	<div id="goods_search" class="popup goods_search">
		<div class="inner">
			<header class="header">
				<h2 class="tit">상품검색</h2>

				<button type="button" class="btn_close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="scroll_area scrollbar-macosx">
				<div class="contents">
					<table class="tbl_type1">
						<thead>
							<tr>
								<th>상품명</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<td>
									<figure class="img_area">
										<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
									</figure>
									<input type="radio" id="goods1" name="goods"><label for="goods1">[젝스키스] THE STUDIO 은지원 no.1</label>
								</td>
							</tr>

							<tr>
								<td>
									<figure class="img_area">
										<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
									</figure>
									<input type="radio" id="goods2" name="goods"><label for="goods2">[젝스키스] THE STUDIO 은지원 no.1</label>
								</td>
							</tr>

							<tr>
								<td>
									<figure class="img_area">
										<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
									</figure>
									<input type="radio" id="goods3" name="goods"><label for="goods3">[젝스키스] THE STUDIO 은지원 no.1</label>
								</td>
							</tr>

							<tr>
								<td>
									<figure class="img_area">
										<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
									</figure>
									<input type="radio" id="goods4" name="goods"><label for="goods4">[젝스키스] THE STUDIO 은지원 no.1</label>
								</td>
							</tr>

							<tr>
								<td>
									<figure class="img_area">
										<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
									</figure>
									<input type="radio" id="goods5" name="goods"><label for="goods5">[젝스키스] THE STUDIO 은지원 no.1</label>
								</td>
							</tr>

							<tr>
								<td>
									<figure class="img_area">
										<img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img">
									</figure>
									<input type="radio" id="goods6" name="goods"><label for="goods6">[젝스키스] THE STUDIO 은지원 no.1</label>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<strong class="caution">상품명을 선택해 주세요.</strong>
		</div>
	</div>
	<!-- // 상품검색 -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>

</html>
