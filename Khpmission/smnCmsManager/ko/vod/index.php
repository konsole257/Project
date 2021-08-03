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
			<div class="ti">인생의 목적 리스트</div>
			<!-- [e]title -->

			<!-- [s]list -->
			<table cellpadding="0" cellspacing="0" border="0" class="boardList1">
			<colgroup>
				<col style="width: 8%;" />
				<col style="width: *;" />
				<col style="width: 14%;" />
				<col style="width: 11%;" />
				<col style="width: 6%;" />
				<col style="width: 6%;" />
				<col style="width: 13%;" />
			</colgroup>
				<tr>
					<th>NO</th>
					<th>TITLE</th>
					<th>DATE</th>
					<th>TIME</th>
					<th>VIEW</th>
					<th>정렬(M)</th>
					<th class="e">수정/삭제</th>
				</tr>

				<!-- 반복영역 // -->
				<tr>
					<td>12</td>
					<td class="sub2"><a href="#"><img src="http://www.khpmission.kr/en/download/life/2011083020616.jpg" alt="" width="74" height="40">성령 잉태에 대한 해설 <br> 2. 독생자가 성령으로 잉태되는 역사</a></td>
					<td>2011-08-30</td>
					<td>01:06:10</td>
					<td>38142</td>
					<td>12</td>
					<td class="e">
						<a href="#"><strong>[수정]</strong></a><br><a href="#"><strong>[삭제]</strong></a>
					</td>
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
