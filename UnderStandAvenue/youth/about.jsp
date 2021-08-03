<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="youth";
	String path3="about";
	String path4="about";
	String path1tit="STAND";
	String path2tit="YOUTH STAND";
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
	<main id="wrap" class="youth">
		<div class="about">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_youth.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/youth/about.jsp">STANDS</a>
						<a href="/youth/about.jsp">YOUTH STAND</a>
						<a href="/youth/about.jsp">About</a>
						<a href="/youth/about.jsp"><strong>소개</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<div class="txt_group">
						<h2 class="con_tit">YOUTH STAND</h2>
						<p class="con_tit_txt">일하며 배우는 청소년 <strong>일터학교</strong></p>

						<p class="txt1">

						청소년들의 성장과 자립을 위한<br />
						직업 교육 및 취업을 지원합니다.

						</p>

						<p class="txt2">
							유스스탠드는 청소년들이 숨겨진 재능과 소질을 발견하고 <br />
							꿈을 향해 첫 걸음을 내디딜 수 있도록 <br />
							지원하는 생애설계의 장입니다. <br />
							전문 강사진과 체계적인 커리큘럼으로  영상편집, 게임 그래픽 등 <br />
							미래 유망 기술분야와 청소년이 선호하는 바리스타, 제과·제빵, <br />
							가죽공예 등을 교육하고 인턴쉽과 취업을 연계합니다.
						</p>

						<div class="txt3">
							<ul>
								<li>

									청소년들의 꿈과 재능을 키워<br />
									일터에서 <strong>자립할 수 있는 인재로 양성</strong>합니다.

								</li>
							</ul>
						</div>
					</div>

					<!-- 2016-04-07 // -->
					<h3><span>이</span>용안내</h3>
					<dl class="info">
						<dt>문의</dt>
						<dd>070-5038-6826</dd>
					</dl>
					<!-- // 2016-04-07 -->

					<h3><span>교</span>육 진행 과정</h3>
					<ol class="process">
						<li class="select">
							<dl>
								<dt>모집 및 선발</dt>
								<dd>저소득 가정, 시설 청소년, 학교 밖<br />청소년 등 대상</dd>
								<dd>서류/면접 심사 선발</dd>
							</dl>
						</li>
						<li class="edu">
							<dl>
								<dt><span>01</span> 기초교육</dt>
								<dd>
								<ul>
									<li>직업 적성 찾기</li>
									<li>오리엔테이션</li>
									<li>문화예술캠프</li>
								</ul>
							</dl>

							<dl>
								<dt><span>02</span> 전문교육</dt>
								<dd>
									<ul>
										<li>기초 직무 교육</li>
										<li>전문분야 직업 훈련</li>
										<li>체계적 학사 관리</li>
										<li>기초인문교육</li>
									</ul>
								</dd>
							</dl>

							<dl>
								<dt><span>03</span> 진로교육</dt>
								<dd>
									<ul>
										<li>인턴쉽 프로그램</li>
										<li>UNDER STAND AVENUE 사업장 취업</li>
										<li>후원사 사업장 연계</li>
									</ul>
								</dd>
							</dl>
						</li>
						<li class="infra">
							<dl>
								<dt>지원 인프라</dt>
								<dd>전담 멘토링제 운영</dd>
								<dd>교육생 커뮤니티 구축</dd>
								<dd>대학생 서포터즈 운영</dd>
								<dd>관내 기관/학교 협력</dd>
							</dl>
						</li>
					</ol>
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
