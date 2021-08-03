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
<div id="wrap" class="main">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- menu//-->
		<div class="submenu">
			<h2 class="tit">MY PAGE</h2>

			<%@ include file="/m/inCom/_menu_mypage.jsp" %>
		</div>
		<!-- //menu -->

		<div class="dashboard_area">
			<div class="txt_area">
				<p class="txt"><b>김승혜</b>님, 안녕하세요!</p>
				<a href="#" class="btn_logout">로그아웃</a>
			</div>

			<div class="dashboard_list">
				<dl class="payment">
					<dt>결제완료</dt>
					<dd>3</dd>
				</dl>

				<dl class="delivery">
					<dt>배송 중</dt>
					<dd>1</dd>
				</dl>

				<dl class="cancel">
					<dt>취소/교환/반품</dt>
					<dd>0</dd>
				</dl>

				<dl class="wish">
					<dt>위시리스트</dt>
					<dd>5</dd>
				</dl>
			</div>
		</div>

		<section class="myheart_area">
			<h3 class="tit">MY HEART <a href="#" class="btn_tooltip">설명 보기</a></h3>
			<p class="tooltip">
				<a href="#" class="btn_close">닫기</a>
				내가 구매한 이미지를 확인 할 수 있습니다.<br>
				본 사이트에 판매중인 모든 이미지에 대한 저작권은 <br>
				LIPSS 또는 해당 이미지의 원 저작권자에게 있으며<br>
				저작권 정책에 따라 서비스 이용이 제한 될 수 있습니다.<br>
			</p>

			<ul class="myheart_list">
				<li>
					<span><img src="/m/mpjtCom/images/temp/img_goods_213x320_B.jpg" alt="" class="img"></span>
				</li>

				<li>
					<span><img src="/m/mpjtCom/images/temp/img_goods_480x320_B.jpg" alt="" class="img"></span>
				</li>

				<li>
					<span><img src="/m/mpjtCom/images/temp/img_goods_480x320_B.jpg" alt="" class="img"></span>
				</li>

				<li>
					<span><img src="/m/mpjtCom/images/temp/img_goods_213x320_B.jpg" alt="" class="img"></span>
				</li>

				<li>
					<span><img src="/m/mpjtCom/images/temp/img_goods_480x320_B.jpg" alt="" class="img"></span>
				</li>

				<li>
					<span><img src="/m/mpjtCom/images/temp/img_goods_213x320_B.jpg" alt="" class="img"></span>
				</li>
			</ul>

			<button type="button" class="btn_more">더보기<span>More</span></button>
		</section>

	</main>
	<!-- //content -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>

</body>
</html>
