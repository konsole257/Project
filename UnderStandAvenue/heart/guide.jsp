<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="heart";
	String path3="request";
	String path4="guide";
	String path1tit="STAND";
	String path2tit="HEART STAND";
	String path3tit="예약/신청하기";
	String path4tit="이용안내";
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

		<div class="guide">
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
						<a href="/heart/guide.jsp">예약/신청하기</a>
						<a href="/heart/guide.jsp"><strong>이용안내</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">이용안내</h2>
					<p class="con_tit_txt">하트스탠드 프로그램 이용 방법을 알려드립니다.</p>

					<div class="method">
						<dl class="call">
							<dt>01.<br />전화 예약</dt>
							<dd>
								전화로 프로그램 또는 상담을 예약합니다. (02-2135-8184)<br />
								(평일 및 주말 오전 10시 ~ 오후 6시, 월요일 휴무)
							</dd>
						</dl>

						<dl class="pre">
							<dt>02.<br />Pre-Meeting</dt>
							<dd>
								현 상태를 파악하고 필요 시 심리검사를 진행합니다.<br />
								(기업의 경우 사전 인터뷰를 통해 프로그램의 목표를 설정합니다.)
							</dd>
						</dl>


						<dl class="progress">
							<dt>03.<br />프로그램 진행</dt>
							<dd>
								정해진 시간에 프로그램 또는 상담을 진행합니다.<br />
								(기업 프로그램의 경우 하트스탠드가 직접 방문 가능합니다.)
							</dd>
						</dl>


						<dl class="after">
							<dt>04.<br />After-Meeting</dt>
							<dd>목표 달성을 점검하고 앞으로의 방향을 함께 논의합니다</dd>
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
