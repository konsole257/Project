<%@ Register Src="/share/english.ascx" TagName="english" TagPrefix="eng" %>
<%@ Page Language="C#" ContentType="text/html" ResponseEncoding="euc-kr" %>

<%@ Register Src="share/WebUserControl.ascx" TagName="WebUserControl" TagPrefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<title>::: 성민선교회 :::</title>
<link rel="stylesheet" type="text/css" href="/share/style.css" />


<%
if(Request["pc"] == null)
{
%>


<script type="text/javascript">
<!--
	//alert("111");

	//모바일 기기에서 접속시 모바일 메인페이지로 이동
	if (navigator.userAgent.match (/iPhone|iPod|iPad/i) != null)
	{ 
		location.href = "/mobile/index.asp"	;
	}
	else if (navigator.userAgent.match(/Android|android/) != null)
	{ 
		location.href = "/mobile/index.asp"	;	
	}	
	 
//-->
</script>
<%
}
%>



<style type="text/css">
<!--
#text01 {
	width:565px;
	height:510px;
	display:none;
	z-index:1;
}
#text02 {
	width:565px;
	height:510px;
	display:none;
	z-index:1;
}
#text03 {
	width:565px;
	height:510px;
	display:none;
	z-index:1;
}
#english01 {
	width:565px;
	height:510px;
	display:none;
	z-index:1;
}
#english02 {
	width:565px;
	height:510px;
	display:none;
	z-index:1;
}
#english03 {
	width:565px;
	height:510px;
	display:none;
	z-index:1;
}
-->
</style>
<script type="text/javascript">
<!--
function open_scroll_no(xurl, tar, wid, hei){
	set = 'width='+wid+',height='+hei+',left=0,top=0,toolbar=no,location=no,directory=no,status=no,menubar=no,scrollbars=no,resizable=no,copyhistory=no'
	window.open(xurl,tar,set);
}
function open_scroll_yes(xurl, tar, wid, hei){
	set = 'width='+wid+',height='+hei+',left=0,top=0,toolbar=no,location=no,directory=no,status=no,menubar=no,scrollbars=yes,resizable=yes,copyhistory=no'
	window.open(xurl,tar,set);
}
function MM_showHideLayers() { //v9.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3)
  with (document) if (getElementById && ((obj=getElementById(args[i]))!=null)) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
}
//-->

function inner(){
	document.getElementById("main").innerHTML = document.getElementById("text01").innerHTML;
}

function move(id){
	document.getElementById("main").innerHTML = document.getElementById(id).innerHTML;
}

function viewEbook(path, idx){

if (navigator.userAgent.match (/iPhone|iPod|iPad/i) != null)
	{ 
	document.form1.Ebook.value = path
	window.open('', '_viewplayer', 'width=1024, height=768, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=no, location=no, scrollbar=no,status=no');
	document.form1.target = "_viewplayer"
	document.form1.action = "ebook_main_mobile.asp";
	document.form1.submit();	
	}
else if (navigator.userAgent.match(/Android|android/) != null)
	{ 
	document.form1.Ebook.value = path
	window.open('', '_viewplayer', 'width=1024, height=768, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=no, location=no, scrollbar=no,status=no');
	document.form1.target = "_viewplayer"
	document.form1.action = "ebook_main_mobile.asp";
	document.form1.submit();	
	}
else
	{
	//window.open(path, '_blank', 'width=1002,height=744,resizable=yes');
	document.form1.Ebook.value = path;
	document.form1.idx.value = idx;
//	window.open('', '_viewplayer', 'width=1200, height=800, top=50, left=50, fullscreen=yes, menubar=no, status=no, toolbar=no, titlebar=no, location=no, scrollbar=no,status=no');
//	var opt = 'width='+screen.width+' , height='+screen.height+' , top=0, left=0, fullscreen=yes, menubar=no, status=no, toolbar=no, titlebar=no, location=no, scrollbar=no,status=no';
	var opt = 'width=1200, height=800, top=50, left=50, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=no, location=no, scrollbar=no,status=no';
	window.open('', '_viewplayer', opt);
	document.form1.target = "_viewplayer"
	//xurl = "/vod/vodplayer/flvplayer_iframe.asp?path="+path;
	//open_scroll_no(xurl,'_viewplayer','665','545');
	document.form1.action = "ebook_main_2019.asp";
	document.form1.submit();	
}
}


//function viewEbook_m(path, idx){
//	document.form1.Ebook.value = path
//	window.open('', '_viewplayer', 'width=1024, height=768, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=no, location=no, scrollbar=no,status=no');
//	document.form1.target = "_viewplayer"
//	document.form1.action = "ebook_main_mobile.asp";
//	document.form1.submit();	
//}



