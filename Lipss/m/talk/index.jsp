<%@ page contentType="text/html; charset=UTF-8" %>
<!doctype html>
<html lang="ko">
<head>
	<!-- config// -->
	<%@ include file="/m/inCom/_config.jsp" %>
	<!-- //config -->

	<link rel="stylesheet" type="text/css" href="/m/mpjtCom/css/sub.css" />
	<title>LIPSS</title>
	<script>
	$(window).load(function(){
		var $grid = $('.talk-list').imagesLoaded( function(){
			$grid.masonry({
				itemSelector: '.talk-item'
			});
		});
	});
	</script>
</head>
<body class="talk">
<div id="wrap" class="index">

	<!-- header//-->
	<%@ include file="/m/inCom/_header.jsp" %>
	<!-- //header -->

	<!-- content// -->
	<main id="contents">
		<div class="new_area">
			<div class="inner">
				<h3 class="tit">NEW LIPSS TALK</h3>
				<p class="txt">실시간 새로운 상품평을 확인해보세요.</p>

				<!-- 2018.12.10 : 수정 // -->
				<div class="swiper-container talkswiper">
					<ul class="swiper-wrapper list">
						<li class="swiper-slide">
							<a href="#user_review" onclick="fn.popupOpen(this);">
								<span class="date_area">
									<span class="id">mah***</span>
									<span class="date">2018.10.23</span>
								</span>

								<span class="img_area">
									<img src="http://dev-file.lipss.kr/upload/imgServer/goods/96/TTTTTTTTTTTTT0006_B.jpg" alt="" class="img">
								</span>

								<span class="txt_area">
									<span class="ellipsis">너무 사진이 예뻐요. 크리스탈로 주문 했는데 정말 살아있는 느낌너무 사진이 예뻐요. 크리스탈로 주문 했는데 정말 살아있는 느낌</span>
								</span>
							</a>
						</li>

						<li class="swiper-slide">
							<a href="#user_review" onclick="fn.popupOpen(this);">
								<span class="date_area">
									<span class="id">mah***</span>
									<span class="date">2018.10.23</span>
								</span>

								<span class="img_area">
									<img src="http://dev-file.lipss.kr/upload/imgServer/goods/97/TTTTTTTTTTTTT0007_B.jpg" alt="" class="img">
								</span>

								<span class="txt_area">
									<span class="ellipsis">너무 사진이 예뻐요. 크리스탈로 주문 했는데 정말 살아있는 느낌너무 사진이 예뻐요. 크리스탈로 주문 했는데 정말 살아있는 느낌</span>
								</span>
							</a>
						</li>

						<li class="swiper-slide">
							<a href="#user_review" onclick="fn.popupOpen(this);">
								<span class="date_area">
									<span class="id">mah***</span>
									<span class="date">2018.10.23</span>
								</span>

								<span class="img_area">
									<img src="http://dev-file.lipss.kr/upload/imgServer/goods/96/TTTTTTTTTTTTT0006_B.jpg" alt="" class="img">
								</span>

								<span class="txt_area">
									<span class="ellipsis">너무 사진이 예뻐요. 크리스탈로 주문 했는데 정말 살아있는 느낌너무 사진이 예뻐요. 크리스탈로 주문 했는데 정말 살아있는 느낌</span>
								</span>
							</a>
						</li>

						<li class="swiper-slide">
							<a href="#user_review" onclick="fn.popupOpen(this);">
								<span class="date_area">
									<span class="id">mah***</span>
									<span class="date">2018.10.23</span>
								</span>

								<span class="img_area">
									<img src="http://dev-file.lipss.kr/upload/imgServer/goods/96/TTTTTTTTTTTTT0006_B.jpg" alt="" class="img">
								</span>

								<span class="txt_area">
									<span class="ellipsis">너무 사진이 예뻐요. 크리스탈로 주문 했는데 정말 살아있는 느낌너무 사진이 예뻐요. 크리스탈로 주문 했는데 정말 살아있는 느낌</span>
								</span>
							</a>
						</li>

						<li class="swiper-slide">
							<a href="#user_review" onclick="fn.popupOpen(this);">
								<span class="date_area">
									<span class="id">mah***</span>
									<span class="date">2018.10.23</span>
								</span>

								<span class="img_area">
									<img src="http://dev-file.lipss.kr/upload/imgServer/goods/96/TTTTTTTTTTTTT0006_B.jpg" alt="" class="img">
								</span>

								<span class="txt_area">
									<span class="ellipsis">너무 사진이 예뻐요. 크리스탈로 주문 했는데 정말 살아있는 느낌너무 사진이 예뻐요. 크리스탈로 주문 했는데 정말 살아있는 느낌</span>
								</span>
							</a>
						</li>

						<li class="swiper-slide">
							<a href="#user_review" onclick="fn.popupOpen(this);">
								<span class="date_area">
									<span class="id">mah***</span>
									<span class="date">2018.10.23</span>
								</span>

								<span class="img_area">
									<img src="http://dev-file.lipss.kr/upload/imgServer/goods/96/TTTTTTTTTTTTT0006_B.jpg" alt="" class="img">
								</span>

								<span class="txt_area">
									<span class="ellipsis">너무 사진이 예뻐요. 크리스탈로 주문 했는데 정말 살아있는 느낌너무 사진이 예뻐요. 크리스탈로 주문 했는데 정말 살아있는 느낌</span>
								</span>
							</a>
						</li>
					</ul>
				</div>
				<!-- // 2018.12.10 : 수정 -->
			</div>

			<div class="swiper-pagination"></div>
		</div>

		<div class="best_area">
			<div class="inner">
				<h3 class="tit">BEST LIPSS TALK</h3>
				<p class="txt">제일 많은 상품평이 달린 콘텐츠를 확인해보세요!</p>

				<ul class="list">
					<li>
						<a href="#">
							<span class="img_area">
								<img src="http://dev-file.lipss.kr/upload/imgServer/goods/96/TTTTTTTTTTTTT0006_B.jpg" alt="" class="img">
							</span>

							<span class="txt_area">
								<span class="ellipsis">[SECHSKIES] 심쿵 나이 샷! in LA 찌워크 No.198</span>
							</span>

							<span class="comment">12,500</span>
						</a>
					</li>

					<li>
						<a href="#">
							<span class="img_area">
								<img src="http://dev-file.lipss.kr/upload/imgServer/goods/97/TTTTTTTTTTTTT0007_B.jpg" alt="" class="img">
							</span>

							<span class="txt_area">
								<span class="ellipsis">[SECHSKIES] 심쿵 나이 샷! in LA 찌워크 No.198</span>
							</span>

							<span class="comment">12,500</span>
						</a>
					</li>

					<li>
						<a href="#">
							<span class="img_area">
								<img src="http://dev-file.lipss.kr/upload/imgServer/goods/96/TTTTTTTTTTTTT0006_B.jpg" alt="" class="img">
							</span>

							<span class="txt_area">
								<span class="ellipsis">[SECHSKIES] 심쿵 나이 샷! in LA 찌워크 No.198</span>
							</span>

							<span class="comment">12,500</span>
						</a>
					</li>

					<li>
						<a href="#">
							<span class="img_area">
								<img src="http://dev-file.lipss.kr/upload/imgServer/goods/96/TTTTTTTTTTTTT0006_B.jpg" alt="" class="img">
							</span>

							<span class="txt_area">
								<span class="ellipsis">[SECHSKIES] 심쿵 나이 샷! in LA 찌워크 No.198</span>
							</span>

							<span class="comment">12,500</span>
						</a>
					</li>

					<li>
						<a href="#">
							<span class="img_area">
								<img src="http://dev-file.lipss.kr/upload/imgServer/goods/96/TTTTTTTTTTTTT0006_B.jpg" alt="" class="img">
							</span>

							<span class="txt_area">
								<span class="ellipsis">[SECHSKIES] 심쿵 나이 샷! in LA 찌워크 No.198</span>
							</span>

							<span class="comment">12,500</span>
						</a>
					</li>

					<li>
						<a href="#">
							<span class="img_area">
								<img src="http://dev-file.lipss.kr/upload/imgServer/goods/96/TTTTTTTTTTTTT0006_B.jpg" alt="" class="img">
							</span>

							<span class="txt_area">
								<span class="ellipsis">[SECHSKIES] 심쿵 나이 샷! in LA 찌워크 No.198</span>
							</span>

							<span class="comment">12,500</span>
						</a>
					</li>

					<li>
						<a href="#">
							<span class="img_area">
								<img src="http://dev-file.lipss.kr/upload/imgServer/goods/96/TTTTTTTTTTTTT0006_B.jpg" alt="" class="img">
							</span>

							<span class="txt_area">
								<span class="ellipsis">[SECHSKIES] 심쿵 나이 샷! in LA 찌워크 No.198</span>
							</span>

							<span class="comment">12,500</span>
						</a>
					</li>

					<li>
						<a href="#">
							<span class="img_area">
								<img src="http://dev-file.lipss.kr/upload/imgServer/goods/97/TTTTTTTTTTTTT0007_B.jpg" alt="" class="img">
							</span>

							<span class="txt_area">
								<span class="ellipsis">[SECHSKIES] 심쿵 나이 샷! in LA 찌워크 No.198</span>
							</span>

							<span class="comment">12,500</span>
						</a>
					</li>
				</ul>

				<div class="paging paging_type2">
					<a href="#" class="btn_prev">이전</a>
					<span class="num">
						<a href="#" class="on">1</a>
						<span>/</span>
						<a href="#">5</a>
					</span>
					<a href="#" class="btn_next">다음</a>
				</div>
			</div>
		</div>
	</main>
	<!-- //content -->

	<!-- 상품평 // -->
	<div id="user_review" class="popup user_review">
		<div class="popup_area">
			<div class="inner">
				<button type="button" class="btn_close" onclick="fn.popupClose('#user_review')">닫기</button>
				<h3>LIPSS TALK</h3>

				<div class="contents">
					<div class="top">
						<span class="txt_id">sss***</span>
						<div class="grade_heart">
							<span><span style="width:80%;">4하트</span></span>
						</div>
						<a href="#">상품보기 &gt;</a>
					</div>

					<div class="reviewpic"><img src="/w/pjtCom/images/temp/img_user_review_440X292.jpg"></div>

					<div class="swiper-container popscroll"><div class="swiper-wrapper"><div class="swiper-slide">
						<p class="reviewtxt">
							이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
							이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
							이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
							이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
							이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
							이번에 출시한 셔누 사진 너무 좋아요! 질도 좋고 배송도 빨랐어요! 감사합니다! 립스 짱!
						</p>
					</div></div><div class="swiper-scrollbar"></div></div>
				</div>
			</div>
		</div>
	</div>
	<!-- // 상품평 -->

	<!-- footer//-->
	<%@ include file="/m/inCom/_footer.jsp" %>
	<!-- //footer -->

</div>
</body>
</html>
