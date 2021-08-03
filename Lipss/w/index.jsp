<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- config // -->
	<%@ include file="/w/inCom/config.jsp" %>
	<!-- // config -->

	<link rel="stylesheet" type="text/css" href="/w/pjtCom/css/main.css" />
</head>

<body class="intro">
	<!-- header // -->
	<%@ include file="/w/inCom/header.jsp" %>
	<!-- // header -->

	<!-- wrap -->
	<main id="wrap">
		<div id="contents">
			<div class="intro_area">
				<video class="video" id="video" loop muted><!-- 수정 : 2018.06.04 -->
					<source src="/w/pjtCom/images/main/video.mp4" type="video/mp4" >
				</video>

				<img src="/w/pjtCom/images/main/img_intro_logo.png" alt="" class="logo">
				<p class="txt"><span class="txt1">보고 싶을 때마다 찾게 되는 나만의 사진숍</span><span class="txt2">Love it !  Pick your sweets</span></p>
				<a href="/w/main.jsp" class="btn_skip">SKIP</a>
			</div>
		</div>
	</main>
	<!-- // wrap -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>

</html>
