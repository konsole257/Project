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
    <div id="warp" class="movie_02">

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
                <div class="conHistory small_title"><img src="/images/common/s_tit_dot.gif">&nbsp;십자가의 길</div>

                <div class="con">
                    <div class="img-area">
                        <div>
                            <img src="/images/movie/movie_01_txt.jpg" alt="
                            온 인류들이여 !
                            어서 속히 십자가 밑으로 와서
                            주 예수 그리스도를 우러러 보라.
                            십자가에 완전한 구원이 있다.

                            죄의 용서와 영원한 생명,
                            마음의 정결, 심령의 평안함,
                            천적인 희열, 온전한 사랑, 완전한 진리,
                            아니 그대가 필요로 하는 일절이 있고
                            넘치는 은총의 충만이 있다.

                            고난에 찬 인생 항로에서
                            감당할 수 없는 무거운 짐 지고
                            수고하는 자들이여,
                            죄와 사망의 권세에 압도되어 신음하는 자들이여,
                            불치의 질병으로 절망하는 자들이여,
                            다만 십자가 앞에 나오라.
                            십자가의 복음만이 모든 믿는 자들에게
                            구원을 주는 하나님의 대능력이다 (롬 1:16).">
                        </div>

                        <div>
                            <img src="/images/movie/movie_01_img.jpg" alt="예수님 이미지">
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
