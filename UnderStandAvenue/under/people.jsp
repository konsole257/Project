<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="under";
	String path2="people";
	String path1tit="ABOUT";
	String path2tit="함께 만드는 사람들";
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

		<div class="people">
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
						<a href="/under/people.jsp"><strong>함께 만드는 사람들</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">함께 만드는 사람들</h2>

					<p class="con_tit_txt">언더스탠드에비뉴는 공공과 기업, 비영리단체의 새로운 상생 모델입니다.</p>

					<ul class="partner">
						<li class="shinhan"><a href="https://www.shinhan.com/index.jsp" target="_blank">롯데면세점</a>디지털 인프라등<br>금융 인프라를 활용한<br>혁신 취창업 플랫폼 조성</li>
						<li class="arcon"><a href="http://arcon.or.kr/" target="_blank">ARCON</a>청년 스타트업 교육 및 인큐베이션,<br>공간 콘텐츠 기획 및 운영</li>
						<li class="seongdong"><a href="http://www.sd.go.kr/sd/sso.do?op=removeLoginSession" target="_blank">성동구</a>일자리 창출 행정 운영</li>
					</ul>
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
