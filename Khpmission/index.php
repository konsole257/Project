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
    <?php include $_SERVER["DOCUMENT_ROOT"]."/smnCom/smn_head.php"; ?>    <? /** ๋ฉํํ๊ทธ / css / js **/?>

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
    	<?php include $_SERVER["DOCUMENT_ROOT"]."/smnCom/smn_header.php"; ?>  <? /** ํค๋ ๋งํฌ์ **/?>
    	<!-- [e]HEADER -->

    	<!-- [s]MIDDLE -->
    	<div id="middle">
            <ul class="menu">
                <li><a href="/index.php"><img src="/images/main/menu01.gif" alt="ํ์ผ๋ก"></a></li>
                <li><a href="/aboutus/about_01.php"><img src="/images/main/menu02.gif" alt="์?๊ตํ์๊ฐ๋ฉ๋ด"></a></li>
                <li><a href="/vod/list_2019.php"><img src="/images/main/menu03.gif" alt="์ธ์์๋ชฉ์?๋ฉ๋ด"></a></li>
                <li><a href="/movie/movie_02.php"><img src="/images/main/menu10.gif" alt="์ญ์๊ฐ์๊ธธ๋ฉ๋ด"></a></li>
                <li><a href="/ebook/book_2019.php"><img src="/images/main/menu04.gif" alt="์ฑ์์ํด์ง๋ฉ๋ด"></a></li>
                <li><a href="/bbs/archive.php"><img src="/images/main/menu08.gif" alt="์๋ฃ์ค๋ฉ๋ด"></a></li>
                <li><a href="/bbs/board.php"><img src="/images/main/menu06.gif" alt="๊ฒ์ํ๋ฉ๋ด"></a></li>
            </ul>

    		<!-- [s]CONTENT -->
    		<div id="content">
                <div class="left">
    				<div class="txt-box">
                        <img src="/images/main/main_txt_20150605.jpg" border="0" width="510" alt="
                        ์ธ๊ฐ์ด ์ด ์ธ์์ ์กด์ฌํ๋ ๋ชฉ์?์ด ๋ฌด์์ธ์ง?
                        ใ์ธ๊ฐ์ด ์์?์ด ์ํ์ง ์๋ ๊ฐ์ด๋ฐ ์ด ์ธ์์ ์ถ์ํ์ฌ ๋น์ฒํ ๋๋ฌผ๋ ๊ณ?ํต ์์ด ์ฌ๋๋ฐ
                           ๋ง๋ฌผ์ ์์ฅ์ด๋ผ๊ณ? ํ๋ ์ธ๊ฐ์ด ์ ์ผ์์ ์ฃ์ ๊ณ?ํต์ ๋นํ๋ฉฐ ์ด๊ฒ ๋๋ ๊ฒ์ธ์ง?
                        ใ๊ฒฐ๊ตญ ์ก์ด ์ฃฝ์ผ๋ฉด ์ด๋๋ก ๊ฐ๋ ๊ฒ์ธ์ง?
                        ใ์ฌํ์ ์ธ๊ณ๋ ๊ตฌ์ฒด์?์ผ๋ก ์ด๋?ํ ๊ฒ์ธ์ง? ๋ฑ

                        ๊ทธ ์ง๋ฌธ์ ๋ํ์ฌ ๊ฐ์ฆ๋๊ฒ ์๊ณ?์ ์ํ๋ ์์๊ฒ๋ ๋ค์๊ณผ ๊ฐ์ ์?์ ๊ทผ๊ฑฐํ์ฌ ๋ชํํ๊ฒ ํด์คํด ๋๋ฆฌ๊ฒ?์ต๋๋ค.

                        ใ์ธ๊ฐ์ด ์ฐฝ์กฐ๋ ๊ทผ๋ณธ์?์ธ ๋ชฉ์?
                        ใ์ธ๊ฐ์ด ์ฐฝ์กฐ๋ ๊ตฌ์ฑ ์์
                        ใ์, ํผ, ์ก์ ๊ธฐ๋ฅ
                        ใ์?์๊ฐ์ ์?์ ์ค์กด
                        ใ์, ํผ, ์ก๊ณผ ์?์๊ฐ์ ์?์ ๊ด๊ณ
                        ใ์ฑ์?์ ๋์์ ์์ ์ํ ์ฃ์ ์์์ ์๋ฉธ๊ณผ ์ํผ์ ์?์ฐฝ์กฐ
                        ใ์ธ๊ฐ์ด ์ฃ์ ๊ณ?ํต์์ ์์?ํด๋ฐฉ
                        ใ์ธ๊ฐ์ ์ํผ์ ๊ธฐ๋ฅ์ผ๋ก ๋ณธ ์ฌํ์ ์ธ๊ณ์ ์์
                        ใ์ธ๊ฐ์ ์์?์์ง์ ์ํผ์ ํ์ฑ
                        ใ์ธ๊ฐ์ ์์์ผ๋ก ์ธํ ์ฃ์ ์์์ ์?์ฐฉ
                        ใ์ฐฝ์กฐ์ฃผ์ ์ํ ์ธ๊ฐ์ ์ฃ์ ๋์">

                        <div>
                            <a href="/vod/list_2019.php?ImageId=2"><img src="/images/main/btn_golife.gif" border="0" alt="์ธ์์ ๋ชฉ์? ๊ฐ๋ก? ๋ฐ๋ก๊ฐ๊ธฐ"></a>
                        </div>
                    </div>
                </div>

                <div class="right">
                    <div class="player">
                        <a href="javascript:viewPlayerNew('i/life_1h/life_1h_,240,400,600,.mp4.csmil/master.m3u8','77');">
                            <img src="/images/main/main_mv1.jpg" border="0" alt="์ธ์์ ๋ชฉ์? - ์์ฝํธ-">
                        </a>
                    </div>

                    <div class="banner1">
                        <a href="/movie/movie_04_2019.php?ImageId=9-1">
                            <img src="/images/main/banner_02.gif" width="181" height="68" border="0" alt="์ญ์๊ฐ์๊ธธ ๋ฐ๋ก๊ฐ๊ธฐ">
                        </a>
                        <a href="javascript:viewEbook('http://md.khpmission.kr/book/Child/#page=1','8')">
                            <img src="/images/main/banner_10.jpg" width="181" height="68" border="0" alt="์ธ์์ ๋ชฉ์?(์ฒญ์๋์ฉ ์?๋์ง)">
                        </a>
                    </div>
                    <div class="banner2">
                        <a href="javascript:viewEbook('http://md.khpmission.kr/book/Insang/#page=1','17')">
                            <img src="/images/main/banner_11.jpg" border="0" alt="<์?๋์ง> ์ธ์์ด ์ฃ์ ๊ณ?ํต์์ ํด๋ฐฉ๋๋?ค๋ฉด - ๊ณตํด์ AIDS์์ ์น๋ฆฌํ? ์ ์๋ ๋น๊ฒฐ -">
                        </a>
                    </div>
                    <div class="banner3">
    					<img src="/images/main/banner_12.jpg" border="0" alt="AIDS ๋ฐ ๋ถ์น์ ์ง๋ณ์์ ์น๋ฆฌํ? ์ ์๋ ๋น๊ฒฐ" usemap="#banner_12map"><br>
    					<map name="banner_12map" id="banner_12map">
    						<area shape="rect" coords="88,47,130,69" href="javascript:viewEbook('http://md.khpmission.kr/book/AIDS_K/#page=1','15')" title="ebook ๊ตญ๋ฌธ">
    						<area shape="rect" coords="136,47,178,69" href="javascript:viewEbook('http://md.khpmission.kr/book/AIDS_en/#page=1','20');" title="ebook ์๋ฌธ">
    						<area shape="rect" coords="252,47,294,69" href="javascript:viewPlayerNew('i/AIDS_1/AIDS_1_,240,400,600,.mp4.csmil/master.m3u8','66');" title="VOD 1๋ถ">
    						<area shape="rect" coords="299,47,341,69" href="javascript:viewPlayerNew('i/AIDS_2/AIDS_2_,240,400,600,.mp4.csmil/master.m3u8','67');" title="VOD 2๋ถ">
    					</map>
                    </div>
                </div>
    		</div>
    		<!-- [e]CONTENT -->

    	</div>
    	<!-- [e]MIDDLE -->

    	<!-- [s]FOOTER -->
    	<?php include $_SERVER["DOCUMENT_ROOT"]."/smnCom/smn_footer.php"; ?>  <? /** ํธํฐ ๋งํฌ์ **/?>
    	<!-- [e]FOOTER -->

    </div>
</form>
</body>



</html>
