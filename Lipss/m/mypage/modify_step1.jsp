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
<div id="wrap" class="modify_step1">

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

		<section class="password_area">

			<p class="txt">회원님의 정보를 안전하게 보호하기 위해<br> 비밀번호를 다시 확인합니다.</p>

			<input type="text" title="비밀번호 입력" placeholder="비밀번호 입력 (Password)" class="inp_type1 write_pw" />

			<div class="btn_area">
				<a href="#" class="btn_purple">확인<span>OK</span></a>
				<a href="#" class="btn_cancel">취소<span>Cancel</span></a>
			</div>
		</section>

	</main>
	<!-- //content -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>

</body>
</html>
