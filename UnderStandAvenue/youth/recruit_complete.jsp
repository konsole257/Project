<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="stand";
	String path2="youth";
	String path3="info";
	String path4="recruit";
	String path1tit="STAND";
	String path2tit="YOUTH STAND";
	String path3tit="지원신청";
	String path4tit="지원하기";
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
		<div class="recruit">
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
						<a href="/youth/recruit.jsp"><strong>지원하기</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">지원하기</h2>
					<p class="con_tit_txt">유스스탠드 커리큘럼지원을 기다립니다. </p>

					<!-- -->
					<div class="complete">
						<p class="text1">
							<strong>커리큘럼 지원이</strong>완료되었습니다.
						</p>

						<p class="text2">
							커리큘럼 지원신청에 대한 답변은 관리자 확인 후<br />
              연락 드리겠습니다.
						</p>

						<div class="btn_area">
							<a class="big type1 btn_info" href="#">모집안내 확인하기</a>
							<a class="big type2 btn_inquiry" href="#">커리큘럼 수강신청 조회</a>
						</div>
					</div>


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
