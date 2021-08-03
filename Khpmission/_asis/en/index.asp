<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<!--#include virtual="/en/include/title.asp"-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="/en/images/include/css/main.css" type="text/css" rel="STYLESHEET">
	<!--
	<script language="JavaScript" src="/en/images/include/js/script.js"></script>
	-->

	
<%
If Request("pc") = "" Then

%>


<script type="text/javascript">
<!--
	//모바일 기기에서 접속시 모바일 메인페이지로 이동
	if (navigator.userAgent.match (/iPhone|iPod|iPad/i) != null)
	{ 
		location.href = "/mobile/eng/index.asp"	;
	}
	else if (navigator.userAgent.match(/Android|android/) != null)
	{ 
		location.href = "/mobile/eng/index.asp"	;	
	}	
	 
//-->
</script>
<%
End If 
%>

</head>
<body>

<div id="warp">

	<!-- [s]HEADER -->
	<!--#include virtual="/en/include/header.asp"-->
	<!-- [e]HEADER -->

	<!-- [s]MIDDLE -->
	<div id="middle">

		<!-- [s]LEFT -->
		<!--#include virtual="/en/include/left.asp"-->
		<!-- [e]LEFT -->

		<!-- [s]CONTENT -->
		<div id="content">
			<div class="ConBox">
				<div class="mainImg"><img src="/en/images/main/main_img.jpg" width="252" height="299" alt="" /></div>
				<p class="mainTxt3">What is the purpose of man's life?</p>
				<div class="mainTxt4">
					<ul>
						<li>Man was born without his knowledge.</li>
						<li>Why does man who is called the lord of creature <br />commit sins and live in pain through his whole life <br />for all that even humble beasts live without pain? </li>
						<li>Finally, where shall man go when he is dead?</li>
						<li>What is the world after death detailedly? etc.</li>
					</ul>
					<br />
					If someone wants to know about the above questions <br />
					with thirst, we will explain them based the following points:<br />
					<br />
					<ul>
						<li>The basic purpose for the creation of man</li>
						<li>The elements of man's creation</li>
						<li>Functions of soul, spirit and flesh</li>
						<li>Existence of the Divine and evil spirit</li>
						<li>The relation between man's soul and spirit and spirit of evil and the Spirit of Divine</li>
						<li>Man's free will and the formation of soul and spirit</li>
						<li>Accumulation of the factor of sin based on man's covetousness</li>
						<li>The Redemption for man's sin by the Creator</li>
						<li>Extinction of man's factor of sin and the new creation of soul and spirit</li>
						<li>Liberation from sin and sufferings</li>
						<li>The world after death seen through the functions of man's soul and spirit</li>
					</ul>
				</p>
				<p class="mainBtn1">
					<a href="/en/life/index_2019.asp"><img src="/en/images/main/btn_life.gif" alt="THE WAY OF LIFE" /></a>
				</p>
			</div>
		</div>
		<!-- [e]CONTENT -->

	</div>
	<!-- [e]MIDDLE -->

	<!-- [s]FOOTER -->
	<!--#include virtual="/en/include/footer.asp"-->
	<!-- [e]FOOTER -->

</div>

</body>
</html>
