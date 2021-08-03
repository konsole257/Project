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
    <div id="warp" class="movie_04_2019">

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
                <div class="conHistory small_title"><img src="/images/common/s_tit_dot.gif">&nbsp;십자가의 길 &gt; Audio & Book</div>

                <div class="con">
                    <div class="img">
                        <a href="javascript:viewEbook('http://md.khpmission.kr/book/Cross/','9')">
                            <img src="/images/movie/loadofcross_img.gif" alt="십자가의길 책 이미지" width="198" height="275" border="0">
                        </a>
                    </div>
                    <div class="table">
                        <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tbody>
                                <tr>
                                    <td width="88%" height="29" align="center" background="/images/movie/list_bg.gif"><strong>목록</strong></td>
                                    <td width="12%" background="/images/movie/list_bg.gif" align="center"><strong>듣기</strong></td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="5">
                                            <tbody>
                                                <tr>
                                                    <td height="1" colspan="4" bgcolor="#c5c5c5"></td>
                                                </tr>
                                                <tr>
                                                    <td><img src="/images/movie/arrow_01.gif" width="7" height="10"></td>
                                                    <td><strong>서문</strong></td>
                                                    <td width="5%"><a href="javascript:listenMp3('preface_0.mp3','서문');"><img src="/images/movie/icon_audio.gif" alt="오디오 듣기 - 서문" width="15" height="14" border="0"></a></td>
                                                    <td width="2%"></td>
                                                </tr>
                                                <tr>
                                                    <td height="1" colspan="4" bgcolor="#c5c5c5"></td>
                                                </tr>
                                                <tr>
                                                    <td><img src="/images/movie/arrow_01.gif" width="7" height="10"></td>
                                                    <td><strong>제1장   최후의 만찬</strong></td>
                                                    <td width="5%"><a href="javascript:listenMp3('Chapter1.mp3','제1장   최후의 만찬');"><img src="/images/movie/icon_audio.gif" alt="오디오 듣기 - 제1장 최후의만찬" width="15" height="14" border="0"></a></td>
                                                    <td width="2%"></td>
                                                </tr>
                                                <tr>
                                                    <td height="1" colspan="4" bgcolor="#c5c5c5"></td>
                                                </tr>
                                                <tr>
                                                    <td><img src="/images/movie/arrow_01.gif" width="7" height="10"></td>
                                                    <td><strong>제2장   겟세마네의 기도</strong></td>
                                                    <td width="5%"><a href="javascript:listenMp3('Chapter2.mp3','제2장   겟세마네의 기도');"><img src="/images/movie/icon_audio.gif" alt="오디오 듣기 - 제2장   겟세마네의 기도" width="15" height="14" border="0"></a></td>
                                                    <td width="2%"></td>
                                                </tr>
                                                <tr>
                                                    <td height="1" colspan="4" bgcolor="#c5c5c5"></td>
                                                </tr>
                                                <tr>
                                                    <td><img src="/images/movie/arrow_01.gif" width="7" height="10"></td>
                                                    <td><strong>제3장   십자가의 길로</strong></td>
                                                    <td width="5%"><a href="javascript:listenMp3('Chapter3.mp3','제3장   십자가의 길로');"><img src="/images/movie/icon_audio.gif" alt="오디오 듣기 - 제3장   십자가의 길로" width="15" height="14" border="0"></a></td>
                                                    <td width="2%"></td>
                                                </tr>
                                                <tr>
                                                    <td height="1" colspan="4" bgcolor="#c5c5c5"></td>
                                                </tr>
                                                <tr>
                                                    <td><img src="/images/movie/arrow_01.gif" width="7" height="10"></td>
                                                    <td><strong>제4장 심판의 자리로</strong></td>
                                                    <td width="5%"><a href="javascript:listenMp3('Chapter4.mp3','제4장 심판의 자리로');"><img src="/images/movie/icon_audio.gif" alt="오디오 듣기 - 제4장 심판의 자리로" width="15" height="14" border="0"></a></td>
                                                    <td width="2%"></td>
                                                </tr>
                                                <tr>
                                                    <td height="1" colspan="4" bgcolor="#c5c5c5"></td>
                                                </tr>
                                                <tr>
                                                    <td><img src="/images/movie/arrow_01.gif" width="7" height="10"></td>
                                                    <td><strong>제5장 골고다 언덕으로</strong></td>
                                                    <td width="5%"><a href="javascript:listenMp3('Chapter5.mp3','제5장 골고다 언덕으로');"><img src="/images/movie/icon_audio.gif" alt="오디오 듣기 - 제5장 골고다 언덕으로" width="15" height="14" border="0"></a></td>
                                                    <td width="2%"></td>
                                                </tr>
                                                <tr>
                                                    <td height="1" colspan="4" bgcolor="#c5c5c5"></td>
                                                </tr>
                                                <tr>
                                                    <td><img src="/images/movie/arrow_01.gif" width="7" height="10"></td>
                                                    <td><strong>제6장 십자가에 달린 주</strong></td>
                                                    <td width="5%"><a href="javascript:listenMp3('Chapter6_1.mp3','제6장 십자가에 달린 주');"><img src="/images/movie/icon_audio.gif" alt="오디오 듣기 - 제6장 십자가에 달린 주" width="15" height="14" border="0"></a></td>
                                                    <td width="2%"></td>
                                                </tr>
                                                <tr>
                                                    <td height="1" colspan="4" bgcolor="#c5c5c5"></td>
                                                </tr>
                                                <tr>
                                                    <td><img src="/images/movie/arrow_01.gif" width="7" height="10"></td>
                                                    <td><strong>제7장 영생</strong></td>
                                                    <td width="5%"><a href="javascript:listenMp3('chapter7_1.mp3','제7장 영생');"><img src="/images/movie/icon_audio.gif" alt="오디오 듣기 - 제7장 영생" width="15" height="14" border="0"></a></td>
                                                    <td width="2%"></td>
                                                </tr>
                                                <tr>
                                                    <td height="1" colspan="4" bgcolor="#c5c5c5"></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
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
