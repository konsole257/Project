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
	<main id="wrap" class="mypage address">
		<div id="contents" class="">

			<div class="tit_area">
				<h2 class="tit"><span>Address Setting</span>배송지 관리</h2>

				<!-- menu // -->
				<%@ include file="/w/inCom/menu_mypage.jsp" %>
				<!-- // menu -->
			</div>

			<div class="top_area">
				<strong class="caution">배송지는 최대 10개까지 등록이 가능합니다.</strong>
				<a href="#delivery_change" class="btn_register" onclick="fn.popupOpen('#delivery_change');">배송지 등록</a>
			</div>

			<div class="form_area">
				<form>
					<table class="tbl_type1">
						<colgroup>
							<col style="width:153px;">
							<col style="width:449px;">
							<col style="width:186px;">
							<col style="width:172px;">
						</colgroup>

						<tbody>
							<!-- 반복영역 // -->
							<tr>
								<th>
									<input type="radio" id="address1" name="address" class="rdo_type1">
									<label for="address1">
										<b class="place">코너스톤</b>
										<span class="name">강유나</span>
									</label>
									<em>(기본 배송지)</em>
								</th>
								<td><span>서울시 금천구 가산디지털1로 222 (가산동)</span><span>어바니엘 2층</span></td>
								<td>010-1234-1234</td>
								<td>
									<a href="#delivery_change" class="btn_modify" onclick="fn.popupOpen('#delivery_change');"><span>수정<span>Modify</span></span></a>
									<button type="button" class="btn_del"><span>삭제<span>Delete</span></span></button>
								</td>
							</tr>
							<!-- // 반복영역 -->

							<tr>
								<th>
									<input type="radio" id="address2" name="address" class="rdo_type1">
									<label for="address2">
										<b class="place">회사</b>
										<span class="name">강유나</span>
									</label>
									<em>(기본 배송지)</em>
								</th>
								<td><span>서울시 금천구 가산디지털1로 222 (가산동)</span><span>어바니엘 2층</span></td>
								<td>010-1234-1234</td>
								<td>
									<a href="#delivery_change" class="btn_modify" onclick="fn.popupOpen('#delivery_change');"><span>수정<span>Modify</span></span></a>
									<button type="button" class="btn_del"><span>삭제<span>Delete</span></span></button>
								</td>
							</tr>
						</tbody>
					</table>

					<button type="submit" class="btn_default"><span>기본배송지 설정<span>Default Address</span></span></button>
				</form>
			</div>

		</div>
	</main>
	<!-- // wrap -->

	<!-- 배송지 변경 // -->
	<div id="delivery_change" class="popup delivery_change">
		<div class="inner">
			<header class="header">
				<h2 class="tit">배송지 변경 <span>(Shipping list)</span></h2>

				<button type="button" class="btn_close" onclick="fn.popupClose();">닫기</button>
			</header>

			<div class="contents">
				<strong class="require">필수항목</strong>

				<form>
					<table class="tbl_type2">
						<colgroup>
							<col style="width:125px">
							<col style="width:405px">
						</colgroup>


						<tbody>
							<tr>
								<th class="require">배송지명</th>
								<td><input type="text" title="배송지명 입력" class="txt_type1 write_delivery"></td>
							</tr>
							<tr>
								<th class="require">이름</th>
								<td><input type="text" title="이름 입력" placeholder="이름 (Full name / 국,영문으로만 표기)" class="txt_type1 write_name"></td>
							</tr>
							<tr>
								<th class="require">휴대폰 번호</th>
								<td><input type="text" title="휴대폰 번호 입력" placeholder="핸드폰 번호 (Mobile phone number / -없이 입력)" class="txt_type1 write_phone"></td>
							</tr>
							<tr>
								<th class="require">주소</th>
								<td>
									<div>
										<input type="text" title="주소 입력" class="txt_type1 write_address1"><button type="button" class="btn_zip">우편번호</button>
									</div>
									<input type="text" title="주소 입력" class="txt_type1 write_address2">
									<input type="text" title="주소 입력" class="txt_type1 write_address3">
								</td>
							</tr>
						</tbody>
					</table>

					<input type="checkbox" class="chk_type2" id="delivery_save" checked>
					<label for="delivery_save" class="delivery_save">기본 배송지 저장</label>

					<div class="btn_area">
						<button type="submit" class="btn_ok"><span>확인 <span>Ok</span></span></button>
						<button type="button" class="btn_cancel" onclick="fn.popupClose();"><span>취소 <span>Cancel</span></span></button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- // 배송지 변경 -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>

</html>
