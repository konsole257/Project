<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="heart";
	String path3="about";
	String path4="about";
	String path1tit="STAND";
	String path2tit="HEART STAND";
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
	<main id="wrap" class="heart">

		<div class="about">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_heart.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/heart/about.jsp">HEART STAND</a>
						<a href="/heart/about.jsp">About</a>
						<a href="/heart/about.jsp"><strong>소개</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<div class="txt_group">
						<h2 class="con_tit">HEART STAND</h2>
						<p class="con_tit_txt">행복한 삶을 위한 <strong>힐링 공간</strong></p>

						<p class="txt1">

						생활 행복지수를 높이기 위한<br />
						맞춤형 힐링 서비스를 제공합니다.

						</p>

						<p class="txt2">
							하트스탠드는 건강한 가정과 일터를 꿈꾸며 다양한 힐링 서비스를<br />
							 지원합니다. 또한 바쁜 현대인의 몸과 마음이 균형을 찾을 수 있도록 <br />
							‘Arts-based Training’ 과 통합예술 스트레스관리 프로그램을 운영합니다. <br />
							지친 몸과 마음을 다독이는 힐링의 시간으로 행복한 내일을 채워갑니다.

						</p>

						<ul class="txt3">
							<li><strong>기업/ 성인/ 아동/ 가족</strong> 프로그램으로 구성</li>
							<li><strong>스트레스 관리, 몸과 마음의 긴장과 피로 이완,<br />가족관계 강화</strong> 등 하트스탠드만의 특화된 프로그램 구성</li>
							<li><strong>예술치료, HRD/EAP, 교육컨설팅/코칭</strong> 등의 효과적 요소를 결합해 적용</li>
						</ul>
					</div>

					<h3><span>이</span>용안내</h3>
					<dl class="info">
						<dt>이용시간</dt>
						<dd>화, 목 10:00 ~ 18:00 / 수, 금, 토, 일 10:00 ~ 21:00</dd>

						<dt>휴무일</dt>
						<dd>월요일</dd>

						<dt>문의</dt>
						<dd>02-2135-8184</dd>
					</dl>

					<div class="service">
						<dl class="time">
							<dt><strong>Time Block</strong> 시간제 무료 상담 서비스</dt>
							<dd>
								예약 없이 현장 방문객 대상으로 무료 진행
							</dd>
							<dd>
								복지의 사각지대, 젊은 청년층 등을 대상으로 상담 및<br />
								프로그램 비용에 대한 부담을 완화하여 문턱 낮춤
							</dd>
						</dl>

						<dl class="happy">
							<dt><strong>Happy Block</strong> 행복을 만드는 사람들을 위한 서비스</dt>
							<dd>
								지역사회를 위해 헌신하는 사회복지사와 상담사들을<br />
								대상으로 마음돌봄이 프로그램 개발 및 확대
							</dd>
							<dd>
								지역사회 내 육아 스트레스를 경험하는 보호자를 위한<br />
								오픈 클래스 진행
							</dd>
						</dl>

						<dl class="learning">
							<dt><strong>Learning Block</strong> 배움의 터에서 함께 성장 독려</dt>
							<dd>
								심리 상담 및 예술 관련 심리정서 체험 프로그램의 저변<br />
								확대를 위한 교양 강좌 연구 및 개설
							</dd>
							<dd>
								국•내외 전문 교수 및 예술인과의 협업을 통해 창의적<br />
								프로그램 개발, 심리정서 치유 전문성 향상 및 동반 성장
								도모

							</dd>
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
