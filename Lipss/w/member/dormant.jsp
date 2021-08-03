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

	<!-- wrap -->
	<main id="wrap" class="member dormant">
		<div id="contents">

			<div class="dormant_area">
				<a href="/"><img src="/w/pjtCom/images/sub/img_login_logo.png" alt="" class="logo"></a>

				<div class="inner">
					<img src="/w/pjtCom/images/sub/img_member_dormant.png" alt="" class="img">

					<p class="txt1">휴면 계정 전환 안내</p>
					<p class="txt2">
						고객님은 최근 1년 간 로그인기록이 없어 <span>휴면 계정으로 전환</span>되었습니다.<br>
						휴면 계정을 해제하시려면 아래의 <span>휴면 계정 해제 확인</span> 버튼을 클릭해 주세요.
					</p>
					<a href="#" class="btn_cancel">휴면 계정 해제 확인</a>

					<p class="txt3">
						휴면 계정 해제 확인 클릭 시 휴면 상태가 해제되며,<br>
						기존 아이디로 동일하게 서비스를 이용하실 수 있습니다.
					</p>
				</div>
			</div>

		</div>
	</main>
	<!-- // wrap -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>

</html>
