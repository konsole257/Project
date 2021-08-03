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
    <div id="warp" class="list_2019">

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
                <div id="main_web1" name="main_web1">
    				<strong style="color:#f26b20;font-size:14px;">동영상 보기</strong>가 안 되시는 분은 페이지 하단의
    				<img src="/images/movie/btn_flash.png" alt="플래시 보기" style="vertical-align:middle;">
    				<img src="/images/movie/btn_media.gif" alt="미디어플레이 보기" style="vertical-align:middle;">를 이용해주세요.
    			</div>

                <div class="con">
                    <table width="730" border="0" cellspacing="0" cellpadding="0" align="center" bgcolor="DBDBDB">
                        <tbody>
                            <tr>
                                <form name="ModListForm"></form>
                                <input type="hidden" name="TitleClip" value="All">
                                <td>
                                    <!--
                                    <table border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                    <td width="90"><img src="/img/vod/mod_s_title.gif" width="100" height="16" alt="Media list"></td>
                                    </tr>
                                    </table>
                                    //-->
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <table width="730" border="0" cellspacing="1" cellpadding="0" bgcolor="DBDBDB">
                                        <tbody>
                                            <tr bgcolor="E8E8E8">
                                                <td class="verdana">
                                                    <table width="730" border="0" cellspacing="0" cellpadding="0">
                                                        <tbody>
                                                            <tr bgcolor="5798CD">
                                                                <td colspan="7" height="1"></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td class="verdana">
                                                    <table width="730" border="0" cellspacing="0" cellpadding="0">
                                                        <tbody>
                                                            <tr bgcolor="E8E8E8" align="center">
                                                                <td height="24" width="30" class="verdana"><b>번호</b></td>
                                                                <td width="489" class="verdana"><font color="000000"><b>제목</b></font></td>
                                                                <td width="96" class="verdana"><font color="000000"><b>등록일</b></font></td>
                                                                <td width="81" class="verdana"><font color="000000"><b>재생길이</b></font></td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>

                                            <!-- 반복영역 // -->
                                            <tr>
                                                <td class="verdana">
                                                    <table width="730" border="0" cellspacing="0" cellpadding="0">
                                                        <tbody>
                                                            <tr bgcolor="ffffff" onmouseout="this.style.backgroundColor=&quot;ffffff&quot;;" onmouseover="this.style.backgroundColor=&quot;&quot;;">
                                                                <td width="30" align="center" height="24" class="verdana">
                                                                    <font color="575757">12</font>
                                                                    <div style="display:none;POSITION:absolute;width:200px;" id="imagetitle" class="verdana"></div>
                                                                </td>

                                                                <td width="489" class="verdana">
                                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td class="verdana">
                                                                                    <p style="margin:10px;">
                                                                                        <a href="#">
                                                                                            <font color="575757"> 구속의 도리 핵심요약 </font>
                                                                                        </a>
                                                                                    </p>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>

                                                                <td align="center" width="96" class="verdana">
                                                                    <font color="575757">2010-02-22</font>
                                                                </td>

                                                                <td align="center" width="81" class="verdana">
                                                                    <font color="575757">00:48:12</font>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>
                                            <!-- // 반복영역 -->

                                            <tr>
                                                <td class="verdana">
                                                    <table width="730" border="0" cellspacing="0" cellpadding="0">
                                                        <tbody>
                                                            <tr bgcolor="ffffff" onmouseout="this.style.backgroundColor=&quot;ffffff&quot;;" onmouseover="this.style.backgroundColor=&quot;&quot;;">
                                                                <td width="30" align="center" height="24" class="verdana">
                                                                    <font color="575757">12</font>
                                                                    <div style="display:none;POSITION:absolute;width:200px;" id="imagetitle" class="verdana"></div>
                                                                </td>

                                                                <td width="489" class="verdana">
                                                                    <table border="0" cellspacing="0" cellpadding="0">
                                                                        <tbody>
                                                                            <tr>
                                                                                <td class="verdana">
                                                                                    <p style="margin:10px;">
                                                                                        <a href="#">
                                                                                            <font color="575757"> 구속의 도리 핵심요약 </font>
                                                                                        </a>
                                                                                    </p>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </td>

                                                                <td align="center" width="96" class="verdana">
                                                                    <font color="575757">2010-02-22</font>
                                                                </td>

                                                                <td align="center" width="81" class="verdana">
                                                                    <font color="575757">00:48:12</font>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </td>
                                            </tr>

                                        </tbody>
                                    </table>
                                </td>
                            </tr>

                            <!-- pagination // -->
                            <tr>
                                <td class="verdana" align="center" height="27">
                                    <span class="current"><font color="#FF0000">1</font></span>
                                    <a href="#" class="current">2</a>
                                </td>
                            </tr>
                            <!-- // pagination -->
                        </tbody>
                    </table>

                    <div class="btn-area">
                        <a href="#"><img src="/images/movie/btn_flash.png" alt="플래시 보기" style="vertical-align:middle;"></a>
                        <a href="#"><img src="/images/movie/btn_media.gif" border="0" alt="미디어플레이 보기" style="vertical-align:middle;"></a>
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
