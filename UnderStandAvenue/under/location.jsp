<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="under";
	String path2="location";
	String path1tit="ABOUT";
	String path2tit="찾아오시는 길";
	String path3tit="";
	String path4tit="";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="under">

		<div class="location">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_under.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/under/about.jsp">About</a>
						<a href="/under/location.jsp"><strong>찾아오는 길</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">찾아오는 길</h2>
					<p class="con_tit_txt">언더스탠드에비뉴에 오시는 길을 알려드립니다.</p>

					<div class="map" id="map"></div>

					<address>
						<dl>
							<dt>주소</dt>
							<dd>서울 성동구 왕십리로 63</dd>
						</dl>

						<dl>
							<dt>TEL</dt>
							<dd>02-725-5526</dd>
						</dl>

						<dl>
							<dt>E-mail</dt>
							<dd><a href="mailto:info@understandavenue.com">info@understandavenue.com</a></dd>
						</dl>
					</address>

					<div class="traffic">
						<dl class="subway">
							<dt>지하철</dt>
							<dd><span class="number_yellow">분당선</span> <span class="station_yellow">서울숲역</span> <span class="exit_3">3</span> <span>번 출구 1분 거리</span></dd>
							<dd><span class="number_green">2호선</span> <span class="station_green">뚝섬역</span> <span class="exit_8">8</span> <span>번 출구 5분 거리</span></dd>
						</dl>

						<dl class="bus">
							<dt>버스</dt>
							<dd>서울숲 정류장 <span class="bus_b"></span><span>121</span> <span class="bus_g"></span><span>2014,  2224,  2413</span></dd>
						</dl>

						<strong class="important">※ 주차공간은 마련되지 않으니 대중교통 이용을 부탁드립니다.</strong>
						<strong class="important">※ 부득이 자가용을 이용하실 경우 인근 주차장을 이용해 주시길 바랍니다. (유료)<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- 서울숲 공영주차장 : 10분당 300원<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;- 갤러리아 포레 지하주차장 : 10분당 500원</strong>
						<strong class="important">※ 사업제휴는 이메일(<a href="mailto:info@understandavenue.com" target="_blank">info@understandavenue.com</a>) 로 문의 바랍니다.</strong>
					</div>
				</div>


</section>
<script type="text/javascript" src="http://openapi.map.naver.com/openapi/v2/maps.js?clientId=mWFsiaxBhiqGzbUnuosO"></script>
<script type="text/javascript">
var oPoint = new nhn.api.map.LatLng( 37.5435630, 127.0436290);
nhn.api.map.setDefaultPoint('LatLng');
var oMapw = 900, oMaph = 556;
oMapw = $(window).width();
$(document).ready(function(){
	$(window).resize(function() {
		oMapw = $(window).width();
		oMap.setSize(new nhn.api.map.Size(oMapw, oMaph));
	});
});
oMap = new nhn.api.map.Map('map' ,{
	point : oPoint,
	zoom : 11,
	enableWheelZoom : true,
	enableDragPan : true,
	enableDblClickZoom : false,
	mapMode : 0,
	activateTrafficMap : false,
	activateBicycleMap : false,
	minMaxLevel : [ 1, 14 ],
	size : new nhn.api.map.Size(oMapw,oMaph)
});
var oSize = new nhn.api.map.Size(28, 37);
var oOffset = new nhn.api.map.Size(14, 37);
var sIcon = new nhn.api.map.Icon('http://static.naver.com/maps2/icons/pin_spot2.png', oSize, oOffset);
var oMarker1 = new nhn.api.map.Marker(sIcon , {
	point: new nhn.api.map.LatLng( 37.5435630, 127.0436290)
});
oMap.addOverlay(oMarker1);
</script>


			<hr />

		</div>

	</main>
	<!-- //wrap -->

	<!-- footer -->
	<%@ include file="/avenueCom/_include/_footer.jsp" %>
	<!-- //footer -->
</body>
</html>
