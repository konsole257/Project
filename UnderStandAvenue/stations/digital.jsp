<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="dodream";
	String path2="data";
	String path3="about";
	String path4="";
	String path1tit="DO DREAM";
	String path2tit="데이터 이노베이션 센터";
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

		<div class="bigdata">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_data.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/startup/about.jsp">DO DREAM</a>
						<a href="/stations/digital.jsp">데이터 이노베이션 센터</a>
						<a href="/stations/digital.jsp"><strong>소개</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">데이터 이노베이션 센터</h2>

					<p class="con_tit_txt">신한은행의 금융 빅데이터와 아마존 웹서비스의 퍼블릭 클라우드 서비스를 결합하여 연구기회를 제공합니다.</p>

					<div class="txt1">
						<p>
							신한은행이 보유하고 있는 금융 관련 빅데이터를 활용하여<br>
							학계와 스타트업에 연구기회를 제공합니다.<br>
							AWS(Amazon Web Services)와의 제휴를 통하여 퍼블릭 클라우드<br>
							환경에서 신한 금융 빅데이터, A.I. 인공지능 분석 인프라 등 다양한<br>
							데이터와 서비스를 사용할 수 있습니다. ICT 관련 스타트업 뿐만 아니라<br>
							다양한 산업 및 학계에서 빅데이터를 융합하여 새로운 비즈니스를<br>
							창출 할 수 있도록 실무교육도 지원합니다.
						</p>

						<img src="/avenueCom/images/sub/stations_about_img2.jpg" alt="" class="img">
					</div>

					<div class="img_area">
						<img src="/avenueCom/images/sub/stations_about_img3.jpg" alt="">
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
