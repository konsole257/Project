<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="social";
	String path3="about";
	String path4="about";
	String path1tit="STAND";
	String path2tit="SOCIAL STAND";
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
	<main id="wrap" class="social">

		<div class="about">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_social.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/social/about.jsp">SOCIAL STAND</a>
						<a href="/social/about.jsp">About</a>
						<a href="/social/about.jsp"><strong>소개</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<div class="txt_group">
						<h2 class="con_tit">SOCIAL STAND</h2>
						<p class="con_tit_txt">세상을 바꾸는 <strong>라이프 스타일</strong></p>

						<p class="txt1">
							사회적기업과 청년벤처들이 모여<br>
							새로운 라이프 스타일을 제안합니다.
						</p>

						<p class="txt2">
							소셜스탠드는 가치있는 제품, 의미있는 소비를 제안합니다.<br>
							공정 무역, 친환경, 자연 보호 등을 추구하는<br>
							사회적기업·청년벤처·예술가가 생산하는 차별화된 제품이<br>
							더 많은 사람에게 소개될 수 있도록 다양한 채널의 홍보마케팅과<br>
							경쟁력 강화를 지원합니다.
						</p>

						<ul class="txt3">
							<li>공익적 콘텐츠, 친환경 소재, 리사이클링 등 <strong>착한 소비에 대한<br>접점 마련과 사회적 파급 확산</strong></li>
							<li>콜라보레이션, 워크숍, 컨설팅을 통한 <strong>상품 및 브랜드 업그레이드 지원</strong></li>
						</ul>
					</div>

					<h3><span>이</span>용안내</h3>
					<dl class="info">
						<dt>이용시간</dt>
						<dd>11:00 ~ 20:00</dd>

						<dt>휴무일</dt>
						<dd>연중무휴</dd>

						<dt>문의</dt>
						<dd>02-2135-8179 (WALKSHOP), 02-2135-8190 (OFFICE) , <a href="mailto:walkshop@understandavenue.com" target="_blank">walkshop@understandavenue.com</a> (제휴)</dd>
					</dl>

					<ul class="process">
						<li class="networking">입주 파트너 간<br>네트워킹 형성</li>
						<li class="brand">맞춤형 멘토링을 통한<br>브랜드 강화</li>
						<li class="collabo">입점 파트너&amp;외부 자원과의<br>콜라보 프로젝트 진행</li>
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
