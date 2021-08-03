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
<div id="wrap" class="qna_write">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- menu//-->
		<div class="submenu">
			<h2 class="tit">1:1문의</h2>

			<%@ include file="/m/inCom/_menu_mypage.jsp" %>
		</div>
		<!-- //menu -->

		<div class="form_area">
			<form>
				<fieldset class="top_field">
					<strong class="require">필수항목</strong>

					<table class="tbl_type2">
						<colgroup>
							<col style="width:90px;">
							<col style="width:*;">
						</colgroup>

						<tbody>
							<tr>
								<th class="require">Full name</th>
								<td><input type="text" placeholder="이름 (Full name / 국,영문으로만 표기)" title="이름 입력" class="txt_type1 write_name"></td>
							</tr>

							<tr>
								<th class="require">E-mail</th>
								<td>
									<div class="email_area">
										<input type="text" title="이메일 입력" placeholder="이메일 (E-mail)" class="inp_type1" />
										<span class="at">@</span>
										<div class="select email">
											<select title="이메일 도메인 선택">
												<option>직접입력</option>
												<option>daum.net</option>
												<option>gmail.com</option>
												<option>nate.com</option>
												<option>naver.com</option>
											</select>
											<input type="text" class="sel_txt" title="이메일 도메인 직접 입력" placeholder="직접입력" />
										</div>
									</div>
								</td>
							</tr>

							<tr>
								<th>Mobile No.</th>
								<td><input type="number" placeholder="핸드폰 번호 (Mobile No. / -없이 입력)" title="핸드폰 입력" class="txt_type1 write_phone"></td>
							</tr>
						</tbody>
					</table>

					<div class="marketing_area">
						<span>휴대폰 번호 답변 수신여부</span>

						<div class="marketing_list">
							<label><input type="radio" name="sms" class="rdo_type1" checked><span>예</span></label>
							<label><input type="radio" name="sms" class="rdo_type1"><span>아니오</span></label>
						</div>
					</div>
				</fieldset>

				<fieldset class="middle_field">
					<table class="tbl_type2">
						<colgroup>
							<col style="width:90px;">
							<col style="width:*;">
						</colgroup>

						<tbody>
							<tr>
								<th class="require">문의유형</th>
								<td>
									<div class="select category">
										<select title="문의유형 선택">
											<option>전체</option>
											<option>상품</option>
											<option>주문/결제/배송</option>
											<option>취소/환불/반품</option>
											<option>쿠폰</option>
											<option>회원</option>
											<option>시스템 및 오류</option>
											<option>기타</option>
										</select>
									</div>
								</td>
							</tr>

							<tr>
								<th>주문 검색</th>
								<td>
									<input type="text" placeholder="주문번호" title="주문번호 입력" class="txt_type1 write_number">
									<a type="#order_search" class="btn_search" onclick="fn.popupOpen('#orderSearch')">검색</a>
								</td>
							</tr>

							<tr>
								<th>상품 검색</th>
								<td>
									<input type="text" placeholder="상품명" title="상품명 입력" class="txt_type1 write_goods">
									<a href="#goods_search" class="btn_search" onclick="fn.popupOpen('#goodsSearch')">검색</a>
								</td>
							</tr>

							<tr>
								<th class="require">제목</th>
								<td><input type="text" placeholder="제목" title="제목 입력" class="txt_type1 write_subject"></td>
							</tr>

							<tr>
								<th class="require">내용</th>
								<td>
									<textarea placeholder="내용" title="내용 입력" class="txt_type1 write_txt"></textarea>
								</td>
							</tr>

							<tr>
								<th>파일첨부</th>
								<td>
									<div class="filebox preview-image">
										<input type="text" class="txt_type1 upload-name" placeholder="파일 선택" disabled="disabled">
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
				</fieldset>

				<div class="btn_area">
					<button type="submit" class="btn_ok"><span>확인<span>Ok</span></span></button>
					<a href="#" class="btn_cancel"><span>취소<span>Cancel</span></span></a>
				</div>
			</form>
		</div>

	</main>
	<!-- //content -->

	<!-- popup:주문검색// -->
	<div id="orderSearch" class="pupfull ordersearch">
		<div class="popup_area">
			<div class="inner">
				<header>
					<h3>주문검색결과</h3>
					<button type="button" class="btn_close" onclick="fn.popupClose('#orderSearch');">닫기</button>
				</header>
				<main>
					<p><em>*</em> 주문번호 또는 상품명을 선택해 주세요.</p>
					<div class="swiper-container popscroll"><div class="swiper-wrapper"><div class="swiper-slide">
						<ul class="ls">
							<li>
								<span class="txt-ordernum">
									주문번호 : <label><input type="radio" name="order">20168456156324851644</label>
								</span>
								<span class="txt-date">2018.03.13</span>
								<ul class="goodsinfo">
									<li>
										<figure class="img-area"><img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img"></figure>
										<span class="txt-subject"><label><input type="radio" name="order">[젝스키스] THE STUDIO 은지원 no.1 [젝 스 키 스] THE STUDIO 은지원 no. 1[젝 스 키 스] THE STUDIO 은지원 no.1</label></span>
										<span class="txt-state">주문접수</span>
									</li>
									<li>
										<figure class="img-area"><img src="/w/pjtCom/images/temp/img_goods_440x294.jpg" alt="" class="img"></figure>
										<span class="txt-subject"><label><input type="radio" name="order">[젝스키스] THE STUDIO 은지원 no.1</label></span>
										<span class="txt-state">주문접수</span>
									</li>
								</ul>
							</li>
							<li>
								<span class="txt-ordernum">
									주문번호 : <label><input type="radio" name="order">20168456156324851644</label>
								</span>
								<span class="txt-date">2018.03.13</span>
								<ul class="goodsinfo">
									<li>
										<figure class="img-area"><img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img"></figure>
										<span class="txt-subject"><label><input type="radio" name="order">[젝스키스] THE STUDIO 은지원 no.1</label></span>
										<span class="txt-state">주문접수</span>
									</li>
									<li>
										<figure class="img-area"><img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img"></figure>
										<span class="txt-subject"><label><input type="radio" name="order">[젝스키스] THE STUDIO 은지원 no.1</label></span>
										<span class="txt-state">주문접수</span>
									</li>
								</ul>
							</li>
							<li>
								<span class="txt-ordernum">
									주문번호 : <label><input type="radio" name="order">20168456156324851644</label>
								</span>
								<span class="txt-date">2018.03.13</span>
								<ul class="goodsinfo">
									<li>
										<figure class="img-area"><img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img"></figure>
										<span class="txt-subject"><label><input type="radio" name="order">[젝스키스] THE STUDIO 은지원 no.1</label></span>
										<span class="txt-state">주문접수</span>
									</li>
									<li>
										<figure class="img-area"><img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img"></figure>
										<span class="txt-subject"><label><input type="radio" name="order">[젝스키스] THE STUDIO 은지원 no.1</label></span>
										<span class="txt-state">주문접수</span>
									</li>
								</ul>
							</li>
							<li>
								<span class="txt-ordernum">
									주문번호 : <label><input type="radio" name="order">20168456156324851644</label>
								</span>
								<span class="txt-date">2018.03.13</span>
								<ul class="goodsinfo">
									<li>
										<figure class="img-area"><img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img"></figure>
										<span class="txt-subject"><label><input type="radio" name="order">[젝스키스] THE STUDIO 은지원 no.1</label></span>
										<span class="txt-state">주문접수</span>
									</li>
									<li>
										<figure class="img-area"><img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img"></figure>
										<span class="txt-subject"><label><input type="radio" name="order">[젝스키스] THE STUDIO 은지원 no.1</label></span>
										<span class="txt-state">주문접수</span>
									</li>
								</ul>
							</li>
							<li>
								<span class="txt-ordernum">
									주문번호 : <label><input type="radio" name="order">20168456156324851644</label>
								</span>
								<span class="txt-date">2018.03.13</span>
								<ul class="goodsinfo">
									<li>
										<figure class="img-area"><img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img"></figure>
										<span class="txt-subject"><label><input type="radio" name="order">[젝스키스] THE STUDIO 은지원 no.1</label></span>
										<span class="txt-state">주문접수</span>
									</li>
									<li>
										<figure class="img-area"><img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img"></figure>
										<span class="txt-subject"><label><input type="radio" name="order">[젝스키스] THE STUDIO 은지원 no.1</label></span>
										<span class="txt-state">주문접수</span>
									</li>
								</ul>
							</li>
						</ul>
					</div></div><div class="swiper-scrollbar"></div></div>
				</main>
			</div>
		</div>
	</div>
	<!-- //popup:주문검색 -->
	<!-- popup:상품검색결과// -->
	<div id="goodsSearch" class="pupfull goodssearch">
		<div class="popup_area">
			<div class="inner">
				<header>
					<h3>상품검색결과</h3>
					<button type="button" class="btn_close" onclick="fn.popupClose('#goodsSearch');">닫기</button>
				</header>
				<main>
					<p><em>*</em> 상품명을 선택해 주세요.</p>
					<div class="swiper-container popscroll"><div class="swiper-wrapper"><div class="swiper-slide">
						<ul class="ls">
							<li>
								<figure class="img-area"><img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img"></figure>
								<span class="txt-subject"><label><input type="radio" name="order">[젝스키스] THE STUDIO 은지원 no.1 [젝 스 키 스] THE STUDIO 은지원 no. 1[젝 스 키 스] THE STUDIO 은지원 no.1</label></span>
							</li>
							<li>
								<figure class="img-area"><img src="/w/pjtCom/images/temp/img_goods_440x294.jpg" alt="" class="img"></figure>
								<span class="txt-subject"><label><input type="radio" name="order">[젝스키스] THE STUDIO 은지원</label></span>
							</li>
							<li>
								<figure class="img-area"><img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img"></figure>
								<span class="txt-subject"><label><input type="radio" name="order">[젝스키스] THE STUDIO 은지원</label></span>
							</li>
							<li>
								<figure class="img-area"><img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img"></figure>
								<span class="txt-subject"><label><input type="radio" name="order">[젝스키스] THE STUDIO 은지원</label></span>
							</li>
							<li>
								<figure class="img-area"><img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img"></figure>
								<span class="txt-subject"><label><input type="radio" name="order">[젝스키스] THE STUDIO 은지원</label></span>
							</li>
							<li>
								<figure class="img-area"><img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img"></figure>
								<span class="txt-subject"><label><input type="radio" name="order">[젝스키스] THE STUDIO 은지원</label></span>
							</li>
							<li>
								<figure class="img-area"><img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img"></figure>
								<span class="txt-subject"><label><input type="radio" name="order">[젝스키스] THE STUDIO 은지원</label></span>
							</li>
							<li>
								<figure class="img-area"><img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img"></figure>
								<span class="txt-subject"><label><input type="radio" name="order">[젝스키스] THE STUDIO 은지원</label></span>
							</li>
							<li>
								<figure class="img-area"><img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img"></figure>
								<span class="txt-subject"><label><input type="radio" name="order">[젝스키스] THE STUDIO 은지원</label></span>
							</li>
							<li>
								<figure class="img-area"><img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img"></figure>
								<span class="txt-subject"><label><input type="radio" name="order">[젝스키스] THE STUDIO 은지원</label></span>
							</li>
							<li>
								<figure class="img-area"><img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img"></figure>
								<span class="txt-subject"><label><input type="radio" name="order">[젝스키스] THE STUDIO 은지원</label></span>
							</li>
							<li>
								<figure class="img-area"><img src="/w/pjtCom/images/temp/img_goods_294x440.jpg" alt="" class="img"></figure>
								<span class="txt-subject"><label><input type="radio" name="order">[젝스키스] THE STUDIO 은지원</label></span>
							</li>
						</ul>
					</div></div><div class="swiper-scrollbar"></div></div>
				</main>
			</div>
		</div>
	</div>
	<!-- //popup:상품검색결과 -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>

</body>
</html>
