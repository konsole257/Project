<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="under";
	String path2="area";
	String path1tit="ABOUT";
	String path2tit="소개";
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

		<div class="area">
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
						<a href="/under/about.jsp"><strong>공간안내</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">공간안내</h2>
					<p class="con_tit_txt">언더스탠드에비뉴를 즐겁게 즐길 수 있는 가이드 맵입니다.</p>

					<!-- -->
          <img src="/avenueCom/images/sub/under_area_map.gif" alt="" />
          <ul class="hide">
			  <li>두드림 금융 컨설팅룸</li>
			  <li>라이프벤처 SOHO/청년</li>
			  <li>라이프벤처 플랫폼 WALKSHOP</li>
			  <li>청년 Station / SOHO사관학교 / 푸드테크 랩</li>
			  <li>Co-working Space / 빅데이터 전문 센터 / 회의실</li>
			  <li>아트스탠드</li>
			  <li>BRINNER</li>
			  <li>Co-working Cafe</li>
			  <li>카페 서울숲 / 엄마손만두 소풍</li>
			  <li>화장실</li>
			  <li>소셜랩</li>
			  <li>DOODLE SHOP</li>
			  <li>파워스탠드 다목적홀, 팀협업실</li>
		  </ul>

          <%-- <p class="txt">
            언더스탠드에비뉴는 3,966.94㎡(약 1,200평) 공간에 116개의 컨테이너로 조성되었습니다.<br />
            유스스탠드(YOUTH STAND), 하트스탠드(HEART STAND), 맘스탠드(MOM STAND)<br />
            아트스탠드(ART STAND), 파워스탠드(POWER STAND), 소셜스탠드(SOCIAL STAND)<br />
            오픈스탠드(OPEN STAND) 총 일곱 개의 각기 다른 가치를 담은 스탠드로 구성되어 있습니다.
          </p> --%>
          <!-- -->

				</div>

			</section>

			<hr />

		</div>

	</main>
	<!-- //wrap -->

	<!-- footer -->
	<%@ include file="/avenueCom/_include/_footer.jsp" %>
	<!-- //footer -->
</body>
</html>
