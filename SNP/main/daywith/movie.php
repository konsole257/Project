<section class="con3">
	<!-- 비디오 등록시 // -->
	<h2 class="tit"><img src="/pjtCom/pc/images/main/daywith/con3_tit.png" alt="Movie"></h2>

	<div class="inner">
		<div class="vidio-area">
			<div id="player" data-src="https://www.youtube.com/embed/YRv07bl0iTk"></div>
			<img src="/pjtCom/pc/images/temp/daywith/movie.jpg" alt="" class="img">
		</div>

		<div class="txt-area">
			<span>BRAND<br>STORY</span>
			<h2 class="tit">[데이위드/DAYWITH] 셀럽 #양정원 #조애경 의 안전한 생리대</h2>
			<p class="txt">
				필라테스 강사 양정원과 가정의학 전문의 조애경이 추천하는<br>
				유기농 생리대 데이위드! 그녀들이 데이위드를 소개하는 이유를 영상에서 확인해보세요!
			</p>
		</div>
	</div>
	<!-- // 비디오 등록시 -->

	<!-- 이미지등록시 : 2019.04.08 : 추가 // -->
	<!-- <div class="img-area"><img src="/pjtCom/pc/images/temp/snp/movie_img.jpg" alt="" class="img"></div> -->
	<!-- // 이미지등록시 -->

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
