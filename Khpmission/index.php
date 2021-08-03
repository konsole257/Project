<?php
header("Progma:no-cache");
header("Cache-Control:no-cache,must-revalidate");
header('Content-Type: text/html; charset=utf-8');

error_reporting(E_ALL);
ini_set("display_errors", 1);
?>

<!DOCTYPE HTML>
<html lang="ko">

<head>
    <?php include $_SERVER["DOCUMENT_ROOT"]."/smnCom/smn_head.php"; ?>    <? /** 메타태그 / css / js **/?>

    <script>
    function viewEbook(path, idx){
        if (navigator.userAgent.match (/iPhone|iPod|iPad/i) != null) {
            document.form1.Ebook.value = path
            window.open('', '_viewplayer', 'width=1024, height=768, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=no, location=no, scrollbar=no,status=no');
            document.form1.target = "_viewplayer"
            document.form1.action = "ebook_main_mobile.asp";
            document.form1.submit();
        } else if (navigator.userAgent.match(/Android|android/) != null) {
            document.form1.Ebook.value = path
            window.open('', '_viewplayer', 'width=1024, height=768, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=no, location=no, scrollbar=no,status=no');
            document.form1.target = "_viewplayer"
            document.form1.action = "ebook_main_mobile.asp";
            document.form1.submit();
        } else {
            //window.open(path, '_blank', 'width=1002,height=744,resizable=yes');
            document.form1.Ebook.value = path;
            document.form1.idx.value = idx;
        //	window.open('', '_viewplayer', 'width=1200, height=800, top=50, left=50, fullscreen=yes, menubar=no, status=no, toolbar=no, titlebar=no, location=no, scrollbar=no,status=no');
        //	var opt = 'width='+screen.width+' , height='+screen.height+' , top=0, left=0, fullscreen=yes, menubar=no, status=no, toolbar=no, titlebar=no, location=no, scrollbar=no,status=no';
            var opt = 'width=1200, height=800, top=50, left=50, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=no, location=no, scrollbar=no,status=no';
            window.open('', '_viewplayer', opt);
            document.form1.target = "_viewplayer"
            //xurl = "/vod/vodplayer/flvplayer_iframe.asp?path="+path;
            //open_scroll_no(xurl,'_viewplayer','665','545');
            document.form1.action = "ebook_main_2019.asp";
            document.form1.submit();
        }
    }

    function viewPlayerNew(path, idx){
    		document.form1.path.value = path ;
    		document.form1.idx.value = idx ;

    		var winl = (screen.width - 560) / 2;
    		var wint = (screen.height - 380) / 2;
    		if ( navigator.userAgent.toLowerCase().indexOf("chrome") > 0 ){
    			wint = (screen.height - 380) / 2;
    			set = 'width=560 ,height=380 ,top='+wint+',left='+winl+', toolbar=no,location=no,directory=no,status=no,menubar=no,scrollbars=no,resizable=no,copyhistory=no';
    			window.open('', '_viewplayer1', set);
    		}else if ( navigator.userAgent.toLowerCase().indexOf("safari") > 0 && navigator.userAgent.toLowerCase().indexOf("window") > 0  ){
    			wint = (screen.height - 325) / 2;
    			set = 'width=560 ,height=325 ,top='+wint+',left='+winl+', toolbar=no,location=no,directory=no,status=no,menubar=no,scrollbars=no,resizable=no,copyhistory=no';
    			window.open('', '_viewplayer1', set);
    		}else{
    			wint = (screen.height - 380) / 2;
    			set = 'width=560 ,height=380 ,top='+wint+',left='+winl+', toolbar=no,location=no,directory=no,status=no,menubar=no,scrollbars=no,resizable=no,copyhistory=no';
    			window.open('', '_viewplayer1', set);
    		}

    		document.form1.target = "_viewplayer1";
    		document.form1.action = "/vod/vodplayer2019/index.asp";
    		document.form1.submit();
    }
    </script>
</head>

