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
<div id="wrap" class="delivery_register">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- stitle//-->
		<div id="subTitle2">
			<h2 class="tit">배송지 등록/수정</h2>
			<a href="#" onclick="fn.goback();" class="goback">뒤로가기</a>
		</div>
		<!-- //subtitle -->

		<div class="register_area">
			<strong class="require">필수항목</strong>

			<table>
				<caption>배송지변경 양식</caption>

				<colgroup>
					<col style="width:101px;">
					<col style="">
				</colgroup>

				<tbody>
					<tr>
						<th class="require">상세주소</th>
						<td><input type="text" title="상세주소 입력" placeholder="Street Address" class="inp_type1" /></td>
					</tr>
					<tr>
						<th class="require" rowspan="2">도시/주</th>
						<td><input type="text" title="도시 입력" placeholder="City" class="inp_type1" /></td>
					</tr>
					<tr>
						<td><input type="text" title="도시 입력" placeholder="State/Province" class="inp_type1" /></td>
					</tr>
					<tr>
						<th class="require">우편번호</th>
						<td><input type="text" title="우편번호 입력" placeholder="Zip/Postal Code" class="inp_type1" /></td>
					</tr>
				</tbody>
			</table>

			<div class="btn_area">
				<button class="btn_purple">확인<span>Ok</span></button>
				<button class="btn_cancel">취소<span>Cancel</span></button>
			</div>
		</div>

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>

</body>
</html>
