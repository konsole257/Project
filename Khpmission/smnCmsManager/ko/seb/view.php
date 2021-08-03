<!DOCTYPE HTML>
<html lang="ko">
<html>
<head>
    <meta charset="UTF-8" />
	<link href="/smnCmsManager/ko/images/css/admin.css" type="text/css" rel="STYLESHEET">
	<script language="JavaScript" src="/smnCmsManager/ko/images/js/script.js"></script>
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
			<div class="ti">SEB 리스트</div>
			<!-- [e]title -->

			<!-- [s]list -->
			<table cellpadding="0" cellspacing="0" border="0" class="boardList2 boardList2_view">
			<colgroup>
				<col style="width: 15%;">
				<col style="width: *;">
				<col style="width: 15%;">
				<col style="width: 20%;">
			</colgroup>
				<tbody><tr>
					<th>Title</th>
					<td colspan="3" class="title">인생의 목적 (원본)</td>
				</tr>
				<tr>
					<th>DATE</th>
					<td>2014-02-26 오전 9:26:16</td>
					<th>View</th>
					<td>1770</td>
				</tr>

				<tr>
					<th>File</th>
					<td colspan="3"><a href="http://www.khpmission.kr/en/download/ko_seb/2014022692615.jpg"><img src="/smnCmsManager/ko/images/common/icon_file.gif" alt="file">http://www.khpmission.kr/en/download/ko_seb/2014022692615.jpg</a></td>
				</tr>

				<tr>
					<th>Writer</th>
					<td colspan="3" class="title">정 요한 </td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="3" class="title"></td>
				</tr>

			</tbody></table>
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
