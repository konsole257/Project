<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
	<!-- config// -->
	<%@ include file="/m/inCom/_config.jsp" %>
	<!-- //config -->

	<link rel="stylesheet" type="text/css" href="/m/mpjtCom/css/sub.css" />

</head>
<body class="customer">
<div id="wrap" class="notice">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- menu//-->
		<div class="submenu">
			<h2 class="tit">공지사항</h2>

			<%@ include file="/m/inCom/_menu_customer.jsp" %>
		</div>
		<!-- //menu -->

		<!-- notice// -->
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

				감사합니다.
			</div>

			<!-- 추가 : 2018.05.29 // -->
			<dl class="file_area">
				<dt>첨부파일</dt>

				<dd><a href="#">img_0129.jpg</a></dd>
				<dd><a href="#">img_0129.jpg</a></dd>
				<dd><a href="#">img_0129.jpg</a></dd>
			</dl>
			<!-- // 추가 : 2018.05.29 -->

			<a href="/m/customer/notice_list.jsp" class="btn_list"><span>목록<span>List</span></span></a>
		</article>
		<!-- //notice -->

	</main>
	<!-- //content -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>
</body>
</html>
