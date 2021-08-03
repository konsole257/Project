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
</head>

<body>
    <div id="warp" class="about_06_01">

    	<!-- [s]HEADER -->
    	<?php include $_SERVER["DOCUMENT_ROOT"]."/smnCom/smn_header.php"; ?>  <? /** 헤더 마크업 **/?>
    	<!-- [e]HEADER -->

    	<!-- [s]MIDDLE -->
    	<div id="middle">

    		<!-- [s]LEFT -->
            <?php include $_SERVER["DOCUMENT_ROOT"]."/smnCom/smn_left.php"; ?>  <? /** 메뉴 마크업 **/?>
    		<!-- [e]LEFT -->

    		<!-- [s]CONTENT -->
    		<div id="content">
                <div class="conHistory small_title"><img src="/images/common/s_tit_dot.gif">&nbsp;선교회 소개 &gt; 회장</div>

                <div class="con">
                    <div class="top"><img src="/images/aboutus/about_06_sti1.gif" alt="약력"></div>
                    <div class="bottom">
                        <div class="left"><img src="/images/aboutus/img.jpg" width="163" height="251" alt="한국성민선교회 회장 정요한 목사"></div>
                        <div class="right">
                        	<img src="/images/aboutus/img_01.gif" width="434" height="322" alt="
                            충북 출생 (1926년생)
                            이리 농림학교 졸업
                            단국대학교 법률학과 졸업
                            대한민국 농림부 기획관
                            일본 법정대학 법률학과 이수
                            중앙신학교 신학과 졸업
                            성민중앙교회 설립 (1969)
                            한국성민선교회 설립 (2006)">
                        	<div class="btn"><a href="/aboutus/about_06.php"><img src="/images/aboutus/about_06_btn2.gif" border="0" alt="이전글"></a></div>
                        </div>
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
</body>
</html>
