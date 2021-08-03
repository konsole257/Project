function MM_swapImage() {
	var i,j=0,x,a=MM_swapImage.arguments;
	document.MM_sr=new Array;
	for(i=0;i<(a.length-2);i+=3)
		if ((x=MM_findObj(a[i]))!=null){
			document.MM_sr[j++]=x;
			if(!x.oSrc)
				x.oSrc=x.src;
			x.src=a[i+2];
		}
}
function MM_findObj(n, d) { //v4.0
	var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
	d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
	if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
	for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
	if(!x && document.getElementById) x=document.getElementById(n); return x;
}
function MM_swapImgRestore() {
	var i,x,a=document.MM_sr;
	for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++)
		x.src=x.oSrc;
}
function open_scroll_no(xurl, tar, wid, hei){
	set = 'width='+wid+',height='+hei+',left=0,top=0,toolbar=no,location=no,directory=no,status=no,menubar=no,scrollbars=no,resizable=no,copyhistory=no'
	window.open(xurl,tar,set);
}
function open_scroll_yes(xurl, tar, wid, hei){
	set = 'width='+wid+',height='+hei+',left=0,top=0,toolbar=no,location=no,directory=no,status=no,menubar=no,scrollbars=yes,resizable=yes,copyhistory=no'
	window.open(xurl,tar,set);
}
// flash
function flash_wf(flash_name,flash_width,flash_height,flash_id,wmd,idx){
	document.write(" \
		<Object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' codebase='http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0' WIDTH='"+flash_width+"' HEIGHT='"+flash_height+"' id='"+flash_id+"' ALIGN=''> \
		<PARAM NAME=movie VALUE='"+flash_name+"'> \
		<PARAM NAME=quality VALUE=high> \
		<PARAM NAME=AllowScriptAccess value=always> \
	");
	if( wmd == '1' ){
		document.write(" \
			<PARAM NAME=wmode VALUE=transparent> \
		");
	}
	if( idx != '' ){
		document.write(" \
			<param name=flashvars value='"+idx+"'> \
		");
	}
	if( wmd == '1' ){
		if( idx != '' ){
			document.write(" \
				<EMBED src='"+flash_name+"' allowScriptAccess='always' flashvars='"+idx+"' wmode='transparent' quality=high  WIDTH='"+flash_width+"' HEIGHT='"+flash_height+"' NAME='"+flash_id+"' ALIGN='' TYPE='application/x-shockwave-flash' PLUGINSPAGE='http://www.macromedia.com/go/getflashplayer'> \
			");
		}else{
			document.write(" \
				<EMBED src='"+flash_name+"' allowScriptAccess='always' wmode='transparent' quality=high  WIDTH='"+flash_width+"' HEIGHT='"+flash_height+"' NAME='"+flash_id+"' ALIGN='' TYPE='application/x-shockwave-flash' PLUGINSPAGE='http://www.macromedia.com/go/getflashplayer'> \
			");
		}
	}else{
		if( idx != '' ){
			document.write(" \
				<EMBED src='"+flash_name+"' allowScriptAccess='always' flashvars='"+idx+"' quality=high  WIDTH='"+flash_width+"' HEIGHT='"+flash_height+"' NAME='"+flash_id+"' ALIGN='' TYPE='application/x-shockwave-flash' PLUGINSPAGE='http://www.macromedia.com/go/getflashplayer'> \
			");
		}else{
			document.write(" \
				<EMBED src='"+flash_name+"' allowScriptAccess='always' quality=high  WIDTH='"+flash_width+"' HEIGHT='"+flash_height+"' NAME='"+flash_id+"' ALIGN='' TYPE='application/x-shockwave-flash' PLUGINSPAGE='http://www.macromedia.com/go/getflashplayer'> \
			");
		}
	}
	document.write(" \
		</EMBED> \
		</OBJECT> \
	");
}

// 투명이미지
function setPng24(obj) {
	obj.width=obj.height=1;
	obj.className=obj.className.replace(/\bpng24\b/i,'');
	obj.style.filter =
	"progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+ obj.src +"',sizingMethod='image');"
	obj.src='';
	return '';
}