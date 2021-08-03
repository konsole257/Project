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
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        				<tbody>
                            <tr>
            					<td width="10%" height="1" bgcolor="#cccccc"></td>
            					<td width="70%" height="1" bgcolor="#cccccc"></td>
            					<td width="20%" height="1" bgcolor="#cccccc"></td>
            				</tr>

            				<tr>
            					<td colspan="3" height="4" bgcolor="#f3f3f3"></td>
            				</tr>

            				<tr>
            					<td style="padding:8px 0 8px 0;text-align:center;" bgcolor="#e3e3e3"><img src="/images/ebook/bbst01.gif" alt="번호"></td>
            					<td style="padding:8px 0 8px 0;text-align:center;" bgcolor="#e3e3e3"><img src="/images/ebook/bbst02.gif" alt="제목"></td>
            					<td style="padding:8px 0 8px 0;text-align:center;" bgcolor="#e3e3e3"><img src="/images/ebook/bbst03.gif" alt="저자"></td>
            				</tr>

                            <!-- 반복영역 // -->
            				<tr>
            					<td style="padding:6px 0 5px 0;text-align:center;">10</td>
            					<td style="padding:6px 10px 5px 10px;text-align:left;"><a href="javascript:viewEbook('http://md.khpmission.kr/ebook/Life_Origin_1/JBook.htm','34')">인생의 목적 (원본)</a></td>
            					<td style="padding:6px 0 5px 0;text-align:center;">정 요한 </td>
            				</tr>
            				<tr>
            					<td colspan="3" height="1" bgcolor="#e3e3e3"></td>
            				</tr>
                            <!-- // 반복영역 -->

            				<tr>
            					<td colspan="3" height="1" bgcolor="#cccccc"></td>
            				</tr>
            				<tr>
            					<td colspan="3" height="1" bgcolor="#ffffff"></td>
            				</tr>
            				<tr>
            					<td colspan="3" height="4" bgcolor="#f3f3f3"></td>
            				</tr>
            				<tr>
            					<td colspan="3" height="1" bgcolor="#cccccc"></td>
            				</tr>
        				</tbody>
                    </table>
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
