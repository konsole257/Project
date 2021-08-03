<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="dodream";
	String path2="stations";
	String path3="about";
	String path4="";
	String path1tit="Do DREAM";
	String path2tit="고용노동부 청년 스테이션";
	String path3tit="소개";
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
	<main id="wrap" class="stations">

		<div class="youth about">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_stations.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/startup/about.jsp">DO DREAM</a>
						<a href="/stations/youth.jsp">고용노동부 청년 스테이션</a>
						<a href="/stations/youth.jsp"><strong>소개</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">고용노동부 청년 스테이션</h2>

					<p class="con_tit_txt">고용노동부와 함께 청년들의 삶을 응원합니다.</p>

					<div class="btn_area">
						<a href="#" class="midium type1 btn_reserve">청년 취업 상담 예약하기</a>
					</div>

					<div class="txt1">
						<p>
						청년들을 위한 종합 상담을 진행합니다.
						</p>

						<ol>
							<li>청년정책 상담</li>
							<li>취업 상담</li>
							<li>주거/복지/건강 상담 등</li>
						</ol>

						<img src="/avenueCom/images/sub/stations_youth_img.jpg" alt="" class="img">
					</div>

					<div class="txt2">
						<strong>청년들에게 휴식 공간을 제공합니다.</strong>
						<p>청년 스테이션 1층 라운지는 누구에게나 열려 있습니다.</p>
						<p>청년들에게 도움이 되는 각종 도서를 읽고, 편안하게 모임을 할 수 있습니다.</p>
					</div>

					<div class="txt3">
						<strong>청년들에게 취업 관련 정보를 제공합니다.</strong>
						<p>청년내일채움공제, 청년취업아카데미 등 청년정책 관련 리플렛, 가이드북,<br>
							 사례집 등이 비치되어 있습니다.</p>
						<p>스크린을 통해 실시간 채용정보도 확인 가능합니다.</p>
						<p>청년 워크넷 에서 청년정책, 채용 관련 상세 정보를 얻을 수 있습니다.</p>
						<p>청년 워크넷 바로가기 (<a href="http://www.work.go.kr/jobyoung/main.do" target="_blank">http://www.work.go.kr/jobyoung/main.do</a>)</p>
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
