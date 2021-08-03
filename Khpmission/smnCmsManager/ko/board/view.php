<!DOCTYPE HTML>
<html lang="ko">
<html>
<head>
    <meta charset="UTF-8" />
	<link href="/smnCmsManager/ko/images/css/admin.css" type="text/css" rel="STYLESHEET">
	<script language="JavaScript" src="/smnCmsManager/ko/images/js/script.js"></script>
	 <script type="text/javascript" src="/board/share/site.js"></script>
</head>
<body>
<div id="wrap">

	<!-- [s]Header -->
	<?php include $_SERVER["DOCUMENT_ROOT"]."/smnCmsManager/ko/include/header.php"; ?>
	<!-- [e]Header -->

	<!-- [s]Middle -->
	<div id="middle">

		<!-- [s]Left -->
		<?php include $_SERVER["DOCUMENT_ROOT"]."/smnCmsManager/ko/include/left.php"; ?>
		<!-- [e]Left -->

		<!-- [s]Content -->
		<div id="content">
			<!-- [s]title -->
			<div class="ti">자료실 리스트</div>
			<!-- [e]title -->

			<!-- [s]list -->
			<table cellpadding="0" cellspacing="0" border="0" class="boardList2 boardList2_view">
				<colgroup>
					<col style="width: 15%;">
					<col style="width: *;">
					<col style="width: 15%;">
					<col style="width: 20%;">
				</colgroup>
				<tbody>
					<tr>
						<th>Title</th>
						<td colspan="3" class="title">1993 8월 “THE SECRET TO BEAT AIDS”책자 보낸 데 대한 답신</td>
					</tr>
					<tr>
						<th>DATE</th>
						<td>2015-06-30 오전 11:15:07</td>
						<th>View</th>
						<td>549</td>
					</tr>

					<tr>
						<td colspan="4" class="con">
							<p><font size="3"><strong><u>11. 1993 8월 “THE SECRET TO BEAT AIDS”책자 보낸 데 대한 답신</u></strong></font></p>
							<br>
							<p><font size="2"><strong>캐나다 보건부장관</strong></font></p>
							<p><img style="CURSOR: pointer" onclick="viewImage(this.src);" hspace="10" src="/board/data/1993_1.jpg" onload="imgResize(this);" align="top" border="0" width="580"></p>
							<br>
							<p><font size="2"><strong>영국 보건부</strong></font></p>
							<p><img style="CURSOR: pointer" onclick="viewImage(this.src);" hspace="10" src="/board/data/1993_2.jpg" onload="imgResize(this);" align="top" border="0" width="580"></p>
						</td>
					</tr>
				</tbody>
			</table>
			<!-- [e]list -->

			<!-- [s]btn -->
			<div class="btnC">
				<a href="#"><img src="/smnCmsManager/ko/images/common/btn_modify.gif" alt="수정하기" /></a>
				<a href="#"><img src="/smnCmsManager/ko/images/common/btn_delete.gif" alt="삭제하기" /></a>
				<a href="#"><img src="/smnCmsManager/ko/images/common/btn_list.gif" alt="목록보기" /></a>
			</div>
			<!-- [e]btn -->
		</div>
		<!-- [e]Content -->

	</div>
	<!-- [e]Middle -->

	<!-- [s]Footer -->
	<?php include $_SERVER["DOCUMENT_ROOT"]."/smnCmsManager/ko/include/footer.php"; ?>
	<!-- [e]Footer -->

</div>
</body>
</html>
