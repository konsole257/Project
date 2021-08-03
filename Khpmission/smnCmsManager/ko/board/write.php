<!DOCTYPE HTML>
<html lang="ko">
<html>
<head>
    <meta charset="UTF-8" />
	<link href="/smnCmsManager/ko/images/css/admin.css" type="text/css" rel="STYLESHEET">
	<script language="JavaScript" src="/smnCmsManager/ko/images/js/script.js"></script>
	<script type="text/javascript" src="/ko/include/js/common.js"></script>
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
			<div class="ti">자료실 등록</div>
			<!-- [e]title -->

			<!-- [s]list -->
			<form>
				<input type="hidden" name="brd_gbn" value="KOPDS">
				<input type="hidden" name="brd_name" value="자료실">
				<table cellpadding="0" cellspacing="0" border="0" class="boardList2">
					<colgroup>
						<col style="width: 18%;">
						<col style="width: *;">
					</colgroup>
						<tbody><tr>
							<th>TITLE</th>
							<td class="sub">
								<input class="input" name="subject" maxlength="100" style="width: 652px;">
							</td>
						</tr>
		 			 <tr>
							<th>CONTENTS</th>
							<td class="sub">
							<!--<a href="#" Onclick = "img_view()"><img src="/smnCmsManager/en/images/common/btn_photo_add.gif" width="131" height="14" alt="본문에 사진 삽입하기" /></a>-->
							<textarea cols="65" name="memo" rows="25" class="textarea"></textarea>
							</td>
						</tr>
						<tr>
							<th>파일 첨부</th>
							<td class="sub">
								<input class="input" type="File" name="file_name" style="width: 240px;">
								<span class="f11 gray"></span>
							</td>
						</tr>

					</tbody>
				</table>
			</form>
			<!-- [e]list -->

			<!-- [s]btn -->
			<div class="btnC">
				<input id="btn_send" type="image" src="/smnCmsManager/ko/images/common/btn_regist.gif" alt="등록하기" /></a>
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
