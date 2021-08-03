<section class="con3">
	<!-- 비디오 등록시 // -->
	<div class="txt-area">
		<h2 class="tit">#속채움마스크</h2>
		<p class="txt1">
			때로는 우아하게,<br>
			때로는 러블리하게, 때로는 상큼하게<br>
			자체발광 피부 미인 문채원의 피부 관리 시크릿은?
		</p>
		<p class="txt2">SNP 히알론 모이스트 액티브 씰 마스크</p>
		<a href="#" class="btn-more"><img src="/pjtCom/pc/images/main/snp/con3_btn_more.png" alt="MORE" class="img"></a>
	</div>

	<div class="vidio-area">
		<div id="player" data-src="https://www.youtube.com/embed/YRv07bl0iTk"></div>
		<img src="/pjtCom/pc/images/temp/snp/movie.jpg" alt="" class="img">
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
