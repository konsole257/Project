
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
	<main id="wrap" class="member join">
		<div id="contents">

			<div class="join_step2">
				<img src="/w/pjtCom/images/sub/img_login_logo.png" alt="" class="logo">

				<div class="inner">
					<div class="complete_area">
						<div class="txt_area">
							<p class="txt1">회원가입이 완료되었습니다!</p>
							<p class="txt2"><b>YGM1234</b> 님<br>LIPSS의 회원이 되신 것을 환영합니다!</p>
						</div>

						<!-- 수정 : 2018.05.24 // -->
						<div class="btn_area">
							<a href="/w/" class="btn_main">메인 <span>(Main)</span></a>
						</div>
						<!-- // 수정 : 2018.05.24 -->
						<p class="txt3">2018년10월22일 - 마케팅 정보 수신 동의가 반영되었습니다.</p><!-- 추가 : 2018.10.22 -->
					</div>
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
