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
	<main id="wrap" class="event">
		<div id="contents" class="">

			<div class="tit_area">
				<h2 class="tit">이벤트</h2>

				<!-- menu // -->
				<%@ include file="/w/inCom/menu_event.jsp" %>
				<!-- // menu -->
			</div>

			<!-- 추가 : 2018.10.17 // -->
			<div class="rolling_banner">
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><a href="#"><img src="/w/pjtCom/images/temp/img_event_top_thumb.jpg" alt="이벤트 썸네일 이미지"></a></div>
						<div class="swiper-slide"><a href="#"><img src="/w/pjtCom/images/temp/img_event_top_thumb.jpg" alt="이벤트 썸네일 이미지"></a></div>
						<div class="swiper-slide"><a href="#"><img src="/w/pjtCom/images/temp/img_event_top_thumb.jpg" alt="이벤트 썸네일 이미지"></a></div>
						<div class="swiper-slide"><a href="#"><img src="/w/pjtCom/images/temp/img_event_top_thumb.jpg" alt="이벤트 썸네일 이미지"></a></div>
					</div>
					<div class="swiper-button-next">></div>
					<div class="swiper-button-prev"><</div>
				</div>
			</div>
			<!-- // 추가 : 2018.10.17 -->

			<div class="count"><b>이벤트</b> 총 <b class="number">15</b>건</div>

			<!-- List // -->
			<div class="list_area">
				<ul>
					<!-- 반복영역 // -->
					<li>
						<a href="event_view.jsp">
							<figure class="thumb_img">
								<img src="/w/pjtCom/images/temp/img_event_thumb_360x360.jpg" alt="이벤트 썸네일 이미지">
							</figure>
							<span class="date">2018.09.08 - 9.30</span>
						</a>
					</li>
					<!-- // 반복영역 -->
					<li>
						<a href="event_view.jsp">
							<figure class="thumb_img">
								<img src="/w/pjtCom/images/temp/img_event_thumb_360x360.jpg" alt="이벤트 썸네일 이미지">
							</figure>
							<span class="date">2018.09.08 - 9.30</span>
						</a>
					</li>
					<li>
						<a href="event_view.jsp">
							<figure class="thumb_img">
								<img src="/w/pjtCom/images/temp/img_event_thumb_360x360.jpg" alt="이벤트 썸네일 이미지">
							</figure>
							<span class="date">2018.09.08 - 9.30</span>
						</a>
					</li>
					<li>
						<a href="event_view.jsp">
							<figure class="thumb_img">
								<img src="/w/pjtCom/images/temp/img_event_thumb_360x360.jpg" alt="이벤트 썸네일 이미지">
							</figure>
							<span class="date">2018.09.08 - 9.30</span>
						</a>
					</li>
					<li>
						<a href="event_view.jsp">
							<figure class="thumb_img">
								<img src="/w/pjtCom/images/temp/img_event_thumb_360x360.jpg" alt="이벤트 썸네일 이미지">
							</figure>
							<span class="date">2018.09.08 - 9.30</span>
						</a>
					</li>
					<li>
						<a href="event_view.jsp">
							<figure class="thumb_img">
								<img src="/w/pjtCom/images/temp/img_event_thumb_360x360.jpg" alt="이벤트 썸네일 이미지">
							</figure>
							<span class="date">2018.09.08 - 9.30</span>
						</a>
					</li>
					<li>
						<a href="event_view.jsp">
							<figure class="thumb_img">
								<img src="/w/pjtCom/images/temp/img_event_thumb_360x360.jpg" alt="이벤트 썸네일 이미지">
							</figure>
							<span class="date">2018.09.08 - 9.30</span>
						</a>
					</li>
					<li>
						<a href="event_view.jsp">
							<figure class="thumb_img">
								<img src="/w/pjtCom/images/temp/img_event_thumb_360x360.jpg" alt="이벤트 썸네일 이미지">
							</figure>
							<span class="date">2018.09.08 - 9.30</span>
						</a>
					</li>
				</ul>

				<div class="text_area">
					<strong>알려드립니다.</strong>
					<p>이벤트 조기 종료 시 다른 이벤트로 대체 되거나 취소 될 수 있습니다. 이점 양해 부탁드립니다. </p>
				</div>

				<!--  페이징 // -->
				<div class="paging">
					<a href="#" class="btn_prev">이전</a>
					<span class="num">
						<a href="#" class="on">1</a> <a href="#">2</a> <a href="#">3</a>
					</span>
					<a href="#" class="btn_next">다음</a>
				</div>
				<!--  // 페이징 -->
			</div>
			<!-- // List -->

		</div>
	</main>
	<!-- // wrap -->

	<!-- footer // -->
	<%@ include file="/w/inCom/footer.jsp" %>
	<!-- // footer -->
</body>
</html>