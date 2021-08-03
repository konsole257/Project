		<div id="left">
			<ul class="leftMenu">
				<li><a href="/en/"><img id="lm00" src="/en/images/common/lm00_off.gif" width="154" alt="Home" /></a></li>
				<li>
					<a href="/en/aboutus/"><img id="lm01" src="/en/images/common/lm01_off.gif" width="154" alt="About us" /></a><br />
					<div id="lmsub1" class="lmsub">
						<a href="/en/aboutus/index.asp"><img id="lm0101" src="/en/images/common/lm0101_off.gif" width="154" alt="History" /></a><br />
						<a href="/en/aboutus/message.asp"><img id="lm0102" src="/en/images/common/lm0102_off.gif" width="154" alt="Message from president" /></a><br />
						<!-- 20120320 Organization 메뉴 제거 요청 -->
						<!--a href="/en/aboutus/organization.asp"><img id="lm0103" src="/en/images/common/lm0103_off.gif" width="154" alt="Organization" /></a><br /-->
					</div>
				</li>
				<li><a href="/en/life/index_2019.asp"><img id="lm02" src="/en/images/common/lm02_off.gif" width="154" alt="THE WAY OF LIFE" /></a></li>
				<li><a href="/en/seb/index_2019.asp"><img id="lm03" src="/en/images/common/lm03_off.gif" width="154" alt="Special Elucidation of Bible" /></a></li>
				<li><a href="/en/nss/index_2019.asp"><img id="lm04" src="/en/images/common/lm04_off.gif" width="154" alt="New Spiritual Song" /></a></li>
				<li><a href="/en/vod/"><img id="lm05" src="/en/images/common/lm05_off.gif" width="154" alt="VOD" /></a></li>
				<li><a href="/en/archive/"><img id="lm06" src="/en/images/common/lm06_off.gif" width="154" alt="Archive" /></a></li>
				<li><a href="/en/board/"><img id="lm07" src="/en/images/common/lm07_off.gif" width="154" alt="Board" /></a></li>
<!--
				<li><a href="/en/contactus/"><img id="lm08" src="/en/images/common/lm08_off.gif" width="154" alt="Contact us" /></a></li>
-->
			</ul>
		</div>
<script language="javascript">
<!--
//디렉토리명 뽑기
var xurl = document.location.href;
var yurl = xurl.split("/");
if ( yurl[3] != "" ){
	var sub_dir = yurl[4].split(".");
	var sub_dir = sub_dir[0].toLowerCase();
}
if ( yurl[4] != "" ){
	if ( sub_dir != "index" ){
		var sub_file = yurl[5].split(".");
		var sub_file = sub_file[0].toLowerCase();
	}
}
function leftmenuON(){
	if ( yurl[3] != "" ){
		if ( sub_dir == "aboutus" ){
			document.getElementById("lm01").src = "/en/images/common/lm01_on.gif";
			document.getElementById("lmsub1").style.display = "block";
			if ( sub_file == "" || sub_file == "index" ){
				document.getElementById("lm0101").src = "/en/images/common/lm0101_on.gif";
			}else if ( sub_file == "message" ){
				document.getElementById("lm0102").src = "/en/images/common/lm0102_on.gif";
			}else if ( sub_file == "organization" ){
				document.getElementById("lm0103").src = "/en/images/common/lm0103_on.gif";
			}
		}else if ( sub_dir == "life" ){
			document.getElementById("lm02").src = "/en/images/common/lm02_on.gif";
		}else if ( sub_dir == "seb" ){
			document.getElementById("lm03").src = "/en/images/common/lm03_on.gif";
		}else if ( sub_dir == "nss" ){
			document.getElementById("lm04").src = "/en/images/common/lm04_on.gif";
		}else if ( sub_dir == "vod" ){
			document.getElementById("lm05").src = "/en/images/common/lm05_on.gif";
		}else if ( sub_dir == "archive" ){
			document.getElementById("lm06").src = "/en/images/common/lm06_on.gif";
		}else if ( sub_dir == "board" ){
			document.getElementById("lm07").src = "/en/images/common/lm07_on.gif";
		}else if ( sub_dir == "contactus" ){
			document.getElementById("lm08").src = "/en/images/common/lm08_on.gif";
		}
	}
}
leftmenuON();
//-->
</script>