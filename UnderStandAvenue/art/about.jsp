<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="art";
	String path3="about";
	String path4="about";
	String path1tit="STAND";
	String path2tit="ART STAND";
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
	<main id="wrap" class="art">

		<div class="about">
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
						<a href="/art/about.jsp">About</a>
						<a href="/art/about.jsp"><strong>소개</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<div class="txt_group">
						<h2 class="con_tit">ART STAND</h2>
						<p class="con_tit_txt">크리에이터의 <strong>예술 정거장</strong></p>

						<!-- -->
						<p class="txt1">
							예술가와 콘텐츠 크리에이터를 지원하고<br />
							지역시민들과 즐거운 문화를 나눕니다.
						</p>

						<p class="txt2">

							아트스탠드는 누구나 예술을 쉽게 즐길 수 있는 문턱 낮은 문화공간입니다.<br />
							동시에 크리에이터의 자유로운 상상이 실현될 수 있도록 돕고 가능성 있는<br />
							문화콘텐츠를 국내외로 소개하고 연결하는 예술정거장입니다.<br />
							전시, 공연, 강연, 영상콘텐츠, 파티 등 다양한 형태로<br />
							일상 가까이에 있는 예술을 나눕니다.

						</p>

						<ul class="txt3">
							<li>누구나 쉽게 참여할 수 있는 <strong>일상예술공간</strong></li>
							<li>국내외 크리에이터들의 <strong>신작 소개 무대</strong></li>
							<li><strong>융복합 미디어 콘텐츠</strong>의 새로운 시도</li>
							<li>문화예술, 인문과학을 이야기하는 <strong>지식공유 콘서트</strong></li>
						</ul>
					</div>

					<h3><span>이</span>용안내</h3>
					<dl class="info">
						<dt>이용시간</dt>
						<dd>주중 11:00 ~ 21:00 / 주말 11:00 ~ 20:00<span>프로그램별 상이</span></dd>

						<dt>휴무일</dt>
						<dd>월요일</dd>

						<dt>문의</dt>
						<dd>02-2135-8182</dd>
					</dl>
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
