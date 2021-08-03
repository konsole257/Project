<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="dodream";
	String path2="startup";
	String path3="course";
	String path4="social";
	String path1tit="DO DREAM";
	String path2tit="청년START業";
	String path3tit="OZ Course";
	String path4tit="Social Entrepreneur";
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

		<div class="social">
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
						<a href="/startup/social.jsp"><strong>Social Entrepreneur</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">Social Entrepreneur</h2>

					<p class="con_tit_txt">사회적 기업, 소셜 벤처, 비영리 스타트업 등 사회 문제 해결을 목표로 한 <strong>창업 교육 과정</strong></p>

					<p class="txt1">
					자신이 관심 있는 사회 문제를 발견하고, 이를 해결하는 과정을 통해 사회적 기업가를<br>
					양성하는 8주간의 기초 교육입니다. 디자인 씽킹 프로세스와 저널리즘 투어를 결합하여<br>
					ARCON이 개발한 ‘OZ Start業’ 모듈을 적용합니다.
					</p>

					<div class="txt2">
						<p>
						기존 창업 교육이 시장에서의 성공만을 목표로 비즈니스 모델을 만들도록<br>
						했다면, 이 과정은 우리 사회에서 해결해야 할 이슈가 무엇인지, 이 문제를<br>
						해결하기 위해 민간 영역 뿐만 아니라 공적 영역과 어떻게 협력해야<br>
						하는지를 고민합니다.
						</p>

						<p>
						투자 방식의 재원 마련을 넘어서 사회 문제 해결을 위한 임팩트 펀드, 공적<br>
						기금, 사회공헌 기금 등 다양한 재원의 탐구를 통해 사회적 경제 영역<br>
						내에서 다양한 형식과 역할을 모색할 수 있도록 돕고, 이를 통해<br>
						창업/창직/취업의 로드맵을 그릴 수 있습니다.
						</p>
					</div>

					<img src="/avenueCom/images/sub/startup_social_img.jpg" alt="">

					<table>
						<caption>창업 교육 표</caption>

						<colgroup>
							<col style="width:145px;">
							<col style="width:755px;">
						</colgroup>
						<thead>
							<tr>
								<th>카테고리</th>
								<th>개설과목(예시)</th>
							</tr>
						</thead>

						<tbody>
							<tr>
								<th>사회문제<br>해법과 창업</th>
								<td>사회적 경제와 사회적 기업의 이해, 소셜 프로젝트의 위험과 함정, 사회문제 해결과 이윤창출의 행복한 만남,<br>사회적 기업 선배와의 만남 등</td>
							</tr>

							<tr>
								<th>따뜻한 심장<br>프로젝트</th>
								<td>나는 정말 소셜 휴먼일까, 사회문제 해결책을 찾는 프로젝트 기획, 공공캠페인과 사회적 마케팅, 사회적 가치를 위한<br>체크 리스트 등</td>
							</tr>

							<tr>
								<th>사자의 용기</th>
								<td>사회문제 분석 및 접근 방법론, 디지털 사회혁신과 비즈니스, 공공 기관 협력 노하우, 스몰 펀딩, 100달러의 기적 만들기 등</td>
							</tr>
						</tbody>
					</table>

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
