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
<div id="wrap" class="order_delivery">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- stitle//-->
		<div id="subTitle2">
			<h2 class="tit">배송지 변경</h2>
			<a href="#" onclick="fn.goback();" class="goback">뒤로가기</a>
		</div>
		<!-- //subtitle -->

		<div class="delivery_area">
			<strong class="require">필수항목</strong>

			<table>
				<caption>배송지변경 양식</caption>

				<colgroup>
					<col style="width:101px;">
					<col style="">
				</colgroup>

				<tbody>
					<tr>
						<th class="require">배송지명</th>
						<td><input type="text" title="배송지명 입력" class="inp_type1" /></td>
					</tr>
					<tr>
						<th class="require">이름</th>
						<td><input type="text" title="이름 입력" placeholder="이름 (Full name)" class="inp_type1" /></td>
					</tr>
					<tr>
						<th class="require">휴대폰 번호</th>
						<td>
							<input type="text" title="휴대폰 번호 입력" placeholder="핸드폰 번호 (Mobile No. / -없이 입력)" pattern="[0-9]*" class="inp_type1" />
						</td>
					</tr>
					<tr>
						<th class="require">주소</th>
						<td>
							<input type="text" title="우편번호 입력" class="inp_type1 write_zip" /><button type="button" class="btn_zip">우편번호검색<span>Zip Code Search</span></button>
							<input type="text" title="주소 입력" class="inp_type1 write_address1" />
							<input type="text" title="주소 입력" class="inp_type1 write_address2" />
						</td>
					</tr>
				</tbody>
			</table>

			<label><input type="checkbox" class="chk_type1"><span>기본 배송지 저장</span></label>

			<button type="button" class="btn_purple">확인<span>Ok</span></button>
		</div>

	</main>
	<!-- //content -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>
</body>
</html>