function PrintMSG(){
	alert("The Korea holy People's Mission");
}
function Open_Win(ItemID,ClipID) 
{
	window.open('/vod/vodplayer/vodplayer.asp?Item_ID='+ItemID+'&CLIP_ID='+ClipID,'VIEWER','width=394,height=312,resizable=no,status=no');
}

function viewPlayer(path, idx)
{
 if (navigator.userAgent.match (/iPhone|iPod|iPad/i) != null)
	{ 
		url = "http://testkhp-f.akamaihd.net/i/mp4/"+path+"/master.m3u8";
		popupWindow = window.open(url,'FlashpopUpWindow','height=640,width=510,left=10,top=10,resizable=no,scrollbars=no,toolbar=no,menubar=no,location=no,directories=no,status=no');
	}
else
	{
		xurl = "/vod/vodplayer/flvplayer_ko.asp?path="+path;
		open_scroll_no(xurl,'_viewplayer','665','545');
	}
}




function getAndroidVersion(ua) {
		var ua = ua || navigator.userAgent; 
		var match = ua.match(/Android\s([0-9\.]*)/);
		return match ? match[1] : false;
};
	
function play_at_iphone(path)
{
		    //alert("아이폰으로 접속하셨습니다");
		//var AKAMAI_MEDIA_ANALYTICS_CONFIG_FILE_PATH = 'http://ma200-r.analytics.edgesuite.net/config/beacon-2333.xml';
			//$import('http://79423.analytics.edgesuite.net/html5/akamaihtml5-min.js');	
			//setAkamaiMediaAnalyticsData('HDPlayerKHP', 'KHPMission', '');
			//url = "http://khpas-f.akamaihd.net/i/mp4/"+path+"/master.m3u8";
			//popupWindow = window.open(url,'FlashpopUpWindow','height=640,width=510,left=10,top=10,resizable=no,scrollbars=no,toolbar=no,menubar=no,location=no,directories=no,status=no');
			document.form1.path.value = path
			window.open('', '_viewplayer', 'width=640, height=510, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
			document.form1.target = "_viewplayer"
			//xurl = "/vod/vodplayer/flvplayer_iframe.asp?path="+path;
			//open_scroll_no(xurl,'_viewplayer','665','545');
			document.form1.action = "/vod/vodplayer/player-50.asp";
			document.form1.submit();

}



function viewPlayer2(path, idx)
{
	 if (navigator.userAgent.match (/iPhone|iPod|iPad/i) != null)
		{ 
			play_at_iphone(path);
		}
	else if (navigator.userAgent.match(/Android|android/) != null)
		{ 
			var ver = getAndroidVersion(); //2014.04.18 안드로이드 버전에 따라 분기하도록 수정함 .ssw

			if(parseInt(ver) < 4){
				alert(ver);
				document.form1.path.value = path
				window.open('', '_viewplayer', 'width=1085, height=725, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
				document.form1.target = "_viewplayer"
				//xurl = "/vod/vodplayer/flvplayer_iframe.asp?path="+path;
				//open_scroll_no(xurl,'_viewplayer','665','545');
				document.form1.action = "/vod/vodplayer/flvplayer_Android.asp";
				document.form1.submit();
			}else{ 
				 //alert("안드로이드 버전" + ver + " 으로 접속하셨습니다.");
				 play_at_iphone(path) ; //안드로이드 버전4이상이면 아이폰방식으로 play .2014.04.18 
                    
			
			}
		}	
	else 
		{
			document.form1.path.value = path
			window.open('', '_viewplayer', 'width=665, height=540, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
//			window.open('', '_viewplayer', 'width=665, height=450, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
			document.form1.target = "_viewplayer"
			document.form1.action = "/vod/vodplayer/flvplayer_ko.asp";
//			document.form1.action = "/vod/vodplayer2015/index.asp";
			document.form1.submit();
		}
}
function viewPlayer3(path, idx)
{
		document.form1.path.value = path
		if ( navigator.userAgent.toLowerCase().indexOf("chrome") > 0 ){
			window.open('', '_viewplayer', 'width=535, height=375, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
		}else if ( navigator.userAgent.toLowerCase().indexOf("safari") > 0 ){
			window.open('', '_viewplayer', 'width=535, height=315, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
		}else{
			console.log("33");
			window.open('', '_viewplayer', 'width=535, height=370, top=100, left=100, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no');
		}
		document.form1.target = "_viewplayer"
		document.form1.action = "/vod/vodplayer2015/index.asp";
		document.form1.submit();
}

function viewPlayerNew(path, idx){
		document.form1.path.value = path ;
		document.form1.idx.value = idx ;

		var winl = (screen.width - 560) / 2;
		var wint = (screen.height - 380) / 2;
		if ( navigator.userAgent.toLowerCase().indexOf("chrome") > 0 ){
			wint = (screen.height - 380) / 2;
			set = 'width=560 ,height=380 ,top='+wint+',left='+winl+', toolbar=no,location=no,directory=no,status=no,menubar=no,scrollbars=no,resizable=no,copyhistory=no';
			window.open('', '_viewplayer1', set);
		}else if ( navigator.userAgent.toLowerCase().indexOf("safari") > 0 && navigator.userAgent.toLowerCase().indexOf("window") > 0  ){
			wint = (screen.height - 325) / 2;
			set = 'width=560 ,height=325 ,top='+wint+',left='+winl+', toolbar=no,location=no,directory=no,status=no,menubar=no,scrollbars=no,resizable=no,copyhistory=no';
			window.open('', '_viewplayer1', set);
		}else{
			wint = (screen.height - 380) / 2;
			set = 'width=560 ,height=380 ,top='+wint+',left='+winl+', toolbar=no,location=no,directory=no,status=no,menubar=no,scrollbars=no,resizable=no,copyhistory=no';
			window.open('', '_viewplayer1', set);
		}

		document.form1.target = "_viewplayer1";
		document.form1.action = "/vod/vodplayer2019/index.asp";
		document.form1.submit();
}

 function listenMp3(name,title_e){
	  if (navigator.userAgent.match (/iPhone|iPod|iPad/i) != null)
		{ 
			url = "/mp3/"+name;
			popupWindow = window.open(url,'FlashpopUpWindow','height=540,width=680,left=10,top=10,resizable=no,scrollbars=no,toolbar=no,menubar=no,location=no,directories=no,status=no');
		}
		else
		{
		document.form1.mp3_path.value = name
		document.form1.title.value = title_e
		document.form1.target = "_viewplayer"
		window.open('', '_viewplayer', 'width=320, height=50, top=0, left=0, fullscreen=no, menubar=no, status=no, toolbar=no, titlebar=yes, location=no, scrollbar=no','features');
        document.form1.action = "/movie/listenMp3.asp";
		document.form1.submit();
   }
    }
  function $import(src){
	var scriptElem = document.createElement('script');
	scriptElem.setAttribute('src',src);
	scriptElem.setAttribute('type','text/javascript');
	document.getElementsByTagName('head')[0].appendChild(scriptElem);
  }
</script>
<script type="text/javascript">
    function sendMail(as)
    {
        window.open('/mail.aspx?address='+as,"_blank","width=520px,height=450px")
    }
</script>

</head>
<form name="form1" id="form1" method="post">	
<input type="hidden" name="path">
<input type="hidden" name="idx">
<input type="hidden" name="mp3_path">
<input type="hidden" name="title">
<input type="hidden" name="Ebook">
<body  oncontextmenu="PrintMSG();return false;" ondragstart="return false" topmargin="0" onload="inner();">
<div id="text01" >
	<table width="560" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td height="426">
		<table width="100%" border="0" cellpadding="15" cellspacing="1" bgcolor="#e6d8be">
		<tr>
			<td valign="top" bgcolor="#fdf9dd">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td style="padding:0 10px 1px 10px;">
				<img src="/img/main/main_txt_20150605.jpg" border="0" width="510" alt="인간이 이 세상에 존재하는 목적이 무엇인지?
ㆍ인간이 자신이 원하지 않는 가운데 이 세상에 출생하여 비천한 동물도 고통 없이 사는데 
   만물의 영장이라고 하는 인간이 왜 일생을 죄와 고통을 당하며 살게 되는 것인지?
ㆍ결국 육이 죽으면 어디로 가는 것인지?
ㆍ사후의 세계는 구체적으로 어떠한 것인지? 등
 
그 질문에 대하여 갈증나게 알고자 원하는 자에게는 다음과 같은 점을 근거하여 명확하게 해설해 드리겠습니다.

ㆍ인간이 창조된 근본적인 목적
ㆍ인간이 창조된 구성 요소
ㆍ영, 혼, 육의 기능 
ㆍ선악간의 신의 실존 
ㆍ영, 혼, 육과 선악간의 신의 관계
ㆍ성신의 대속의 영에 의한 죄의 요소의 소멸과 영혼의 신창조
ㆍ인간이 죄와 고통에서 자유해방
ㆍ인간의 영혼의 기능으로 본 사후의 세계와 영생
ㆍ인간의 자유의지와 영혼의 형성 
ㆍ인간의 소욕으로 인한 죄의 요소의 정착
ㆍ창조주에 의한 인간의 죄의 대속" /><br />
				<div style="text-align:right;">
					<a href="/vod/list_2019.asp?ImageId=2"><img src="/img/main/btn_golife.gif" border="0" alt="인생의 목적 강론 바로가기" /></a><br />
				</div>
				</td>
			</tr>
			</table>
			</td>
		</tr>
		</table>
		</td>
	</tr>
	</table>
</div>

<table width="950" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td>
    <!-- top -->
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td colspan="2" height="20">&nbsp;</td>
      </tr>
      <tr>
        <td><img src="/img/common/top_logo1.gif" alt="한국성민선교회" width="305" height="30" /></td>
        <td style="text-align:right;padding:10px 20px 0 0;">
        <strong><!--<a href="javascript:sendMail('webmaster@khpmission.kr');" style="font-size:11px;">-->
		<a href="javascript:sendMail('hpfountain@khpmission.kr');" style="font-size:11px;">
		<span style="color:#5a5a5a;">Contact us</span></a> <span style="color:#969696;font-size:11px;">|</span>
        <a href="/en/" style="font-size:11px;"><span style="color:#5a5a5a;">ENGLISH</span></a></strong>
        </td>
        </tr>
      <tr>
        <td colspan="2"><img src="/img/main/top_img.jpg" width="950" height="131" alt="THE KOREA HOLY PEOPLE'S MISSON" /></td>
      </tr>
    </table>
   <!-- //top -->
    </td>
  </tr>
  <tr>
    <td height="43">
	 <table width="960" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="34" align="center"><a href="index.aspx"><img src="/img/main/menu01.gif" alt="홈으로" width="34" height="15" hspace="15" border="0"></a></td>
		<td width="11"><img src="/img/main/menu_line.gif" width="11" height="15"></td>
		<td width="56" align="center"><a href="aboutus/about_01.aspx?ImageId=1"><img src="/img/main/menu02.gif" alt="선교회소개메뉴" width="56" height="15" hspace="15" border="0"></a></td>
		<td width="11"><img src="/img/main/menu_line.gif" width="11" height="15"></td>
		<td width="60" align="center"><a href="/vod/list_2019.asp?ImageId=2"><img src="/img/main/menu03.gif" alt="인생의목적메뉴" width="60" height="15" hspace="15" border="0"></a></td>
		<td width="11"><img src="/img/main/menu_line.gif" width="11" height="15"></td>
		<td width="57" align="center"><a href="/movie/movie_02.aspx?ImageId=9"><img src="/img/main/menu10.gif" alt="십자가의길메뉴 " width="57" height="15" hspace="15" border="0"></a></td>
		<td width="11"><img src="/img/main/menu_line.gif" width="11" height="15"></td>
		<td width="57" align="center"><a href="ebook/book_2019.asp?ImageId=3"><img src="/img/main/menu04.gif" alt="성서영해집메뉴" width="57" height="15" hspace="15" border="0"></a></td>
		<td width="11"><img src="/img/main/menu_line.gif" width="11" height="15"></td>
		<td width="36" align="center"><a href="board/update.aspx?ImageId=5"><img src="/img/main/menu08.gif" alt="자료실메뉴" width="36" height="15" hspace="15" border="0"></a></td>
		<td width="11"><img src="/img/main/menu_line.gif" width="11" height="15"></td>
		<td width="36" align="center"><a href="board/list.aspx?ImageId=6"><img src="/img/main/menu06.gif" alt="게시판메뉴" width="36" height="15" hspace="15" border="0"></a></td>
		</td>
      </tr>
    </table>
   </td>
  </tr>
  <tr>
    <td><table width="950" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="560" valign="top">
        <div id="main">
        </div>
        </td>
        <td valign="top"><table width="377" border="0" align="right" cellpadding="0" cellspacing="0">
          <tr>
            <td style="padding:0 0 8px 0;">
			<div id="main_web" name="main_web"><a href="javascript:viewPlayerNew('i/life_1h/life_1h_,240,400,600,.mp4.csmil/master.m3u8','77');"><img src="/img/main/main_mv1.jpg" border="0" alt="인생의 목적 - 요약편-" /></a></div>
			<div id="main_android"style="margin:2px 0 0 5px"><a href="javascript:viewPlayerNew('i/life_1h/life_1h_,240,400,600,.mp4.csmil/master.m3u8','77');"><img src="/img/main/main_movie.jpg" /></a></div>
			<div id="main_mobile" style="margin:2px 0 0 5px"><a href="javascript:viewPlayerNew('i/life_1h/life_1h_,240,400,600,.mp4.csmil/master.m3u8','77');"><img src="/img/main/main_movie.jpg" /></a></div>
<!--
			<div id="main_web" name="main_web"><a href="javascript:viewPlayer2('life_1h24_001.mp4','66');"><img src="/img/main/main_mv1.jpg" border="0" alt="인생의 목적 - 요약편-" /></a></div>
			<div id="main_android"style="margin:2px 0 0 5px"><a href="javascript:viewPlayer2('life_1h24_001.mp4','66');"><img src="/img/main/main_movie.jpg" /></a></div>
			<div id="main_mobile" style="margin:2px 0 0 5px"><a href="javascript:viewPlayer2('life_1h24_001.mp4','66');"><img src="/img/main/main_movie.jpg" /></a></div>
			<div id="main_web" name="main_web"><iframe name="main_player" src="/vod/vodplayer/flvplayer_main_ak.asp?path=/mp4/mainlife_3.mp4&idx=83" frameborder="0" scrolling="no" width="377" height="336" style="margin-top:2px;"></iframe></div>
			<div id="main_android"style="margin:2px 0 0 5px"><a href="javascript:viewPlayer2('life_1h24_001.mp4','66');"><img src="/img/main/main_movie.jpg" /></a></div>
			<div id="main_mobile" style="margin:2px 0 0 5px"><a href="javascript:viewPlayer2('life_1h24_001.mp4','66');"><img src="/img/main/main_movie.jpg" /></a></div>
-->
			</td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td bgcolor="#edecec">

		<table width="367" border="0" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td width="181" style="padding: 5px 0 5px 0;"><a href="/movie/movie_04_2019.aspx?ImageId=9-1"><img src="/img/main/banner_02.gif" width="181" height="68" border="0" alt="십자가의길 바로가기" /></a></td>
			<td width="5">&nbsp;</td>
			<td width="181"><a href="javascript:viewEbook('http://md.khpmission.kr/book/Child/#page=1','8')"><img src="/img/main/banner_10.jpg" width="181" height="68" border="0" alt="인생의 목적(청소년용 전도지)" /></a></td>
		</tr>
		</table>
		</td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td style="padding:8px 0 0 0;"><a href="javascript:viewEbook('http://md.khpmission.kr/book/Insang/#page=1','17')"><img src="/img/main/banner_11.jpg" border="0" alt="<전도지> 인생이 죄와 고통에서 해방되려면 - 공해와 AIDS에서 승리할 수 있는 비결 -" /></a></td>
              </tr>
            </table></td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td style="padding:8px 0 0 0;">
					<img src="/img/main/banner_12.jpg" border="0" alt="AIDS 및 불치의 질병에서 승리할 수 있는 비결" usemap="#banner_12map" /><br />
					<map name="banner_12map" id="banner_12map">
						<area shape="rect" coords="88,47,130,69" href="javascript:viewEbook('http://md.khpmission.kr/book/AIDS_K/#page=1','15')" title="ebook 국문" />
						<area shape="rect" coords="136,47,178,69" href="javascript:viewEbook('http://md.khpmission.kr/book/AIDS_en/#page=1','20');" title="ebook 영문" />
						<area shape="rect" coords="252,47,294,69" href="javascript:viewPlayerNew('i/AIDS_1/AIDS_1_,240,400,600,.mp4.csmil/master.m3u8','66');" title="VOD 1부" />
						<area shape="rect" coords="299,47,341,69" href="javascript:viewPlayerNew('i/AIDS_2/AIDS_2_,240,400,600,.mp4.csmil/master.m3u8','67');" title="VOD 2부" />
					</map>
				</td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td style="padding-top: 20px;"><img src="/img/common/m_bottom1.gif" width="950" height="56" /></td>
  </tr>
</table>
	<script type="text/javascript">
	  if (navigator.userAgent.match (/iPhone|iPod|iPad/) != null)
	   {
			document.getElementById("main_web").style.display = "none";
			document.getElementById("main_android").style.display = "none";
	   }
	  else if (navigator.userAgent.match(/Android|android/) != null)
	   {
			document.getElementById("main_web").style.display = "none";
			document.getElementById("main_mobile").style.display = "none";
	   }		
	   else{
			document.getElementById("main_android").style.display = "none";
			document.getElementById("main_mobile").style.display = "none";
	   }			
	 </script>
    <uc1:WebUserControl ID="WebUserControl1" runat="server" />
</form>
</body>
</html>

