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
    <div id="warp" class="bbs">

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
                <div class="conHistory small_title"><img src="/images/common/s_tit_dot.gif">&nbsp;자료실</div>

                <div class="con">
					<table cellpadding="0" cellspacing="0" border="0" class="bbsTableRead1">
						<colgroup>
							<col style="width:70px;">
							<col style="width:*;">
							<col style="width:70px;">
							<col style="width:200px;">
						</colgroup>
						<tbody>
							<tr>
								<th class="ti"><img src="/images/bbs/bbst2.gif" height="30" alt="제목"></th>
								<td class="ti" colspan="3">갤럭시 S2 사용자를 위한 안내문 </td> <!-- 제목 -->
							</tr>
							<tr>
								<th><img src="/images/bbs/bbst5.gif" height="30" alt="등록일"></th>
								<td>2012-03-19</td><!-- 등록일 -->
								<th><img src="/images/bbs/bbst7.gif" height="30" alt="조회수"></th>
								<td>2230</td><!-- 조회수 -->
							</tr>

							<tr>
								<td class="contents" colspan="4">
                                    <!-- 내용 // -->
									<font face="Verdana, Arial, Helvetica, sans-serif">불편을 드려 죄송합니다.<br><br>보다 다양한 브라우저와 디바이스, 운영 체제에서&nbsp;보실 수 있게&nbsp;하기 위하여 부득이 최신 버전의 flash player를 사용하게 되었습니다. <br><br>adobe flash player 11은 어도비사에서 제공하는 프로그램이므로 안전하게 사용하실 수 있습니다.<br><br></font><strong><font face="Verdana, Arial, Helvetica, sans-serif">&nbsp;</font><font face="Verdana, Arial, Helvetica, sans-serif"><font color="#0000cc">1. Adobe flash player 11 다운로드 &amp; 설치<br></font><br></font></strong><strong><font face="Verdana, Arial, Helvetica, sans-serif">앱스토어 (Play 스토어)에서 adobe flash player 11를 다운받아 설치합니다.&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br>이전 버전의 Adobe flash player가 설치되어 있을 경우 삭제하고 Adobe flash&nbsp;player 11을 설치하셔야 될 수도 있습니다.&nbsp;<br><br></font></strong><strong><font face="Verdana, Arial, Helvetica, sans-serif"><font color="#0000cc">&nbsp;2.&nbsp;설정하기&nbsp;<br><br></font>Adobe flash player 11 을 설치하셨어도 <font color="#ff0000">플러그인 실행을 '항상'</font><font color="#000000">으로</font> 하지 않으시면 flash player가 실행되지 않습니다. <br><br></font><font color="#660099" face="Verdana, Arial, Helvetica, sans-serif">1) <u>인터넷</u> 실행시킨다.<br><br>2) 왼쪽 하단의 '메뉴' Click<br><br>3)&nbsp;여섯가지 선택 메뉴 중 '더보기'&nbsp;Click<br><br>4)&nbsp;아래쪽으로 내려가 '설정' Click<br><br>5)&nbsp;아홉번째 '플러그인 실행' Click<br><br>6)&nbsp;'항상' 선택</font></strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <!-- // 내용 -->
								</td>
							</tr>
							<tr>
								<td height="10" colspan="4"></td>
							</tr>

							<tr>
								<th class="list"><img src="/images/bbs/bbst8.gif" height="30" alt="Prev"></th>
								<td class="list" colspan="3"><a href="#">동영상이 보이지 않으실 경우 </a> </td><!-- 이전글 -->
							</tr>
							<tr>
								<td height="1" colspan="4"></td>
							</tr>
							<tr>
								<th class="list"><img src="/images/bbs/bbst9.gif" height="30" alt="Next"></th>
								<td class="list" colspan="3">&nbsp;</td><!-- 다음글 -->
							</tr>
						</tbody>
					</table>

					<div class="btnCenter">
						<a href="/bbs/archive.php"><img src="/images/bbs/bbsbtn_list.gif" border="0" alt="목록"></a>
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
