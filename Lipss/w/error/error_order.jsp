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
	<main id="wrap" class="error inspect">
		<div id="contents">

			<div class="error_area">
				<img src="/w/pjtCom/images/sub/img_login_logo.png" alt="" class="logo">

				<div class="inner">
					<img src="/w/pjtCom/images/sub/img_error_order.png" alt="" class="img">

					<div class="txt_area">
						<p class="txt1">
							<span>(에러코드 : -99)</span><br>
							결제가 거부되었습니다.
						</p>
						<p class="txt2">관리자에게 에러코드를 전달해 주십시오.</p>
					</div>

					<a href="/w/" class="btn_main"><span>메인화면<span>Main</span></span></a>
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
