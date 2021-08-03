<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<script>
	var mobileKeyWords = new Array('iPhone', 'iPod', 'BlackBerry', 'Android', 'Windows CE', 'LG', 'MOT', 'SAMSUNG', 'SonyEricsson');

	for(var word in mobileKeyWords){
		if(navigator.userAgent.match(mobileKeyWords[word]) != null){
			location.href = 'http://m.lipss.kr/teaser.jsp';
		}
	}
	</script>

	<meta charset="UTF-8" />
	<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
	<meta name="format-detection" content="telephone=no, email=no, address=no">
	<meta name="keywords" content="" />
	<meta name="description" content="" />

	<meta property="og:type" content="website">
	<meta property="og:title" content="">
	<meta property="og:image" content="">
	<meta property="og:url" content="">
	<meta property="og:description" content="">

	<link rel="shortcut icon" type="image/x-icon" href="/w/pjtCom/images/common/favicon.ico">

	<link rel="stylesheet" type="text/css" href="/w/pjtCom/css/lib/normalize.min.css" />
	<%-- <link rel="stylesheet" type="text/css" href="/w/pjtCom/css/lib/jquery-ui.min.css"> --%>
	<%-- <link rel="stylesheet" type="text/css" href="/w/pjtCom/css/lib/jquery.scrollbar.css"> --%>
	<link rel="stylesheet" type="text/css" href="/w/pjtCom/css/common.css" />
	<link rel="stylesheet" type="text/css" href="/w/pjtCom/css/teaser.css" />

	<script src="/w/pjtCom/js/lib/jquery-3.3.1.min.js"></script>
	<%-- <script src="/w/pjtCom/js/lib/jquery-ui.min.js"></script> --%>
	<%-- <script src="/w/pjtCom/js/lib/jquery.scrollbar.min.js"></script> --%>
	<%-- <script src="/w/pjtCom/js/lib/swiper.js"></script> --%>

	<title>LIPSS</title>
</head>

