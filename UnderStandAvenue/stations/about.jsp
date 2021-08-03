<%@ page contentType = "text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%
	String path1="dodream";
	String path2="finance";
	String path3="about";
	String path4="";
	String path1tit="DO DREAM";
	String path2tit="두드림 금융 컨설팅룸";
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

		<div class="finance">
			<!-- snb -->
			<%@ include file="/avenueCom/_include/_snb_finance.jsp" %>
			<!-- //snb -->

			<hr />

			<section id="contents">
				<div id="path">
					<div id="path_inner">
						<strong class="hide">현재 위치</strong>
						<a href="/">HOME</a>
						<a href="/startup/about.jsp">DO DREAM</a>
						<a href="/stations/about.jsp">두드림 금융 컨설팅룸</a>
						<a href="/stations/about.jsp"><strong>소개</strong></a>
					</div>
				</div>

				<div id="contents_inner">
					<h2 class="con_tit">두드림 금융 컨설팅룸</h2>

					<p class="con_tit_txt">
					디지털 디스플레이 기기에서 예약 및 대출상담, 전문 컨설턴트 등	<strong>고객 중심적 Self Banking 서비스</strong>를 제공합니다.
					</p>

					<div class="txt1">
						<p>
						두드림 스페이스 내에 Your Smart Lounge를 설치하여 입주자와<br>
						인근 주민들에게 은행 영업점 수준의 금융서비스를 지원합니다.
						</p>

						<p>
						※ Your Smart Lounge : 단순히 편리한 ATM이 아니라 고객중심의 Self<br>
						Banking을 위한 미래지향적 서비스 플랫폼
						</p>
					</div>

					<img src="/avenueCom/images/sub/stations_about_img1.jpg" alt="" class="img1">

					<strong class="caution"> * 바이오인증, 화상인증 등 <b>누구에게나 안전하고 편리한 금융권 최초 비대면 실명확인 방식</b></strong>

					<p class="txt2">
					온·오프라인 예약상담 시스템을 가동하여, 필요한 시간에 대출상담은 물론 법률·세무·회계 등 전문 컨설턴트가 대기합니다.
					</p>
					<p class="txt3">디지털 스크린을 통해고객들에게 필요한 실시간 금융정보를 지속적으로 제공합니다.</p>

					<div class="btn_area">
						<a href="#" class="midium type1 btn_reserve">금융 컨설팅 예약하기</a>
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
