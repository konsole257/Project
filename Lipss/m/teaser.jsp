<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- config // -->
	<%@ include file="/m/inCom/_config.jsp" %>
	<!-- // config -->

	<link rel="stylesheet" type="text/css" href="/m/mpjtCom/css/teaser.css" />
</head>

<body class="teaser">
	<div class="wrap-teaser">
        <div class="wrap-canvas">
            <div id="js-canvas-wrapper" class="canvas-wrapper"></div>
        </div>
		<div class="line"></div>
        <div class="teaser-con">
            <div class="txt1">
                <span>L</span>
				<span>O</span>
				<span>V</span>
				<span>E</span>
				<span style="margin-left:10px;">I</span>
				<span>T</span>
				<span>!</span>
            </div>

			<div class="txt2">
                <span>P</span>
				<span>I</span>
				<span>C</span>
				<span>K</span>
				<span style="margin-left:10px;">Y</span>
				<span>O</span>
				<span>U</span>
				<span>R</span>
				<span style="margin-left:10px;">S</span>
				<span>W</span>
				<span>E</span>
				<span>E</span>
				<span>T</span>
				<span>S</span>
            </div>

			<div class="txt3">
                <span>보</span>
				<span>고</span>
				<span>플</span>
				<span style="margin-left:6px;">때</span>
				<span style="margin-left:6px;">마</span>
				<span>다</span>
				<span style="margin-left:6px;">찾</span>
				<span>게</span>
				<span style="margin-left:6px;">되</span>
				<span>는</span>
				<br>
				<span style="margin-top:10px;">나</span>
				<span style="margin-top:10px;">만</span>
				<span style="margin-top:10px;">의</span>
				<span style="margin-left:6px; margin-top:10px;">사</span>
				<span style="margin-top:10px;">진</span>
				<span style="margin-top:10px;">숍</span>
            </div>

			<div class="txt4">
				<div class="logo">
					<img src="/m/mpjtCom/images/teaser/teaser4_logo1.png" alt="">
					<img src="/m/mpjtCom/images/teaser/teaser4_logo2.png" alt="">
					<img src="/m/mpjtCom/images/teaser/teaser4_logo3.png" alt="">
					<img src="/m/mpjtCom/images/teaser/teaser4_logo4.png" alt="">
					<img src="/m/mpjtCom/images/teaser/teaser4_logo5.png" alt="">
				</div>
                <span>당</span>
				<span>신</span>
				<span>이</span>
				<span style="margin-left:5px;">사</span>
				<span>랑</span>
				<span>하</span>
				<span>는</span>
				<span style="margin-left:5px;">누</span>
				<span>구</span>
				<span>라</span>
				<span>도</span>
				<span style="margin-left:5px;">가</span>
				<span>까</span>
				<span>이</span>
				<span style="margin-left:5px;">L</span>
				<span>I</span>
				<span>P</span>
				<span>S</span>
				<span>S</span>
				<div class="btn"><div><a href="#"><img src="/m/mpjtCom/images/teaser/teaser4_arrow.png" alt=""></a></div></div>
            </div>
        </div>

		<%-- <img src="/m/mpjtCom/images/teaser/mouse.png" alt="" class="mouse"> --%>
    </div>

	<script src="/m/mpjtCom/js/lib/pixi.min.js"></script>
    <script src="/m/mpjtCom/js/teaser.js"></script>
	<script>
	$(document).ready(function(){
		var canvasShow = function(num){
			var showNum = num;


			var teaserLen = $('.teaser-con div:nth-child('+showNum+') span').length;

			su = new Array(teaserLen);
			cnt = 0;

			while(1){
				sw = 0;
				imsi=Math.random();
				ns=Math.ceil(imsi*teaserLen);

				// 기존에 값과 비교
				for(i = 0; i <= cnt; i++){
					if(su[i] == ns)sw = 1;
				}
				if(sw == 0) {
					su[cnt] = ns;
					cnt++;
				}
				if(cnt == teaserLen) break;
				}

				for(i = 0; i < teaserLen; i++){
					if (showNum !== 4) {
						$('.teaser-con div:nth-child('+showNum+')').find('span:nth-of-type('+su[i]+')').delay(i*150).animate({'opacity':'1'}, 2500);
					} else {
						$('.teaser-con div:nth-child('+showNum+')').find('span:nth-of-type('+su[i]+')').delay(i*100).animate({'opacity':'1'}, 2500);
					}
			}

			$('.teaser-con div:not(:nth-child('+showNum+'))').find('span').stop().animate({'opacity':'0'}, 1000);
			$('.wrap-canvas canvas:nth-child('+showNum+')').delay(1500).animate({opacity:1},4000);
			$('.wrap-canvas canvas:not(:nth-child('+showNum+'))').stop().animate({opacity:0},2000);

			if (showNum === 4) {
				$('.teaser-con .txt4').find('.logo img').delay(2000).animate({'opacity':'1'}, 2000);
				$('.teaser-con .txt4').children('div').children('div').show();
				$('.teaser-con .txt4').children('div').delay(2000).animate({'opacity':'1'}, 2000);
				$('.line').addClass('animate');
			}
		}

		canvasShow(1);

		var teaser = 1;

		$('.teaser').on('touchstart',function(){
			if (!$('.teaser-con div span').is(':animated')) {
				if (teaser < 4) {
					teaser++;
					$(this).addClass('teaser'+teaser+'');
					canvasShow(teaser);
				}
			}
		});
	});



    $(window).resize(onResize);

    function onResize() {
        $('.teaser-con').css({
            height:  $('.wrap-canvas canvas').height()
        });
    }
    </script>

</body>
</html>
