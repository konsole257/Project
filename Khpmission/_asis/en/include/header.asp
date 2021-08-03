<script type="text/javascript">
<!--
	function sendMail(as){
		window.open('/mail.aspx?address='+as,"_blank","width=520px,height=450px")
	}


	
function keypressed(e) {

  
  if (e == null) {
    //alert(event.keyCode);
    if(event.keyCode == 122 || event.keyCode == 17 || event.keyCode == 18 || event.keyCode == 112 || event.keyCode == 25 || event.keyCode == 21  || event.keyCode == 27 || event.keyCode == 154) {
      alert('이 키를 사용하실 수 없습니다.');
      return false;
    }
  }
  else {
	 //alert(e.keyCode);
    if(e.keyCode == 122 || e.keyCode == 17 || e.keyCode == 18 || e.keyCode == 112 || e.keyCode == 25 || e.keyCode == 21  || e.keyCode == 27 || event.keyCode == 154) {
      alert('이 키를 사용하실 수 없습니다..');
      return false;
    }
  }
}

document.onkeydown = function (e) {

  //alert(event.keyCode)
  if(typeof(e) != "undefined")
    keypressed(e);
  else
    keypressed();
}
//document.oncontextmenu=new Function("return false")

document.ondragstart=new Function("alert('드래그기능을 사용하실 수 없습니다.')");
document.onselectstart =new Function("return false;");




//-->
</script>

	<div id="header">
		<div class="hLogo"><a href="/en/"><img src="/en/images/common/t_logo.jpg" with="230" height="60" alt="The Korea Holy People' s Mission" /></a></div>
		<div class="hMenu">
			<strong>
			<a href="javascript:sendMail('webmaster@khpmission.kr');" style="font-size:11px;font-family: '돋움', Dotum, '굴림', Gulim, AppleGothic, Sans-serif;color:#5a5a5a;">Contact us</a>
			<span class="bar" style="font-size:11px;font-family: '돋움', Dotum, '굴림', Gulim, AppleGothic, Sans-serif;color:#969696;">|</span>
			<a href="/" style="font-size:11px;font-family: '돋움', Dotum, '굴림', Gulim, AppleGothic, Sans-serif;color:#5a5a5a;">KOREAN</a>
			</strong>
		</div>
		<div class="hVisual">
			<img src="/en/images/common/top.jpg" width="850" height="129" alt="The Korea Holy People's Mission" />
		</div>
	</div>
