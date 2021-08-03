<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="dodream";
	String path2="startup";
	String path3="course";
	String path4="innovative";
	String path1tit="DO DREAM";
	String path2tit="청년START業";
	String path3tit="OZ Course";
	String path4tit="Innovative Entrepreneur";
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

		<div class="innovative">
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
						<a href="/startup/digital.jsp">청년 START業</a>
						<a href="/startup/digital.jsp">OZ Course</a>
						<a href="/startup/innovative.jsp"><strong>Innovative Entrepreneur</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">Innovative Entrepreneur</h2>

					<p class="con_tit_txt">
						프로젝트를 통해 창업 희망자의 아이디어를 발굴하고 역량을 강화하여<br>
						<strong>스타트업 배출을 지원하는 프로그램</strong>입니다.
					</p>

					<p class="txt1">
						창업 희망팀이 아이디어를 바탕으로 개인과 팀의 형태로<br>
						PBL(Project Based Learning) 에 참여하고, 코치와 전문 멘토는 교육을 진행하는<br>
						12주 집중 역량 강화 교육 입니다.
					</p>

					<div class="txt2">
						<p>
						전문 분야에 해당하는 심화 교육(PBL) 은 코치 주도로 진행되며, 주차별<br>
						마일스톤 관리와 코치진 면담&amp;미팅을 통해 지원금 제공여부가<br>
						결정됩니다. PBL 이외에도 분야에 관계없이 창업에 필요한 지식을 선택형<br>
						교육 강좌로 개설하여 운영합니다.
						</p>

						<p>
						이 과정을 통해 창업팀은 현재 가진 창업 아이디어를 트렌드와 소비자에<br>
						맞게 빠른 속도로 변화하며 피보팅 할 수 있는 역량을 키우게 됩니다.<br><br>

						12주 과정 이후 청년들이 PT 에 참여할 수 있으며, 이 중 우수팀은 후속<br>
						과정인 Incubating center 에 입주할 수 있습니다.
						</p>
					</div>

					<div class="img_area">
						<img src="/avenueCom/images/sub/startup_innovative_img1.jpg" alt="" class="img1">
						<img src="/avenueCom/images/sub/startup_innovative_img2.jpg" alt="" class="img2">
					</div>

					<strong class="caution">LAB별 세부 과정은 예시로 표기된 내용이며, 교육생들의 수요 또는 코치진의 결정사항에 따라 변동 될 수 있습니다.</strong>
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
