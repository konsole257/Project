<!DOCTYPE HTML>
<html lang="ko">
<head>
	<meta charset="UTF-8" />
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
	<link href="/smnCmsManager/ko/images/css/admin.css" type="text/css" rel="STYLESHEET">
	<script language="JavaScript" src="/smnCmsManager/ko/images/js/script.js"></script>
</head>
<body  onload="javascript:InitialFocus()">
<form method="post" action="login_ok.asp" name="admin_member" >
<input type="hidden" name="sResponse_url" value="<%=sResponse_url%>">
<div id="login_wrap">
	<!-- [s]Middle -->
	<div id="login_middle">
		<img src="/smnCmsManager/ko/images/common/login_ti_k.gif" alt="성민선교회 국문 ADMIN" class="login_ti" />
		<div class="login_box">
			<dl class="info">
				<dt><img src="/smnCmsManager/ko/images/common/login_txt_id.gif" alt="id" /></dt>
				<dd><input type='text' name='uid' maxlength=15  style="width: 124px;" value='' class="input" onkeydown='javascript:return checkr(1)'></dd>
				<dt><img src="/smnCmsManager/ko/images/common/login_txt_pw.gif" alt="pw" /></dt>
				<dd><input type='password' name='pwd' maxlength=15  style="width: 124px;" class="input" onkeydown='javascript:return checkr(2)'></dd>
			</dl>
			<a href='javascript:FormCheck_level()'><img src="/smnCmsManager/ko/images/common/btn_login.gif" alt="LOGIN" class="btn" /></a>
		</div>
	</div>
	<!-- [e]Middle -->
</div>
</form>
</body>
</html>
