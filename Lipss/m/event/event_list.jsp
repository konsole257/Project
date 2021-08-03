<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
	<!-- config// -->
	<%@ include file="/m/inCom/_config.jsp" %>
	<!-- //config -->

	<link rel="stylesheet" type="text/css" href="/m/mpjtCom/css/sub.css" />

</head>
<body class="event">
<div id="wrap" class="list">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- 수정 : 2018.10.17 // -->
		<!-- menu//-->
		<div class="submenu">
			<h2 class="tit">진행중인 이벤트</h2>

			<%@ include file="/m/inCom/_menu_event.jsp" %>
		</div>
		<!-- //menu -->
		<!-- // 수정 : 2018.10.17 -->

		<!-- 추가 : 2018.10.17 // -->
		<div class="rolling_banner">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide"><a href="#"><img src="/m/mpjtCom/images/temp/img_event_top_thumb1_720x378.jpg" alt="이벤트 썸네일 이미지"></a></div>
					<div class="swiper-slide"><a href="#"><img src="/m/mpjtCom/images/temp/img_event_top_thumb2_720x378.jpg" alt="이벤트 썸네일 이미지"></a></div>
					<div class="swiper-slide"><a href="#"><img src="/m/mpjtCom/images/temp/img_event_top_thumb1_720x378.jpg" alt="이벤트 썸네일 이미지"></a></div>
					<div class="swiper-slide"><a href="#"><img src="/m/mpjtCom/images/temp/img_event_top_thumb2_720x378.jpg" alt="이벤트 썸네일 이미지"></a></div>
				</div>
				<div class="swiper-button-next">></div>
				<div class="swiper-button-prev"><</div>
			</div>
		</div>

		<div class="count"><strong>이벤트</strong> 총 <em>15</em>건</div>
		<!-- // 추가 : 2018.10.17 -->

		<!-- List// -->
		<div class="list_area">
			<ul>
				<!-- 반복영역// -->
				<li>
					<a href="event_view.jsp">
						<figure class="thumb_img">
							<img src="/m/mpjtCom/images/temp/img_event_thumb_656x322.jpg" alt="이벤트 썸네일 이미지">
						</figure>
						<span class="date">2018.09.08 - 9.30</span>
					</a>
				</li>
				<!-- //반복영역 -->
				<li>
					<a href="event_view.jsp">
						<figure class="thumb_img">
							<img src="/m/mpjtCom/images/temp/img_event_thumb_656x322.jpg" alt="이벤트 썸네일 이미지">
						</figure>
						<span class="date">2018.09.08 - 9.30</span>
					</a>
				</li>
				<li>
					<a href="event_view.jsp">
						<figure class="thumb_img">
							<img src="/m/mpjtCom/images/temp/img_event_thumb_656x322.jpg" alt="이벤트 썸네일 이미지">
						</figure>
						<span class="date">2018.09.08 - 9.30</span>
					</a>
				</li>
				<li>
					<a href="event_view.jsp">
						<figure class="thumb_img">
							<img src="/m/mpjtCom/images/temp/img_event_thumb_656x322.jpg" alt="이벤트 썸네일 이미지">
						</figure>
						<span class="date">2018.09.08 - 9.30</span>
					</a>
				</li>
			</ul>
		</div>
		<!-- //List -->

		<div class="txt_area">
			<strong>알려드립니다.</strong>
			<ul>
				<li>이벤트 조기 종료 시 다른 이벤트로 대체 되거나 취소 될 수 있습니다. 이점 양해 부탁드립니다.</li>
			</ul>
		</div>

	</main>
	<!-- //content -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>
</body>
</html>