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
	<main id="wrap" class="customer notice">
		<div id="contents" class="">

			<div class="tit_area">
				<h2 class="tit"><span>CS Center</span>공지사항</h2>

				<!-- menu // -->
				<%@ include file="/w/inCom/menu_customer.jsp" %>
				<!-- // menu -->
			</div>

			<article class="view_area">
				<header class="tit_area">
					<h2 class="subject">[공지] 보고플 때마다 찾게 되는 나만의 편집숍! LIPSS 가 오픈했습니다.</h2>

					<span class="date">2018.05.11</span>
				</header>

				<div class="editor_area">
					안녕하세요?<br><br>

					보고플 때마다 찾게 되는 나만의 편집숍!<br>
					LIPSS가 드디어 온라인 공식 쇼핑몰을 오픈 하였습니다.<br><br>

					이제 LIPSS 공식사이트를 통해 소속사별 전 상품을 만나 보실 수 있습니다.<br>
					오픈 기념 다양한 이벤트가 준비되어 있으니 많은 참여 부탁 드립니다.<br><br>

					감사합니다.<br>

					<img src="/w/pjtCom/images/common/logo.png" width="2000px">
				</div>

				<!-- 추가 : 2018.05.29 // -->
				<dl class="file_area">
					<dt>첨부파일</dt>

					<dd><a href="#">img_0129.jpg</a></dd>
					<dd><a href="#">img_0129.jpg</a></dd>
					<dd><a href="#">img_0129.jpg</a></dd>
				</dl>
				<!-- // 추가 : 2018.05.29 -->

				<a href="\w\customer\notice_list.jsp" class="btn_list"><span>목록<span>List</span></span></a>
			</article>

		</div>
	</main>
	<!-- // wrap -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>

</html>
