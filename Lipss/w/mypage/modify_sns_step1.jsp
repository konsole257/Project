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
	<main id="wrap" class="mypage modify_step1">
		<div id="contents" class="">

			<div class="tit_area">
				<h2 class="tit"><span>Modify Memeber Info</span>회원정보 수정</h2>

				<!-- menu // -->
				<%@ include file="/w/inCom/menu_mypage.jsp" %>
				<!-- // menu -->
			</div>

			<form>
				<p class="tit">비밀번호 확인</p>
				<p class="txt">회원님의 정보를 안전하게 보호하기 위해 비밀번호를 다시 확인합니다.</p>

				<a href="#" class="btn_sns">SNS 계정 인증</a>
			</form>

		</div>
	</main>
	<!-- // wrap -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>

</html>
