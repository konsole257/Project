<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="under";
	String path2="about";
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

		<div class="about">
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
						<a href="/under/about.jsp"><strong>소개</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">UNDER STAND AVENUE</h2>

					<p class="con_tit_txt hide">창조적 <strong>공익 문화 공간</strong></p>

					<div class="txt1">
						<dl>
							<dt>Understand</dt>
							<dd>이해</dd>
						</dl>
						<span>=</span>
						<dl>
							<dt>Under</dt>
							<dd>아래에</dd>
						</dl>
						<span>+</span>
						<dl>
							<dt>Stand</dt>
							<dd>서다</dd>
						</dl>
					</div>

					<div class="txt3">
						<p>
							<strong>언더 스탠드 에비뉴</strong>가 <strong>신한은행과 고용노동부와 만나</strong> 청년 창업가들의 <br>꿈을 키우고 실현시키는 <strong>혁신적인 창업 ∙ 창직 플랫폼</strong>으로 새롭게 <br>단장합니다.<br><br>
							자신이 좋아하고 잘하는 일을 하며, 사회에 기여하는 미래 인재를 키우기<br>위해 <strong>창업 ∙ 창직 교육</strong>부터 시장 테스트, 금융 및 투자 지원, 판매 유통 <br>지원까지 <strong>원스톱 통합 솔루션</strong>을 제공합니다.<br><br>
							또한 스타트업 · 중소기업 구인 구직 매칭, 취업 박람회 개최 등을 통해 <br>취업을 희망하는 청년을 응원합니다.
						</p>
						<p>
							더불어 사회적 가치를 추구하는 청년 창업가와 함께 어르신 일자리 마련 및 <br>취약 계층 고용도 지속하여 따뜻한 성장을 대표하는 <strong>일자리 창출 플랫폼</strong> <br>으로서의 역할도 수행합니다.
							사람 중심의 기술, 사람을 즐겁게 하는 예술을 <br>통해 청년은 일하고 시민은 즐기는 새로운 문화 공간도 만들어집니다.<br><br>
							<strong>언더스탠드에비</strong>뉴에서 다양한 가치를 만나고 경험을 나누며 행복한 시간을<br>보내시길 희망합니다.
						</p>
					</div>

					<div class="space">
						<div class="shinhan">
							<img src="/avenueCom/images/sub/space_about_shinhan.jpg" alt="">

							<p class="txt">
								신한 두드림 스페이스는 신행은행의 디지털 인프라와 노하우, 체계적인 스타트업 교육으로 청년들이 평생의 業을 찾도록 지원합니다.
							</p>

							<ul>
								<li>
									<span>OZ START 業</span>

									<p>창업을 지원하는 역량 교육, 인큐베이션, 투자를 한 공간에서 원스탑으로 지원하는 프로그램입니다.</p>
								</li>
								<li>
									<span>두드림<br>금융 컨설팅룸</span>

									<p>디지털 디스플레이 기기에서 예약 및 <br>대출상담, 전문 컨설턴트 등 고객 중심적 <br>Self Banking 서비스를 제공합니다.</p>
								</li>
								<li>
									<span>성공<br>두드림 아카데미</span>

									<p>SOHO 자영업자를 대상으로 고객관리, <br>금융, 경영, 홍보마케팅 등을 교육하고<br>네트워킹을 지원하여 자영업자의 자생력 강화와 성공을 돕습니다.</p>
								</li>
								<li>
									<span>데이터<br>이노베이션 센터</span>

									<p>신한은행의 금융 빅데이터와 아마존 <br>웹서비스의 퍼블릭 클라우드 서비스를 <br>결합하여 연구기회를 제공합니다.</p>
								</li>
							</ul>
						</div>

						<div class="moel">
							<img src="/avenueCom/images/sub/space_about_moel.jpg" alt="">

							<p class="txt">
								고용노동부와 함께 청년들의 삶을 응원합니다.
							</p>

							<ul>
								<li>
									<span>종합상담</span>

									<p>청년 정책, 취업, 주거 · 복지  · 건강 등 청년들을 위한 종합 상담을 진행합니다.</p>
								</li>
								<li>
									<span>취업정보 제공</span>

									<p>
										청년내일채움공제, 청년취업아카데미 등<br>
										청년정책 관련 리플렛, 가이드북, 사례집이<br>
										비치되어 있습니다. <br>
										스크린을 통해 실시간 채용 정보를 확인하고,<br>
										청년 워크넷에서 청년 정책, 채용관련 상세<br>
										정보를 얻을 수 있습니다.
									</p>
								</li>
								<li>
									<span>성공<br>두드림 아카데미</span>

									<p>청년 스테이션 1층 라운지는 누구에게나<br> 열려 있습니다. <br>청년들에게 도움이 되는 각종 도서를 읽고,<br> 편안하게 모임을 할 수 있습니다.</p>
								</li>
							</ul>
						</div>
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
