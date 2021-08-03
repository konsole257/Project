<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="art";
	String path3="rent";
	String path4="facility";
	String path1tit="STAND";
	String path2tit="ART STAND";
	String path3tit="대관안내";
	String path4tit="대관시설";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="art">

		<div class="facility">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_art.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/art/about.jsp">ART STAND</a>
						<a href="/art/rent_list.jsp">대관안내</a>
						<a href="/art/facility.jsp"><strong>대관시설</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">대관시설</h2>
					<p class="con_tit_txt">아트스탠드 대관안내입니다.</p>

					<!-- -->
					<p class="txt">
						아트스탠드는 블랙박스 형태의 공간으로<br />
						무대와 객석의 벽을 허물어 다양한 장르가 구현 가능한<br />
						공간입니다.
					</p>

					<div class="facility_area">
						<dl>
							<dt>기본시설</dt>
							<dd>무대 및 객석, 대기실, 창고 등 공통시설 및 공간 (객석 최대 120석)</dd>
						</dl>

						<dl>
							<dt>조명</dt>
							<dd>ETC SourceFour</dd>
							<dd>Marumo Fresnel </dd>
							<dd>Par 64 Light(CP61,62)</dd>
							<dd>GrandMA2 Lite </dd>
							<dd>Atomic 3000 strobo</dd>
							<dd>Bank light</dd>
						</dl>

						<dl>
							<dt>음향</dt>
							<dd>Main Speaker(Mayer Sound) </dd>
							<dd>Monitor Speaker(HK)</dd>
							<dd>Mixing Console(Avid S3)</dd>
							<dd>Wireless microphone(Hand&amp;Pin)</dd>
							<dd>Mac book pro &amp; PRO TOOL</dd>
							<dd>BGM System</dd>
						</dl>


						<dl>
							<dt>영상</dt>
							<dd>Projector(11,000ANSI,FHD)</dd>
							<dd>Screen (300Inch)</dd>
							<dd>Display Monitor</dd>
							<dd>Video Remote</dd>
							<dd>AV Recoding System</dd>
							<dd>HD Camcoder</dd>
						</dl>
					</div>

					<div class="download_area">
						<h3>자료 다운로드</h3>
						<ul class="btn_area">
							<li><a href="/avenueCom/download/facility.pdf" target="_blank" class="midium type1">시설 소개서</a></li>
							<li><a href="/avenueCom/download/ground_plan.pdf" target="_blank" class="midium type1">전체 평면도</a></li>
							<li><a href="/avenueCom/download/sectional_view.pdf" target="_blank" class="midium type1">전체 단면도</a></li>
							<li><a href="/avenueCom/download/grid.pdf" target="_blank" class="midium type1">그리드 도면</a></li>
							<li><a href="/avenueCom/download/lighting_number.pdf" target="_blank" class="midium type1">무대 조명 장치 넘버 도면</a></li>
							<li><a href="/avenueCom/download/lighting_list.pdf" target="_blank" class="midium type1">무대 조명 장치 목록표</a></li>
							<li><a href="/avenueCom/download/lighting_circuit.pdf" target="_blank" class="midium type1">무대 조명 회로도</a></li>
						</ul>
					</div>
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
