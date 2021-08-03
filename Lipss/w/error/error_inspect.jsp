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
					<img src="/w/pjtCom/images/sub/img_error_inspect.png" alt="" class="img">

					<div class="txt_area">
						<p class="txt1">
							지금은 <span>시스템 점검 중</span> 입니다.<br>
						</p>
						<p class="txt2">불편을 드려 대단히 죄송합니다.</p>
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
