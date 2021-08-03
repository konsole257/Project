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
	<main id="wrap" class="mypage modify_step2">
		<div id="contents" class="">

			<div class="tit_area">
				<h2 class="tit"><span>Modify Memeber Info</span>회원정보 수정</h2>

				<!-- menu // -->
				<%@ include file="/w/inCom/menu_mypage.jsp" %>
				<!-- // menu -->
			</div>

			<form>
				<fieldset class="modify_field">
					<legend class="hide">회원정보 수정</legend>

					<img src="/w/pjtCom/images/sub/img_modify_facebook.png" alt="">
					<%-- <img src="/w/pjtCom/images/sub/img_modify_kakao.png" alt=""> --%>
					<%-- <img src="/w/pjtCom/images/sub/img_modify_naver.png" alt=""> --%>

					<table class="tbl_type2">
						<colgroup>
							<col style="width:160px;">
							<col style="width:436px;">
						</colgroup>

						<tbody>
							<tr>
								<th>E-mail</th>
								<td>
									<input type="text" value="ksh0202" class="txt_type1 write_mail1" disabled>
									<span class="at">@</span>
									<input type="text" value="naver.com" class="txt_type1 write_mail2" disabled>
								</td>
							</tr>

							<tr>
								<th>Full name</th>
								<td>
									<input type="text" value="김승혜" class="txt_type1 write_name" disabled>
									<input type="radio" id="man" name="gender" checked><label for="man" class="gender">남</label>
									<input type="radio" id="woman" name="gender"><label for="woman" class="gender">여</label>
								</td>
							</tr>

							<tr>
								<th>Mobile Number</th>
								<td>
									<input type="text" placeholder="핸드폰 번호 (Mobile phone number / -없이 입력)" title="핸드폰 입력" class="txt_type1 write_phone">

									<div class="marketing_area">
										<span>마케팅 정보 수신 동의</span>

										<div class="marketing_list">
											<input type="checkbox" id="mail" class="chk_type2"><label for="mail">E-mail</label>
											<input type="checkbox" id="sms" class="chk_type2"><label for="sms">SMS</label>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>

					<div class="txt_area">
						<p class="txt">회원탈퇴 시 더 이상 LIPSS 사이트를 이용하실 수 없습니다.</p>
						<a href="#" class="btn_withdrawal">회원탈퇴</a>
					</div>

					<!-- 수정 : 2018.05.04 // -->
					<div class="btn_area">
						<button type="submit" class="btn_save"><span>저장 <span>Save</span></span></button>
						<a href="#" class="btn_cancel"><span>취소 <span>Cancel</span></span></a>
					</div>
					<!-- // -->
				</fieldset>
			</form>
		</div>
	</main>
	<!-- // wrap -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>

</html>
