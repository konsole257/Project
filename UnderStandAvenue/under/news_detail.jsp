<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="under";
	String path2="news";
	String path1tit="ABOUT";
	String path2tit="언론보도";
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

		<div class="news">
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
						<a href="/under/news.jsp"><strong>언론보도</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">UNDER STAND AVENUE</h2>

					<p class="con_tit_txt">언더스탠드에비뉴 언론&amp;보도자료 현황을 알려드립니다.</p>

					<!-- -->
					<article class="bbs detail type1">
						<header>
							<h4 class="subject">제목이 표시됩니다.</h4>
							<time class="date">2016.01.10</time>
						</header>

						<div class="bbs_content">
							<div class="txt_viewer">
								<p>
									출처 : 웹데일리 <br>
									일자 : 2018-01-22<br><br>

									[웹데일리=이지웅 기자] 청년 창작자를 위한 언더스탠드에비뉴 아트스탠드 2018년 하절기 무료대관 공모를 오는 29일부터 내달 28일까지 실시한다. <br>
									서울숲 진입로에 위치한 언더스탠드에비뉴 아트스탠드는 지난 2016년부터 ‘문턱 낮은 문화공간’이라는 모토 아래 시민들에게 연극, 콘서트, 전시 등 다양한 장르의 문화예술 콘텐츠를 <br>
									선보이고 있다. 또, 전시와 공연이 모두 가능한 화이트큐브 형태의 공간으로 창작자에게는 다양한 시도를 해볼 수 있는 좋은 기회를 제공하고 있다.<br>
									언더스탠드에비뉴 아트스탠드 공간 지원은 만 20~39세 청년 창작자를 중심으로 이루어질 예정이다. 2018년 6월~8월 내 전시 또는 공연이 가능한 창작자에 한한다. 선정대상에게는 <br>
									전시와 공연이 가능한 공간과 더불어 공간 내 부대시설과 장비를 무상으로 지원한다.<br>
									한편, 언더스탠드에비뉴 아트스탠드 공간지원 모집 기간은 1월 29일부터 2월 28일까지다. 서류심사를 거쳐 올해 6월~8월 중 공간을 지원받을 창작자를 선정할 예정이다. 자세한 정보는 <br>
									언더스탠드에비뉴 홈페이지에서 확인할 수 있다.
								</p>

							</div>

						</div>
					</article>

					<div class="btn_area">
						<a href="#" class="midium type4 btn_bbs_list">목록</a>
					</div>

				</div>

			<hr />

		</div>

	</main>
	<!-- //wrap -->

	<!-- footer -->
	<%@ include file="/avenueCom/_include/_footer.jsp" %>
	<!-- //footer -->
</body>
</html>
