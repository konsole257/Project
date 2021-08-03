<%
Dim flvpath
flvpath = Request.QueryString("flvpath")
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<!--#include virtual="/en/include/title.asp"-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="/en/images/include/css/sub.css" type="text/css" rel="STYLESHEET">
	<script language="JavaScript" src="/en/images/include/js/script.js"></script>
</head>
<body oncontextmenu="PrintMSG();return false;"  ondragstart="return false">

<script language="javascript">
<!--
	flash_wf('/en/images/include/flash/flv_player2.swf','320','280','flvplay',0,'flvpath=<%=flvpath%>')
//-->
</script>

</body>
</html>