<body class="teaser">
	<div class="wrap-teaser">
        <div class="wrap-canvas">
            <div id="js-canvas-wrapper" class="canvas-wrapper"></div>
        </div>

		<div class="line"></div>
		<div class="line"></div>
		<div class="line"></div>
		<div class="line"></div>
		<div class="line"></div>
		<div class="line"></div>
		<div class="line"></div>
		<div class="line"></div>
		<div class="line"></div>
		<div class="line"></div>

        <div class="teaser-con">
            <div class="txt1">
                <span>L</span>
				<span>O</span>
				<span>V</span>
				<span>E</span>
				<span style="margin-left:15px;">I</span>
				<span>T</span>
				<span>!</span>
            </div>

			<div class="txt2">
                <span>P</span>
				<span>I</span>
				<span>C</span>
				<span>K</span>
				<span style="margin-left:15px;">Y</span>
				<span>O</span>
				<span>U</span>
				<span>R</span>
				<span style="margin-left:15px;">S</span>
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
				<span style="margin-left:15px;">때</span>
				<span style="margin-left:15px;">마</span>
				<span>다</span>
				<span style="margin-left:15px;">찾</span>
				<span>게</span>
				<span style="margin-left:15px;">되</span>
				<span>는</span>
				<br>
				<span style="margin-top:15px;">나</span>
				<span style="margin-top:15px;">만</span>
				<span style="margin-top:15px;">의</span>
				<span style="margin-left:15px; margin-top:15px;">사</span>
				<span style="margin-top:15px;">진</span>
				<span style="margin-top:15px;">숍</span>
            </div>

			<div class="txt4">
				<div class="logo">
					<img src="/w/pjtCom/images/teaser/teaser4_logo1.png" alt="">
					<img src="/w/pjtCom/images/teaser/teaser4_logo2.png" alt="">
					<img src="/w/pjtCom/images/teaser/teaser4_logo3.png" alt="">
					<img src="/w/pjtCom/images/teaser/teaser4_logo4.png" alt="">
					<img src="/w/pjtCom/images/teaser/teaser4_logo5.png" alt="">
				</div>
                <span>당</span>
				<span>신</span>
				<span>이</span>
				<span style="margin-left:10px;">사</span>
				<span>랑</span>
				<span>하</span>
				<span>는</span>
				<span style="margin-left:10px;">누</span>
				<span>구</span>
				<span>라</span>
				<span>도</span>
				<span style="margin-left:10px;">가</span>
				<span>까</span>
				<span>이</span>
				<span style="margin-left:10px;">L</span>
				<span>I</span>
				<span>P</span>
				<span>S</span>
				<span>S</span>
				<div class="btn"><div><a href="http://www.fujifilm.co.kr/LIPSS/intro.asp"><img src="/w/pjtCom/images/teaser/teaser4_arrow.png" alt=""></a></div></div>
            </div>
        </div>

		<div class="mouse"><img src="/w/pjtCom/images/teaser/mouse.png" alt=""><span>CLICK</span></div>
    </div>

	<script src="/w/pjtCom/js/lib/pixi.min.js"></script>
    <script src="/w/pjtCom/js/teaser.js"></script>
	<script>
	$(document).ready(function(){

		var aaa;
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

			$('.wrap-canvas canvas:nth-child('+showNum+')').addClass('show');
			$('.wrap-canvas canvas:not(:nth-child('+showNum+'))').removeClass('show');

			if (showNum === 4) {
				setTimeout(function(){ $('.teaser-con .txt4 .logo img:nth-child(3)').addClass('animate'); }, 2000);
				setTimeout(function(){ $('.teaser-con .txt4 .logo img:nth-child(1)').addClass('animate'); }, 2200);
				setTimeout(function(){ $('.teaser-con .txt4 .logo img:nth-child(5)').addClass('animate'); }, 2400);
				setTimeout(function(){ $('.teaser-con .txt4 .logo img:nth-child(4)').addClass('animate'); }, 2600);
				setTimeout(function(){ $('.teaser-con .txt4 .logo img:nth-child(2)').addClass('animate'); }, 2800);
				// $('.teaser-con .txt4').find('.logo img:nth-child(3)').delay(2000).animate({'opacity':'1'}, 2000).css({'transform':'scale(1)'});
				// $('.teaser-con .txt4').find('.logo img:nth-child(1)').delay(2200).animate({'opacity':'1'}, 2000).css({'transform':'scale(1)'});
				// $('.teaser-con .txt4').find('.logo img:nth-child(5)').delay(2400).animate({'opacity':'1'}, 2000).css({'transform':'scale(1)'});
				// $('.teaser-con .txt4').find('.logo img:nth-child(4)').delay(2600).animate({'opacity':'1'}, 2000).css({'transform':'scale(1)'});
				// $('.teaser-con .txt4').find('.logo img:nth-child(2)').delay(2800).animate({'opacity':'1'}, 2000).css({'transform':'scale(1)'});
				$('.teaser-con .txt4').children('div').children('div').show();
				$('.teaser-con .txt4').children('div').delay(2000).animate({'opacity':'1'}, 2000);

				setTimeout(function(){ $('.line:nth-of-type(1)').addClass('animate'); }, 0);
				setTimeout(function(){ $('.line:nth-of-type(2)').addClass('animate'); }, 3800);
				setTimeout(function(){ $('.line:nth-of-type(3)').addClass('animate'); }, 5000);
				setTimeout(function(){ $('.line:nth-of-type(4)').addClass('animate'); }, 1800);
				setTimeout(function(){ $('.line:nth-of-type(5)').addClass('animate'); }, 2300);
				setTimeout(function(){ $('.line:nth-of-type(6)').addClass('animate'); }, 5300);
				setTimeout(function(){ $('.line:nth-of-type(7)').addClass('animate'); }, 6000);
				setTimeout(function(){ $('.line:nth-of-type(8)').addClass('animate'); }, 1000);
				setTimeout(function(){ $('.line:nth-of-type(9)').addClass('animate'); }, 3600);
				setTimeout(function(){ $('.line:nth-of-type(10)').addClass('animate'); }, 2000);
			}
		}

		canvasShow(1);

		var teaser = 1;

		$('.mouse').click(function(){
			var teaserSu = su;
			if ($('.teaser-con div:nth-child('+teaser+') span:nth-child('+teaserSu[teaserSu.length-1]+')').css('opacity') > 0 ) {
				if (teaser < 4) {
					teaser++;
					$('.teaser').addClass('teaser'+teaser+'');
					canvasShow(teaser);
				}

				if (teaser === 4) {
					$('.mouse').fadeOut(500);
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

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-118964090-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-118964090-1');
	</script>


</body>
</html>
