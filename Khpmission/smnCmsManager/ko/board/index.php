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
			<div class="ti">자료실 리스트</div>
			<!-- [e]title -->

			<!-- [s]search -->
			<div class="search">
			<form>
			<input type="hidden" name="brd_gbn" value="KOPDS">
			<input type="hidden" name="brd_name" value="자료실">
			<p class="txt fl">검색</p>
				<select name="field" class="field" style="width: 130px; height: 21px;">
					<option value="title">Title</option>
					<option value="contents">Contents</option>
				</select>
				<input class="input" name="strque" maxlength="15" style="width: 240px;">
				<input type="image" src="/smnCmsManager/ko/images/common/btn_search.gif" alt="검색" align="absmiddle">
			</form>
			</div>
			<!-- [e]search -->

			<!-- [s]list -->
			<table cellpadding="0" cellspacing="0" border="0" class="boardList1">
			<colgroup>
				<col style="width: 8%;" />
				<col style="width: *;" />
				<col style="width: 16%;" />
				<col style="width: 13%;" />
			</colgroup>
				<tr>
					<th>NO</th>
					<th>TITLE</th>
					<th>DATE</th>
					<th class="e">VIEW</th>
				</tr>

				<!-- 반복영역 // -->
				<tr>
					<td>11</td>
					<td class="sub2"><a href="#">1993 8월 “THE SECRET TO BEAT AIDS”책자 보낸 데 대한 답신</a></td>
					<td>2015-06-30</td>
					<td class="e">549</td>
				</tr>
				<!-- // 반복영역 -->
			</table>
			<!-- [e]list -->

			<!-- [s]paging -->
			<div class="paging">
				<img src="/smnCmsManager/ko/images/common/btn_prev.gif" alt="prev" hspace="1">
				<span class="current">1</span>
				<a href="#" class="current">2</a>
				<img src="/smnCmsManager/ko/images/common/btn_next.gif" alt="next" hspace="1">
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
