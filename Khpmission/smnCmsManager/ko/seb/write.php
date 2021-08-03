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
			<div class="ti">SEB 등록</div>
			<!-- [e]title -->

			<!-- [s]list -->
            <form>
                <input type="hidden" name="brd_gbn" value="">
                <input type="hidden" name="brd_name" value="">
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
        					<th>WRITER</th>
        					<td class="sub">
        						<input class="input" name="writer" maxlength="15" style="width: 252px;">
        					</td>
        				</tr>
        				<tr>
        					<th>사진 주소입력</th>
        					<td class="sub">
        						<input class="input" name="file_name" maxlength="150" style="width: 360px;">
        						<!--<span class="f11 gray">100 kb 이내 사진 1장 등록 가능</span>-->
        					</td>
        				</tr>
        				<tr>
        					<th>ebook 주소입력(OLD)</th>
        					<td class="sub2">
        						<input class="input" name="ebook_url" maxlength="150" style="width: 360px;">
        					</td>
        				</tr>
        				<tr>
        					<th>ebook 주소입력(V2)</th>
        					<td class="sub2">
        						(*)PC,MOBILE 공통 - 2019.11 <br>
        						<input class="input" name="ebook_url_v2" maxlength="150" style="width: 360px;">
        					</td>
        				</tr>
        				<!-- 사용안함 2019.11.11
        				<tr>
        					<th>모바일 ebook 주소입력</th>
        					<td class="sub2">
        						<input class="input" name="EBOOK_MOBILE_URL" maxlength="150" style="width: 360px;" />
        					</td>
        				</tr>
        				-->
        				<tr>
        					<th>스크린리더내용입력</th>
        					<td class="sub2">
        						<textarea name="CONTENTS" style="width:100%;height:300px;" class="input"></textarea>
        					</td>
        				</tr>
        			</tbody>
                </table>
            </form>
			<!-- [e]list -->

			<!-- [s]btn -->
			<div class="btnC">
				<input id = "btn_send"  type="image" src="/smnCmsManager/ko/images/common/btn_regist.gif" alt="등록하기" hspace="1" /></a>
				<a href="#"><img src="/smnCmsManager/ko/images/common/btn_list.gif" alt="목록보기" /></a>
			</div>
			<!-- [e]btn -->
		</div>
		<!-- [e]Content -->
		</form>
	</div>
	<!-- [e]Middle -->

	<!-- [s]Footer -->
	<?php include $_SERVER["DOCUMENT_ROOT"]."/smnCmsManager/ko/include/footer.php"; ?>
	<!-- [e]Footer -->

</div>
</body>
</html>
