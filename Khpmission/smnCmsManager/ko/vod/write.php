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
			<div class="ti">인생의 목적 등록</div>
			<!-- [e]title -->

			<!-- [s]list -->
			<form>
				<input type="hidden" name="brd_gbn" value="KOVOD">
				<input type="hidden" name="brd_name" value="">
				<table cellpadding="0" cellspacing="0" border="0" class="boardList2">
    				<colgroup>
    					<col style="width: 18%;">
    					<col style="width: *;">
    				</colgroup>
    					<!--<tr>
    						<th>DATE</th>
    						<td>2009.07.15. 21:32</td>
    					</tr>-->
    					<tbody><tr>
    						<th>TITLE</th>
    						<td class="sub">
    							<input class="input" name="subject" maxlength="100" style="width: 652px;">
    						</td>
    					</tr>
    					<tr>
    						<th>동영상 TIME</th>
    						<td class="sub">
    							<input class="input" name="vod_time" maxlength="10" style="width: 193px; margin-right: 6px;">
    							<span class="f11 gray">
    								예) 01:06:33
    								&nbsp;&nbsp;&nbsp;&nbsp;
    								시간:분:초 6자리 입력
    							</span>
    						</td>
    					</tr>
    					<tr>
    						<th>사진 올리기</th>
    						<td class="sub">
    							<!--<input class="input"  type="File" name="vod_img" style="width: 240px;" />-->
    							<input class="input" name="vod_img" maxlength="150" style="width: 360px;">
    							<span class="f11 gray">100 kb 이내 사진 1장 등록 가능</span>
    						</td>
    					</tr>
    					<tr>
    						<th>동영상 주소입력</th>
    						<td class="sub2">
    							<input class="input" name="vod_url" maxlength="150" style="width: 360px;">
    						</td>
    					</tr>
    					<tr>
    						<th>모바일 썸네일 이미지</th>
    						<td class="sub">
    							<input class="input" name="vod_code" maxlength="30" style="width: 652px;">
    						</td>
    					</tr>
    				</tbody>
                </table>
            </form>
			<!-- [e]list -->

			<!-- [s]btn -->
			<div class="btnC">
				<input id="btn_send" type="image" src="/smnCmsManager/ko/images/common/btn_regist.gif" alt="등록하기" hspace="1">
				<a href="#"><img src="/smnCmsManager/ko/images/common/btn_list.gif" alt="목록보기"></a>
			</div>
			<!-- [e]btn -->

		</div>
		<!-- [e]Content -->
		</form>
	</div>
	<!-- [e]Middle -->

	<!-- [s]Footer -->
	<!--#include virtual="/smnCmsManager/ko/include/footer.asp"-->
	<!-- [e]Footer -->

</div>
</body>
</html>
