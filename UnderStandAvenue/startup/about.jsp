<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="dodream";
	String path2="space";
	String path3="about";
	String path4="";
	String path1tit="DO DREAM";
	String path2tit="DO DREAM SPACE";
	String path3tit="소개";
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
	<main id="wrap" class="space">

		<div class="about">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_space.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/startup/about.jsp">DO DREAM</a>
						<a href="/startup/about.jsp"><strong>DO DREAM SPACE</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">DO DREAM SPACE</h2>

					<p class="con_tit_txt">신행은행의 디지털 인프라와 노하우와 체계적인 스타트업 교육,<br>고용노동부의 든든한 서포트로 청년들이 평생의 業을 찾도록 지원합니다.</p>

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
