<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="shop";
	String path2="story2";
	String path3="";
	String path4="";
	String path1tit="WALKSHOP";
	String path2tit="STORY";
	String path3tit="";
	String path4tit="";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/shop.css" />
	<script src="/avenueCom/js/jquery.rwdImageMaps.min.js"></script>
</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="shop">
		<div class="story2 list">

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>

						<a href="/">HOME</a>

						<span class="depth1">WALKSHOP</span>

						<span class="depth1">STORY</span>
					</div>
				</div>

				<div id="contents_inner">
					<div class="section">
						<div class="section1">
							<p class="txt1"><img src="/avenueCom/images/upload/shop_story/penduka_02_txt1.png" alt="" /></p>
							<p class="txt2"><img src="/avenueCom/images/upload/shop_story/penduka_02_txt2.png" alt="" /></p>
							<img src="/avenueCom/images/upload/shop_story/penduka_02.jpg" alt="" />
						</div>
						<div class="section2">
							<p><img src="/avenueCom/images/upload/shop_story/penduka_03_img1.png" alt="" /></p>
						</div>
						<div class="section3">
							<p class="txt1"><img src="/avenueCom/images/upload/shop_story/penduka_04_txt1.png" alt="" /></p>
							<p class="img1"><img src="/avenueCom/images/upload/shop_story/penduka_04_img1.png" alt="" /></p>
							<img src="/avenueCom/images/upload/shop_story/penduka_04.jpg" alt="" />
						</div>
						<div class="section4">
							<p><img src="/avenueCom/images/upload/shop_story/penduka_05_txt1.png" alt="" /></p>
							<img src="/avenueCom/images/upload/shop_story/penduka_05.jpg" alt="" />
						</div>
						<div class="section5">
							<p><img src="/avenueCom/images/upload/shop_story/penduka_06_txt1.png" alt="" /></p>
							<img src="/avenueCom/images/upload/shop_story/penduka_06.jpg" alt="" />
						</div>
						<div class="section6">
							<p class="img"><img src="/avenueCom/images/upload/shop_story/penduka_07_img1.png" alt="" /></p>
							<p class="txt"><img src="/avenueCom/images/upload/shop_story/penduka_07_txt1.png" alt="" /></p>
						</div>
						<div class="section7">
							<p><img src="/avenueCom/images/upload/shop_story/penduka_08_txt1.png" alt="" usemap="#Map"/></p>
							<img src="/avenueCom/images/upload/shop_story/penduka_08.jpg" alt="" />
							<map name="Map">
								<area shape="rect" coords="338,513,513,545" href="http://blog.naver.com/pendukakorea" target="_blank">
							</map>
						</div>
						<div class="section8">
							<p><img src="/avenueCom/images/upload/shop_story/penduka_09_txt1.png" alt="" /></p>
							<img src="/avenueCom/images/upload/shop_story/penduka_09.jpg" alt="" />
						</div>
					</div>

					<aside class="quick">
						<div>
						</div>
						<a href="http://htmlstand.cstone.co.kr/shop/story_intro2.jsp" class="btn_list"><span></span><span></span>목록</a>
					</aside>
				</div>

			</section>

			<hr />

		</div>
		<script>
		$(document).ready(function(){
			$('img[usemap]').rwdImageMaps();

			$('body').css({ 'overflow-y':'hidden' });
			$('.btn_top_wrap').hide();
		});

		var contentHeight,
			pageTotal,
			pageNow = 1,
			imgRatio = 1920/1120;

		$(window).on('load resize', function(){
			$('#contents').css({ 'min-height':'+='+120 })
			contentHeight = $(window).height()-80+2;
			pageTotal = $('.section div').length;
			$('.section div').css({ 'height':contentHeight });
			parseInt($('#path').css('margin-top')) == 0 ? $('#path').css({ 'margin-top':-(pageNow-1)*contentHeight }) : $('#path').css({ 'margin-top':-((pageNow-1)*contentHeight+80) });

			$('.section div').width()/$('.section div').height() < imgRatio ? $('.section div > img').css({ 'width':'auto', 'height':'100%' }) : $('.section div > img').css({ 'width':'100%', 'height':'auto' });
		});
		$(window).load(function(){
			for ( var i=1; i<=pageTotal; i++ ) {
				$('.quick div').append('<a href="#">'+i+'</a>');
			}
			$('.quick').css({ 'margin-top':-(parseInt($('.quick').css('height'))/2) });

			$('.quick div a:nth-child('+pageNow+')').addClass('on');

			$('.quick div a').click(function(){
				if ( !$('#path').is(':animated') ) {
					pageNow == pageTotal+1 ? $('.quick div a:nth-child('+(pageNow-1)+')').removeClass('on') : $('.quick div a:nth-child('+pageNow+')').removeClass('on');
					pageNow = Number($(this).text());
					$('#path').animate({ 'margin-top':-((pageNow-1)*contentHeight+80) }, 800);
					$('.quick div a:nth-child('+pageNow+')').addClass('on');
				}
			});
		});
		$(window).on('mousewheel DOMMouseScroll', function(e) {
			var e = e.originalEvent,
		        delta;

		    if ( e.detail ) {
		        e.detail * -40 > 0 ? delta = 'up' : delta = 'down';
		    } else {
		        e.wheelDelta > 0 ? delta = 'up' : delta = 'down';
		    };

		    if ( !$('#path').is(':animated') ) {
		        if ( delta == 'up' && pageNow >= 1 ) {
					if (parseInt($('#path').css('margin-top')) == -80 ) {
						$('#path').animate({ 'margin-top':'+='+80 }, 600);
					} else if ( parseInt($('#path').css('margin-top')) < 0 ) {
						if ( pageNow == pageTotal+1 ) {
							$('#path').animate({ 'margin-top':'+='+parseInt($('#footer').height()) }, 800);
						} else {
							$('#path').animate({ 'margin-top':'+='+contentHeight }, 800);
							$('.quick div a:nth-child('+pageNow+')').removeClass('on');
						}
						pageNow--;
						$('.quick div a:nth-child('+pageNow+')').addClass('on');
					}
		        } else if ( delta == 'down' && pageNow <= pageTotal ) {
					if (parseInt($('#path').css('margin-top')) == 0 ) {
						$('#path').animate({ 'margin-top':'-='+80 }, 600);
					} else {
						if ( pageNow == pageTotal ) {
							$('#path').animate({ 'margin-top':'-='+parseInt($('#footer').height()) }, 800);
						} else {
							$('#path').animate({ 'margin-top':'-='+contentHeight }, 800);
							$('.quick div a:nth-child('+pageNow+')').removeClass('on');
						}
						pageNow++;
						$('.quick div a:nth-child('+pageNow+')').addClass('on');
					}
		        }
		    }
		});
		</script>

	</main>
	<!-- //wrap -->

	<!-- footer -->
	<%@ include file="/avenueCom/_include/_footer.jsp" %>
	<!-- //footer -->
</body>
</html>
