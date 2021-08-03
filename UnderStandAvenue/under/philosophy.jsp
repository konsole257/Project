<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="under";
	String path2="philosophy";
	String path1tit="ABOUT";
	String path2tit="철학";
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

		<div class="philosophy">
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
						<a href="/under/philosophy.jsp"><strong>철학</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">철학</h2>
					<p class="con_tit_txt">언더스탠드에비뉴만의 철학을 소개합니다.</p>

					<dl class="mission">
						<dt>Mission</dt>
						<dd>
							우리는 모든 사람이 소명을 발견하고 자립, 성장할 수 있도록<br />
							지속 가능한 공유가치를 창출하여 인류 사회에 기여한다.
						</dd>
					</dl>

					<q class="txt1">당신을 이해합니다. 꿈을 응원합니다. 함께 일어섭니다.</q>

					<dl class="vision">
						<dt>VISION</dt>
						<dd>
							2020최고의 창조적 공익 플랫폼
							<ul>
								<li>도전</li>
								<li>나눔</li>
								<li>자립</li>
							</ul>
						</dd>
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
