<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="dodream";
	String path2="startup";
	String path3="incubation";
	String path4="";
	String path1tit="DO DREAM";
	String path2tit="청년START業";
	String path3tit="Incubation Center";
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
	<main id="wrap" class="startup">

		<div class="incubation">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_startup.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/startup/about.jsp">DO DREAM</a>
						<a href="/startup/digital.jsp">OZ START業</a>
						<a href="/startup/incubation.jsp"><strong>Incubation Center</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">Incubation Center</h2>

					<p class="con_tit_txt">선발된 팀의 역량 강화를 위한 <strong>인큐베이션 및 후속 지원 프로그램</strong>입니다.</p>

					<p class="txt1">
					스타트업의 사업계획을 점검하고 플랫폼·제품·서비스를 시연하며<br>
					자생력을 강화할 수 있는 프로그램 입니다.
					</p>

					<div class="txt2">
						<p>
						교육부터, 출발, 청년창업팀의 장단점을 명확히 알고있는 전문 코치가<br>
						재무적 투자유치 뿐만 아니라 정보 교류, 인적 자원발굴,<br>
						데모데이 참여 등 다양한 기회를 연계하고 육성을 지원합니다.
						</p>

						<p>
						또한 Incubation Center 내 우수팀에게는 신한은행의 후속 지원(대출,<br>
						투자 등)을 통해 스케일 업과 엑시트가 이루어질 수 있도록 원스탑 서비스를<br>
						제공합니다.
						</p>
					</div>

					<img src="/avenueCom/images/sub/startup_incubation_img.jpg" alt="" class="img">
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
