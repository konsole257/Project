<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="open";
	String path3="about";
	String path4="about";
	String path1tit="STAND";
	String path2tit="OPEN STAND";
	String path3tit="ABOUT";
	String path4tit="소개";
	%>

	<%@ include file="/avenueCom/_include/_config.jsp" %>
	<link rel="stylesheet" type="text/css" href="/avenueCom/css/sub.css" />

</head>
<body class="sub">
	<!-- header -->
	<%@ include file="/avenueCom/_include/_header.jsp" %>
	<!-- //header -->

	<!-- wrap -->
	<main id="wrap" class="open">

		<div class="about">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_open.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/open/about.jsp">OPEN STAND</a>
						<a href="/open/about.jsp">About</a>
						<a href="/open/about.jsp"><strong>소개</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<div class="txt_group">
						<h2 class="con_tit">OPEN STAND</h2>
						<p class="con_tit_txt">세상을 향한 <strong>아이디어의 첫 발</strong></p>

						<p class="txt1">
							사회적 기업&middot;청년&middot;예술가의<br />첫 걸음을 지원하는 열린 파일럿 공간입니다.
						</p>

						<p class="txt2">
							오픈스탠드는 상생의 생태계를 만들기 위한 반짝이는 아이디어를<br />
							모았습니다. 사회적 문제를 창의적인 아이디어로 해결하고자 도전하는<br />
							사회적기업·청년벤처·예술가들을 지원하는 파일럿 공간으로 이들을<br />
							시장과 연계시켜 스타트업의 디딤돌이 되고자 합니다.
						</p>

						<ul class="txt3">
							<li>
								참신한 콘텐츠와 경쟁력을 가졌으나 <br />
								<strong>초기 인프라가 부족한 창업가들에게 팝업 공간 지원</strong>
							</li>
							<li><strong>경쟁력 테스트 및 창업의 기회 제공</strong></li>
						</ul>
					</div>

					<h3><span>이</span>용안내</h3>
					<dl class="info">
						<dt>이용시간</dt>
						<dd>01BOX : 10:00 ~ 20:00 (그린아워, 마블러스)</dd>
						<dd>02BOX : 11:00 ~ 21:00 (카커메이미, 파이어마커스)</dd>
						<dd>03BOX : 10:00 ~ 22:00 (도트윈)</dd>
						<dd>04BOX : 11:30 ~ 22:30 (딘)</dd>
						<dd>주중 11:00 ~ 19:00 / 주말 및 공휴일 11:00 ~ 21:00 (프루스트)</dd>

						<dt>휴무일</dt>
						<dd>연중무휴</dd>

						<dt>문의</dt>
						<dd>02-2135-8179</dd>
					</dl>
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
