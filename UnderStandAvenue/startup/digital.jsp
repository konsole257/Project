<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="dodream";
	String path2="startup";
	String path3="digital";
	String path4="";
	String path1tit="DO DREAM";
	String path2tit="OZ START業";
	String path3tit="Digital ･ Life ･ School";
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

		<div class="digital">
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
						<a href="/startup/digital.jsp"><strong>Digital &middot; Life &middot; School</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">Digital &middot; Life &middot; School</h2>

					<p class="con_tit_txt">팀 프로젝트 과정을 통해 아무도 가르치지 않지만 <strong>스스로 배우는 교육</strong>입니다.</p>

					<p class="txt1">
					창업을 꿈꾸는 청년들이 12주간의 팀 프로젝트 과정을 통해<br>
					스스로 자신의 비즈니스 아이디어를 실현하는<br>
					혁신적 창업인재 양성 교육 과정입니다.
					</p>

					<div class="txt2">
						<p>
						팀 프로젝트 과정(PBL: Project-based learning)으로 같은 키워드와<br>
						흥미를 가진 구성원이 모여 팀을 이루고 각 팀별 아이템(BM 모델 분석/<br>
						사업시장성 확인 등)을 확장ㆍ구체화하는 능동적 교육과정입니다.
						</p>

						<p>
						팀 프로젝트 진행에 따라 분야별 전문가의 비즈니스 코칭으로 사업단계를<br>
						검토ㆍ분석하고 사업화 모델로 발전시킬 수 있도록 지원합니다.
						</p>
					</div>

					<img src="/avenueCom/images/sub/startup_digital_img1.jpg" alt="" class="img1">

					<img src="/avenueCom/images/sub/startup_digital_img2.jpg" alt="" class="img2">

					<div class="btn_area">
						<a href="#" class="midium type1 btn_apply" onclick="alert('Digital • Life • School 1기 선수(교육생) 모집을 곧 시작할 예정입니다. 감사합니다.')">교육과정 지원하기</a>
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
