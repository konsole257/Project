<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="power";
	String path3="about";
	String path4="about";
	String path1tit="STAND";
	String path2tit="POWER STAND";
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
	<main id="wrap" class="power">

		<div class="about">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_power.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/power/about.jsp">POWER STAND</a>
						<a href="/power/about.jsp">About</a>
						<a href="/power/about.jsp"><strong>소개</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<div class="txt_group">
						<h2 class="con_tit">POWER STAND</h2>
						<p class="con_tit_txt">꿈꾸는 청년들의 <strong>희망공간</strong></p>

						<p class="txt1">
							청년들의 새로운 아이디어 발굴과<br />
							지역 공동체의 창업을 키웁니다
						</p>

						<p class="txt2">
							파워스탠드는 청년들의 반짝이는 아이디어가 구현되고 새로운 가치로<br />
							이어질 수 있도록 제반 환경을 지원하는 혁신적인 청년창업 허브공간입니다.<br />
							창업교육, 컨설팅, 기술, 멘토링, 기술정보, 네트워킹 지원과 Co-working<br />
							space, 커뮤니티 센터로 청년사업가들의 시너지를 만들어 갑니다.
						</p>

						<ul class="txt3">
							<li>혁신형 <strong>창업 플랫폼 커뮤니티 센터</strong></li>
							<li>공간과 정보를 공유하는 <strong>Co-working Space</strong></li>
							<li>창업.창직 전문 <strong>지원 컨설팅</strong></li>
							<li><strong>네트워크 형성, 기술지원, 멘토링</strong></li>
						</ul>
					</div>

					<h3><span>이</span>용안내</h3>
					<dl class="info">
						<dt>이용시간</dt>
						<dd>00:00 ~ 24:00</dd>

						<dt>휴무일</dt>
						<dd>연중무휴</dd>

						<dt>문의</dt>
						<dd>02-2135-8185</dd>
					</dl>

					<div class="list">
						<dl class="idea">
							<dt>
								혁신적인 아이디어 및 기술을<br />
								공유하는 창조적 플랫폼
							</dt>
							<dd>예비창업자, 스타트업, 투자자의 교류 협업공간</dd>
							<dd>Co-working Space, IT를 활용한 창업과 협력, 상생 공간</dd>
							<dd>카페형 사무 및 회의 공간, 워크숍이 가능한 회의실 등 개방형 공유 공간</dd>
						</dl>

						<dl class="valley">
							<dt>
								지역 밀착형 융복합<br />
								창업밸리 조성
							</dt>
							<dd>특허 기술 상용화 플랫폼 연계 특허기술 정보 활용</dd>
							<dd>소셜디자인 기술혁신 LAB 연계, 창업기업들의 시제품 제작 지원</dd>
							<dd>민.관.산.학 협력을 통한 맞춤형 사업화 지원</dd>
						</dl>
					</div>
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
