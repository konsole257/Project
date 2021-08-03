<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
	<!-- config// -->
	<%@ include file="/m/inCom/_config.jsp" %>
	<!-- //config -->
	<link rel="stylesheet" type="text/css" href="/m/mpjtCom/css/sub.css" />

</head>
<body class="member">
<div id="wrap" class="password">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- stitle//-->
		<div id="subTitle2">
			<h2 class="tit">비밀번호 변경</h2>
			<a href="#" onclick="fn.goback();" class="goback">뒤로가기</a>
		</div>
		<!-- //subtitle -->

		<div class="register_area">

			<table>
				<caption>배송지변경 양식</caption>

				<colgroup>
					<col style="width:101px;">
					<col style="">
				</colgroup>

				<tbody>
					<tr>
						<th>현재 비밀번호</th>
						<td><input type="password" title="배송지명 입력" placeholder="Current Password" class="inp_type1" /></td>
					</tr>
					<tr>
						<th>새 비밀번호</th>
						<td><input type="password" title="이름 입력" placeholder="New Password" class="inp_type1" /></td>
					</tr>
					<tr>
						<th>새 비밀번호 재입력</th>
						<td>
							<input type="password" title="휴대폰 번호 입력" placeholder="Re-enter New Password" class="inp_type1" />
						</td>
					</tr>
				</tbody>
			</table>

			<div class="btn_area">
				<button class="btn_cancel">다음에 변경<span>Later</span></button>
				<button class="btn_purple">지금변경<span>Change</span></button>
			</div>
		</div>

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>

</body>
</html>
