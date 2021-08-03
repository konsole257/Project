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
	<script language="JavaScript">
	<!--
	function ch100(){
		resizeTo(330,390)
	}
	function ch200(){
		resizeTo(650,680)
	}
	//-->
	</script>
</head>
<body oncontextmenu="PrintMSG();return false;"  ondragstart="return false">

<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
	<td style="text-align:center;">
	<script language="javascript">
	<!--
		flash_wf('/en/images/include/flash/flv_player.swf','640','600','flvplay',0,'flvpath=<%=flvpath%>')
//		flash_wf('/en/images/include/flash/flv_player.swf','640','600','flvplay',0,'flvpath=http://218.232.226.150/nss_20090720_1.flv')
//		flash_wf('/en/images/include/flash/flv_player.swf','640','600','flvplay',0,'flvpath=/en/images/include/flash/vod_20090720_1.flv')
		
	//-->
	</script>
	</td>
</tr>
</table>

</body>
</html>