<body>
<form name="form1" id="form1" method="post">
<input type="hidden" name="path">
<input type="hidden" name="idx">
<input type="hidden" name="mp3_path">
<input type="hidden" name="title">
<input type="hidden" name="Ebook">
    <div id="warp">

    	<!-- [s]HEADER -->
    	<?php include $_SERVER["DOCUMENT_ROOT"]."/smnCom/smn_header.php"; ?>  <? /** 헤더 마크업 **/?>
    	<!-- [e]HEADER -->

    	<!-- [s]MIDDLE -->
    	<div id="middle">
            <ul class="menu">
                <li><a href="/index.php"><img src="/images/main/menu01.gif" alt="홈으로"></a></li>
                <li><a href="/aboutus/about_01.php"><img src="/images/main/menu02.gif" alt="선교회소개메뉴"></a></li>
                <li><a href="/vod/list_2019.php"><img src="/images/main/menu03.gif" alt="인생의목적메뉴"></a></li>
                <li><a href="/movie/movie_02.php"><img src="/images/main/menu10.gif" alt="십자가의길메뉴"></a></li>
                <li><a href="/ebook/book_2019.php"><img src="/images/main/menu04.gif" alt="성서영해집메뉴"></a></li>
                <li><a href="/bbs/archive.php"><img src="/images/main/menu08.gif" alt="자료실메뉴"></a></li>
                <li><a href="/bbs/board.php"><img src="/images/main/menu06.gif" alt="게시판메뉴"></a></li>
            </ul>

    		<!-- [s]CONTENT -->
    		<div id="content">
                <div class="left">
    				<div class="txt-box">
                        <img src="/images/main/main_txt_20150605.jpg" border="0" width="510" alt="
                        인간이 이 세상에 존재하는 목적이 무엇인지?
                        ㆍ인간이 자신이 원하지 않는 가운데 이 세상에 출생하여 비천한 동물도 고통 없이 사는데
                           만물의 영장이라고 하는 인간이 왜 일생을 죄와 고통을 당하며 살게 되는 것인지?
                        ㆍ결국 육이 죽으면 어디로 가는 것인지?
                        ㆍ사후의 세계는 구체적으로 어떠한 것인지? 등

                        그 질문에 대하여 갈증나게 알고자 원하는 자에게는 다음과 같은 점을 근거하여 명확하게 해설해 드리겠습니다.

                        ㆍ인간이 창조된 근본적인 목적
                        ㆍ인간이 창조된 구성 요소
                        ㆍ영, 혼, 육의 기능
                        ㆍ선악간의 신의 실존
                        ㆍ영, 혼, 육과 선악간의 신의 관계
                        ㆍ성신의 대속의 영에 의한 죄의 요소의 소멸과 영혼의 신창조
                        ㆍ인간이 죄와 고통에서 자유해방
                        ㆍ인간의 영혼의 기능으로 본 사후의 세계와 영생
                        ㆍ인간의 자유의지와 영혼의 형성
                        ㆍ인간의 소욕으로 인한 죄의 요소의 정착
                        ㆍ창조주에 의한 인간의 죄의 대속">

                        <div>
                            <a href="/vod/list_2019.php?ImageId=2"><img src="/images/main/btn_golife.gif" border="0" alt="인생의 목적 강론 바로가기"></a>
                        </div>
                    </div>
                </div>

                <div class="right">
                    <div class="player">
                        <a href="javascript:viewPlayerNew('i/life_1h/life_1h_,240,400,600,.mp4.csmil/master.m3u8','77');">
                            <img src="/images/main/main_mv1.jpg" border="0" alt="인생의 목적 - 요약편-">
                        </a>
                    </div>

                    <div class="banner1">
                        <a href="/movie/movie_04_2019.php?ImageId=9-1">
                            <img src="/images/main/banner_02.gif" width="181" height="68" border="0" alt="십자가의길 바로가기">
                        </a>
                        <a href="javascript:viewEbook('http://md.khpmission.kr/book/Child/#page=1','8')">
                            <img src="/images/main/banner_10.jpg" width="181" height="68" border="0" alt="인생의 목적(청소년용 전도지)">
                        </a>
                    </div>
                    <div class="banner2">
                        <a href="javascript:viewEbook('http://md.khpmission.kr/book/Insang/#page=1','17')">
                            <img src="/images/main/banner_11.jpg" border="0" alt="<전도지> 인생이 죄와 고통에서 해방되려면 - 공해와 AIDS에서 승리할 수 있는 비결 -">
                        </a>
                    </div>
                    <div class="banner3">
    					<img src="/images/main/banner_12.jpg" border="0" alt="AIDS 및 불치의 질병에서 승리할 수 있는 비결" usemap="#banner_12map"><br>
    					<map name="banner_12map" id="banner_12map">
    						<area shape="rect" coords="88,47,130,69" href="javascript:viewEbook('http://md.khpmission.kr/book/AIDS_K/#page=1','15')" title="ebook 국문">
    						<area shape="rect" coords="136,47,178,69" href="javascript:viewEbook('http://md.khpmission.kr/book/AIDS_en/#page=1','20');" title="ebook 영문">
    						<area shape="rect" coords="252,47,294,69" href="javascript:viewPlayerNew('i/AIDS_1/AIDS_1_,240,400,600,.mp4.csmil/master.m3u8','66');" title="VOD 1부">
    						<area shape="rect" coords="299,47,341,69" href="javascript:viewPlayerNew('i/AIDS_2/AIDS_2_,240,400,600,.mp4.csmil/master.m3u8','67');" title="VOD 2부">
    					</map>
                    </div>
                </div>
    		</div>
    		<!-- [e]CONTENT -->

    	</div>
    	<!-- [e]MIDDLE -->

    	<!-- [s]FOOTER -->
    	<?php include $_SERVER["DOCUMENT_ROOT"]."/smnCom/smn_footer.php"; ?>  <? /** 푸터 마크업 **/?>
    	<!-- [e]FOOTER -->

    </div>
</form>
</body>



</html>
