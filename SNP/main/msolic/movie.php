<section class="con5">
	<!-- 비디오 등록시 // -->
	<h2 class="tit"><img src="/pjtCom/pc/images/main/msolic/con5_tit.png" alt="MOVIE IN ITEM"></h2>

	<div class="inner">
		<div class="swiper-container con5-swiper">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="vidio-area">
						<div id="player1" data-src="https://www.youtube.com/embed/YRv07bl0iTk"></div>
						<img src="/pjtCom/pc/images/temp/msolic/movie.png" alt="" class="img">
					</div>

					<div class="swiper-container con5-swiper2">
						<ul class=" swiper-wrapper product-list">
							<li class="swiper-slide">
								<a href="#">
									<div class="thumb"><img src="/pjtCom/pc/images/temp/product_226x226_2.jpg" alt="" class="img"></div>
									<p class="name">[디렉터파이 선정] 히든랩 스킨 컨센트레이트1</p>
									<div class="price">
										<del>48,000원</del>
										<span>35,000원</span>
									</div>
								</a>

								<a href="#">
									<div class="thumb"><img src="/pjtCom/pc/images/temp/product_226x226_2.jpg" alt="" class="img"></div>
									<p class="name">[디렉터파이 선정] 히든랩 스킨 컨센트레이트1</p>
									<div class="price">
										<del>48,000원</del>
										<span>35,000원</span>
									</div>
								</a>
							</li>

							<li class="swiper-slide">
								<a href="#">
									<div class="thumb"><img src="/pjtCom/pc/images/temp/product_226x226_2.jpg" alt="" class="img"></div>
									<p class="name">[디렉터파이 선정] 히든랩 스킨 컨센트레이트2</p>
									<div class="price">
										<del>48,000원</del>
										<span>35,000원</span>
									</div>
								</a>

								<a href="#">
									<div class="thumb"><img src="/pjtCom/pc/images/temp/product_226x226_2.jpg" alt="" class="img"></div>
									<p class="name">[디렉터파이 선정] 히든랩 스킨 컨센트레이트2</p>
									<div class="price">
										<del>48,000원</del>
										<span>35,000원</span>
									</div>
								</a>
							</li>
						</ul>
					</div>

					<div class="indicator">
						<div class="swiper-button-next next1"></div>
						<div class="swiper-button-prev"></div>
					</div>
				</div>


				<div class="swiper-slide">
					<div class="vidio-area">
						<div id="player2" data-src="https://www.youtube.com/embed/YRv07bl0iTk"></div>
						<img src="/pjtCom/pc/images/temp/msolic/movie.png" alt="" class="img">
					</div>

					<div class="swiper-container con5-swiper2">
						<ul class=" swiper-wrapper product-list">
							<li class="swiper-slide">
								<a href="#">
									<div class="thumb"><img src="/pjtCom/pc/images/temp/product_226x226_2.jpg" alt="" class="img"></div>
									<p class="name">[디렉터파이 선정] 히든랩 스킨 컨센트레이트1</p>
									<div class="price">
										<del>48,000원</del>
										<span>35,000원</span>
									</div>
								</a>

								<a href="#">
									<div class="thumb"><img src="/pjtCom/pc/images/temp/product_226x226_2.jpg" alt="" class="img"></div>
									<p class="name">[디렉터파이 선정] 히든랩 스킨 컨센트레이트1</p>
									<div class="price">
										<del>48,000원</del>
										<span>35,000원</span>
									</div>
								</a>
							</li>

							<li class="swiper-slide">
								<a href="#">
									<div class="thumb"><img src="/pjtCom/pc/images/temp/product_226x226_2.jpg" alt="" class="img"></div>
									<p class="name">[디렉터파이 선정] 히든랩 스킨 컨센트레이트2</p>
									<div class="price">
										<del>48,000원</del>
										<span>35,000원</span>
									</div>
								</a>

								<a href="#">
									<div class="thumb"><img src="/pjtCom/pc/images/temp/product_226x226_2.jpg" alt="" class="img"></div>
									<p class="name">[디렉터파이 선정] 히든랩 스킨 컨센트레이트2</p>
									<div class="price">
										<del>48,000원</del>
										<span>35,000원</span>
									</div>
								</a>
							</li>
						</ul>
					</div>

					<div class="indicator">
						<div class="swiper-button-next next1"></div>
						<div class="swiper-button-prev"></div>
					</div>
				</div>
			</div>

			<div class="indicator">
				<div class="swiper-pagination"></div>

				<div class="swiper-button-next"></div>
				<div class="swiper-button-prev"></div>
			</div>
		</div>
	</div>
	<!-- // 비디오 등록시 -->

	<!-- 이미지 등록시 // -->
	<!-- <div class="img-area">
		<img src="/pjtCom/pc/images/temp/msolic/movie_img.png" alt="" class="img">
	</div> -->
	<!-- // 이미지 등록시 -->

	<script>
	var tag = document.createElement('script');
	tag.src = "https://www.youtube.com/iframe_api";
	var firstScriptTag = document.getElementsByTagName('script')[0];
	firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

	var player = [];

	function onYouTubeIframeAPIReady() {
		$('.vidio-area div').each(function(){
			var playerName = $(this).attr('id').split('#')[0];
			var videoId = $(this).attr('data-src').split('/').pop();

			player.push(new YT.Player(playerName, {videoId: videoId}))
		});
	}

	$('.vidio-area .img').click(function(){
        $(this).hide();
        player[$(this).parent('.vidio-area').index()].playVideo();
    });
	</script>
</section>
