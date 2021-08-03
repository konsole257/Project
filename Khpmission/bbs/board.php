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
                <div class="conHistory small_title"><img src="/images/common/s_tit_dot.gif">&nbsp;게시판</div>

                <div class="con">
                    <table cellpadding="0" cellspacing="0" border="0" class="bbsTableList1">
						<colgroup>
							<col style="width:80px;">
							<col style="width:*;">
							<col style="width:80px;">
							<col style="width:100px;">
						</colgroup>
						<thead>
							<tr>
								<th><img src="/images/bbs/bbst1.gif" height="30" alt="번호"></th>
								<th><img src="/images/bbs/bbst2.gif" height="30" alt="제목"></th>
								<th><img src="/images/bbs/bbst3.gif" height="30" alt="작성일"></th>
								<th><img src="/images/bbs/bbst4.gif" height="30" alt="조회수"></th>
							</tr>
						</thead>
						<tbody>
                            <!-- 반복영역 // -->
							<tr>
								<td>11</td>
								<td class="subject"><a href="/bbs/board_rf.php">1993 8월 “THE SECRET TO BEAT AIDS”책자 보낸 데 대한 답신</a></td>
								<td>2015-06-30</td>
								<td>551</td>
							</tr>
                            <!-- // 반복영역 -->
						</tbody>
					</table>

                    <div class="page2">
    					<img src="/images/bbs/bbsbtn_prev.gif" border="0" alt="">
    					<span class="current">1</span>
    					<a href="#" class="current">2</a>
    					<img src="/images/bbs/bbsbtn_next.gif" border="0" alt="">
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
