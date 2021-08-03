<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="heart";
	String path3="program";
	String path4="program";
	String path1tit="STAND";
	String path2tit="HEART STAND";
	String path3tit="PROGRAM";
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
	<main id="wrap" class="heart">

		<div class="program">
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
						<a href="/heart/Program.jsp"><strong>Program</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">Program</h2>
					<p class="con_tit_txt">하트스탠드만의 프로그램을 알려드립니다.</p>

					<div class="method">
						<a href="/heart/program_company_list.jsp">
							<dl class="company">
								<dt>기업 프로그램</dt>
								<dd>
									스트레스 해소와 사회적•정서적 지지를 필요로 하는<br />직장인들을 위한 예술 기반의 맞춤형 프로그램입니다.
								</dd>
							</dl>
						</a>

						<a href="/heart/program_adult_list.jsp">
							<dl class="adult">
								<dt>성인 프로그램</dt>
								<dd>
									다양한 예술 프로그램과 권위있는 심리 전문가의 강의를 통해<br />나 자신을 되돌아보며 일상에 활력을 주는 프로그램입니다.
								</dd>
							</dl>
						</a>

						<a href="/heart/program_child_list.jsp">
							<dl class="child">
								<dt>아동 프로그램</dt>
								<dd>
									창의적인 놀이공간에서 즐거운 경험을 하며 자연스럽게<br />발달연령에 맞는 정서적, 사회적 기술을 학습하는 프로그램입니다.
								</dd>
							</dl>
						</a>

						<a href="/heart/program_family_list.jsp">
							<dl class="family">
								<dt>가족 프로그램</dt>
								<dd>
									가족 구성원으로서 함께하는 즐거움을 경험하면서 더욱 친밀한<br />가족관계 형성을 독려하는 가족 행복지수 향상 프로그램입니다.
								</dd>
							</dl>
						</a>
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
