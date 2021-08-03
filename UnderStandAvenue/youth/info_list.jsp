<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="youth";
	String path3="info";
	String path4="info";
	String path1tit="STAND";
	String path2tit="YOUTH STAND";
	String path3tit="지원신청";
	String path4tit="모집안내";
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
		<div class="info list">
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
						<a href="/youth/about.jsp">지원신청</a>
						<a href="/youth/recruit.jsp"><strong>모집안내</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">모집안내</h2>
					<p class="con_tit_txt">유스스탠드의 모집 내용을 알려드립니다.</p>

					<!-- -->
					<ul class="method">
						<li class="request">
							<strong><span><span>01.</span>모집</span></strong>
							<ul>
								<li>과정에 따라 별도 공지</li>
							</ul>
						</li>

						<li class="select">
							<strong><span><span>02.</span>신청</span></strong>
							<ul>
								<li>과소속단체 및 기관을 통해 접수<br />(청소년지원센터 꿈드림, 시설, 학교, 시도교육청 등)</li>
							</ul>
						</li>

						<li class="period">
							<strong><span><span>03.</span>선발</span></strong>
							<ul>
								<li>1차 서류 심사, 2차 면접심사</li>
							</ul>
						</li>

						<li class="support">
							<strong><span><span>04.</span>교육</span></strong>
							<ul>
								<li>주 1회 이상(커리큘럼 별 상이)</li>
							</ul>
						</li>
					</ul>

					<ul class="photo_list">
							<!-- 반복영역 // -->
							<li>
								<a href="#">
									<img src="/avenueCom/images/temp/youth_info280x150.jpg" alt="" />
									<strong class="subject">바리스타과정</strong>
									<time class="date">2016.01.30</time>
								</a>
							</li>
							<!-- // 반복영역 -->

							<li>
								<a href="#">
									<img src="/avenueCom/images/temp/youth_info280x150.jpg" alt="" />
									<strong class="subject">바리스타과정</strong>
									<time class="date">2016.01.30</time>
								</a>
							</li>

							<li>
								<a href="#">
									<img src="/avenueCom/images/temp/youth_info280x150.jpg" alt="" />
									<strong class="subject">바리스타과정</strong>
									<time class="date">2016.01.30</time>
								</a>
							</li>

							<li>
								<a href="#">
									<img src="/avenueCom/images/temp/youth_info280x150.jpg" alt="" />
									<strong class="subject">바리스타과정</strong>
									<time class="date">2016.01.30</time>
								</a>
							</li>

							<li>
								<a href="#">
									<img src="/avenueCom/images/temp/youth_info280x150.jpg" alt="" />
									<strong class="subject">바리스타과정</strong>
									<time class="date">2016.01.30</time>
								</a>
							</li>

							<li>
								<a href="#">
									<img src="/avenueCom/images/temp/youth_info280x150.jpg" alt="" />
									<strong class="subject">바리스타과정</strong>
									<time class="date">2016.01.30</time>
								</a>
							</li>
					</ul>
					<!-- -->
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
