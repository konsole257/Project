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
<div id="wrap" class="modify_step2">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- menu//-->
		<div class="submenu">
			<h2 class="tit">회원정보 수정</h2>

			<%@ include file="/m/inCom/_menu_mypage.jsp" %>
		</div>
		<!-- //menu -->

		<div class="area">
			<img src="/m/mpjtCom/images/sub/mypage_sns_facebook.png" alt="" class="sns_icon">

			<div class="email_area">
				<input type="text" title="이메일 입력" placeholder="E-mail" class="inp_type1" value="asdf0123" disabled/>
				<span class="at">@</span>
				<input type="text" title="이메일 입력" placeholder="E-mail" class="inp_type1" value="naver.com" disabled/>
			</div>
			<div class="name_area mgt12">
				<input title="이름 입력" placeholder="이름 (Full name)" type="text" class="inp_type1" value="김승혜" disabled/>
				<div>
					<label><input type="radio" name="sex" class="rdo_boxtype" checked="checked" /><span>남</span></label>
					<label><input type="radio" name="sex" class="rdo_boxtype" /><span>여</span></label>
				</div>
			</div>
			<input title="핸드폰 번호 입력" placeholder="핸드폰 번호 (Mobile number)" type="text" class="inp_type1 mgt12" />

			<div class="marketing">
				<strong>마케팅 정보 수신 동의</strong>
				<label><input type="checkbox" class="chk_type1" /><span>E-mail</span></label>
				<label><input type="checkbox" class="chk_type1" /><span>SMS</span></label>
			</div>
		</div>

		<div class="btn_area">
			<a href="#" class="btn_purple">저장<span>Save</span></a>
			<a href="#" class="btn_cancel">취소<span>Cancel</span></a>
		</div>

		<div class="withdrawal_area">
			<p class="txt_withdrawal">회원탈퇴 시 더 이상 LIPSS 사이트를 <br>이용하실 수 없습니다.</p>
			<a href="#" class="btn_withdrawal">회원탈퇴</a>
		</div>
	</main>
	<!-- //content -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>

</body>
</html>
