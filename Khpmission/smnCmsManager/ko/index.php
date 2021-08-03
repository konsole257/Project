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
			<div class="ti">성서영해집 리스트</div>
			<!-- [e]title -->

			<!-- [s]list -->
			<table cellpadding="0" cellspacing="0" border="0" class="boardList1">
			<colgroup>
				<col style="width: 8%;" />
				<col style="width: *;" />
				<col style="width: 13%;" />
				<col style="width: 16%;" />
				<col style="width: 8%;" />
				<col style="width: 13%;" />
			</colgroup>
				<tr>
					<th>NO</th>
					<th>TITLE</th>
					<th>Writer</th>
					<th>DATE</th>
					<th>VIEW</th>
					<th class="e">수정/삭제</th>
				</tr>
				<tr>
					<td>10</td>
					<td class="sub2"><a href="#"><img src="/smnCmsManager/ko/images/common/list_img1.gif" alt=""> 내용 입니다. 내용 입니다. 내용 입니다.</a></td>
					<td>Yohan Chung</td>
					<td>2009.07.15. 21:32</td>
					<td>100</td>
					<td class="e">
						<a href="#"><strong>[수정]</strong></a><br><a href="#"><strong>[삭제]</strong></a>
					</td>
				</tr>
			</table>
			<!-- [e]list -->

			<!-- [s]paging -->
			<div class="paging">
				<a href="#"><img src="/smnCmsManager/ko/images/common/btn_first.gif" alt="first" /></a>
				<a href="#"><img src="/smnCmsManager/ko/images/common/btn_prev.gif" alt="prev" hspace="1" /></a>
				<a href="#">1</a>
				<a href="#">2</a>
				<a href="#">3</a>
				<a href="#">4</a>
				<a href="#" class="current">5</a>
				<a href="#">6</a>
				<a href="#">7</a>
				<a href="#">8</a>
				<a href="#">9</a>
				<a href="#">10</a>
				<a href="#"><img src="/smnCmsManager/ko/images/common/btn_next.gif" alt="next" hspace="1" /></a>
				<a href="#"><img src="/smnCmsManager/ko/images/common/btn_last.gif" alt="last" /></a>
			</div>
			<!-- [e]paging -->
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
