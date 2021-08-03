<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="heart";
	String path3="about";
	String path4="staff";
	String path1tit="STAND";
	String path2tit="HEART STAND";
	String path3tit="ABOUT";
	String path4tit="스텝&amp;자문위원";
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

		<div class="staff">
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
						<a href="/heart/staff.jsp"><strong>스탭소개</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">스텝 &amp; 자문위원</h2>
					<p class="con_tit_txt">하트스탠드의 행복한 스텝들을 소개합니다.</p>

					<section class="staff_list">
						<h3 class="staff_list_tit">스텝</h3>

						<dl class="choi_hee_a">
							<dt>최희아 센터장</dt>

							<dd>서울여대 특수전문대학원 겸임 교수</dd>
							<dd>한양대 아동심리치료학과 박사</dd>
							<dd>Pratt Institute 무용동작 치료 석사</dd>
							<dd>NYU 무용교육학과 석사</dd>
						</dl>

						<dl class="kim_jung_won">
							<dt>김정원 디렉터</dt>

							<dd>School of the Arts Institute of<br />Chicago 예술행정정책 석사</dd>
							<dd>성균관대 경영학부 학사</dd>
						</dl>

						<dl class="yeo_sang_il">
							<dt>여상일 힐링 매니저</dt>

							<dd>서울여대 특수치료전문대학원 석사</dd>
							<dd>중등학교정교사2급</dd>
						</dl>

						<dl class="goo_ja_yoon">
							<dt>구자윤 힐링 매니저</dt>

							<dd>서울여대 특수치료전문대학원 석사</dd>
							<dd>한국청소년정책연구원 근무</dd>
							<dd>청소년지도사 2급</dd>
						</dl>

						<dl class="you_dong_woo">
							<dt>유동우 힐링 매니저</dt>

							<dd>숙명여대 음악치료대학원 석사</dd>
							<dd>임상음악전문가 1급</dd>
						</dl>

						<dl class="kim_hwa_ri">
							<dt>김화리 마케팅 매니저</dt>

							<dd>이화여대 문화사회학 석사</dd>
							<dd>이화여대 음악학부 학사</dd>
						</dl>
					</section>

					<section class="member_list">
						<h3 class="member_list_tit">자문위원</h3>

						<dl class="clear">
							<dt>이나미 책임교수</dt>

							<dd>서울대 의과대학 외래 부교수</dd>
							<dd>서울대 정신의학과 박사로 하트스탠드 프로그램 자문, 교육 및 감독</dd>
						</dl>

						<dl>
							<dt>김현주 임상심리사</dt>

							<dd>남서울대 아동복지학 교수</dd>
							<dd>한양대 아동심리치료학과 박사</dd>
						</dl>

						<dl class="clear">
							<dt>Harvey Seifter</dt>

							<dd>미국의 기업 창의교육 및 Arts-based Training  분야의 선두주자로<br />
							   IBM, 존슨앤존슨,  GE 등 다수의 글로벌 기업과 프로그램 개발 및 연구<br />
								 협업, 하트스탠드 연구 전반 자문</dd>
						</dl>

						<dl>
							<dt><span>Li</span>nda Naiman</dt>

							<dd>창의학습, 전략적 대화, 리더십 프로그램 등 기업 코칭 프로그램 전문가로<br />
							   하트스탠드와 국제 워크샵 개발 및 진행 예정</dd>
						</dl>
					</section>
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
