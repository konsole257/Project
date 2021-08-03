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
    <div id="warp" class="book_2019">

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
                <div class="conHistory small_title"><img src="/images/common/s_tit_dot.gif">&nbsp;성서영해집</div>

                <div class="con">
                    <div class="top">
        				<img src="/images/ebook/sub_text.gif" alt="표지를 클릭하시면 e-book을 보실 수 있습니다. 스크린리더보기는 시각장애인 사용자를 위한 텍스트북입니다.">
        				<a href="booklist_flash_2019.php"><img src="/images/ebook/btn_flash.png" alt="플래시 이북 보기"></a>
        			</div>

                    <div class="list-area-wrap">
                        <ul class="list-area">
                            <li>
                                <a href="javascript:viewEbook('http://md.khpmission.kr/book/Life_Origin/','34')">
                                    <img src="http://www.khpmission.kr/en/download/ko_seb/2014022692615.jpg" alt="인생의 목적 (원본)" width="101" height="135" border="0">
                                </a>

                                <div>
                                    <div>
                                        <img src="/images/ebook/dot.gif" width="3" height="3">
                                        <strong>제목</strong> : 인생의 목적 (원본)
                                    </div>
                                    <div>
                                        <img src="/images/ebook/dot.gif" width="3" height="3">
                                        <strong>저자</strong> : 정 요한
                                    </div>
                                </div>
                            </li>

                            <li>
                                <a href="javascript:viewEbook('http://md.khpmission.kr/book/Life_Origin/','34')">
                                    <img src="http://www.khpmission.kr/en/download/ko_seb/2014022692615.jpg" alt="인생의 목적 (원본)" width="101" height="135" border="0">
                                </a>

                                <div>
                                    <div>
                                        <img src="/images/ebook/dot.gif" width="3" height="3">
                                        <strong>제목</strong> : 인생의 목적 (원본)
                                    </div>
                                    <div>
                                        <img src="/images/ebook/dot.gif" width="3" height="3">
                                        <strong>저자</strong> : 정 요한
                                    </div>
                                </div>
                            </li>

                            <li>
                                <a href="javascript:viewEbook('http://md.khpmission.kr/book/Life_Origin/','34')">
                                    <img src="http://www.khpmission.kr/en/download/ko_seb/2014022692615.jpg" alt="인생의 목적 (원본)" width="101" height="135" border="0">
                                </a>

                                <div>
                                    <div>
                                        <img src="/images/ebook/dot.gif" width="3" height="3">
                                        <strong>제목</strong> : 인생의 목적 (원본)
                                    </div>
                                    <div>
                                        <img src="/images/ebook/dot.gif" width="3" height="3">
                                        <strong>저자</strong> : 정 요한
                                    </div>
                                </div>
                            </li>

                            <li>
                                <a href="javascript:viewEbook('http://md.khpmission.kr/book/Life_Origin/','34')">
                                    <img src="http://www.khpmission.kr/en/download/ko_seb/2014022692615.jpg" alt="인생의 목적 (원본)" width="101" height="135" border="0">
                                </a>

                                <div>
                                    <div>
                                        <img src="/images/ebook/dot.gif" width="3" height="3">
                                        <strong>제목</strong> : 인생의 목적 (원본)
                                    </div>
                                    <div>
                                        <img src="/images/ebook/dot.gif" width="3" height="3">
                                        <strong>저자</strong> : 정 요한
                                    </div>
                                </div>
                            </li>
                        </ul>
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
