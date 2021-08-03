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
<div id="wrap" class="end">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">

		<!-- menu//-->
		<div class="submenu">
			<h2 class="tit">종료된 이벤트 이벤트</h2>

			<%@ include file="/m/inCom/_menu_event.jsp" %>
		</div>
		<!-- //menu -->

		<div class="count"><strong>이벤트</strong> 총 <em>15</em>건</div>

		<!-- List// -->
		<div class="list_area">
			<ul>
				<!-- 반복영역// -->
				<li>
					<div class="img">
						<div class="cover"><span>이벤트 종료</span></div>
						<figure class="thumb_img">
							<img src="/w/pjtCom/images/temp/img_event_thumb_510x250.jpg" alt="이벤트 썸네일 이미지">
						</figure>
					</div>
					<div class="event_info">
						<span class="date">2018.09.08 - 9.30</span>
						<a href="#" class="btn_result">당첨자 발표</a>
					</div>
				</li>
				<!-- //반복영역 -->
				<!-- 당첨자 발표 없는 경우 // -->
				<li>
					<div class="img">
						<div class="cover"><span>이벤트 종료</span></div>
						<figure class="thumb_img">
							<img src="/w/pjtCom/images/temp/img_event_thumb_510x250.jpg" alt="이벤트 썸네일 이미지">
						</figure>
					</div>
					<div class="event_info">
						<span class="date">2018.09.08 - 9.30</span>
					</div>
				</li>
				<!-- // 당첨자 발표 없는 경우 -->
				<li>
					<div class="img">
						<div class="cover"><span>이벤트 종료</span></div>
						<figure class="thumb_img">
							<img src="/w/pjtCom/images/temp/img_event_thumb_510x250.jpg" alt="이벤트 썸네일 이미지">
						</figure>
					</div>
					<div class="event_info">
						<span class="date">2018.09.08 - 9.30</span>
						<a href="#" class="btn_result">당첨자 발표</a>
					</div>
				</li>
				<li>
					<div class="img">
						<div class="cover"><span>이벤트 종료</span></div>
						<figure class="thumb_img">
							<img src="/w/pjtCom/images/temp/img_event_thumb_510x250.jpg" alt="이벤트 썸네일 이미지">
						</figure>
					</div>
					<div class="event_info">
						<span class="date">2018.09.08 - 9.30</span>
						<a href="#" class="btn_result">당첨자 발표</a>
					</div>
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